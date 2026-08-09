# Velkap 1 Investor Lookup & Linking Contract
**Version:** 1.0  
**Status:** Draft for Architecture / Product Approval  
**Related Work:** Epic 3 – Investor Account Linking

---

# 1. Purpose

This document defines the MVP contract used by Velkap 2 to locate and link an investor profile to the correct investor record in Velkap 1.

The goal is to give downstream implementation tickets one stable contract for:

- lookup request data
- successful match responses
- failure and edge-case responses
- persistence rules
- synchronous vs pending/manual-review behaviour
- fake adapter behaviour
- contract and integration testing

This document defines the integration contract only. It does not implement the real Velkap 1 integration.

---

# 2. Core Architecture Rule

Velkap 2 must not access the Velkap 1 database directly.

All lookup and linking behaviour must go through an approved integration boundary such as:

```text
Velkap 2
   |
   v
Investor Linking Adapter
   |
   v
Velkap 1 Service / API
```

The adapter contract is the boundary used by:

- the production Velkap 1 integration
- the fake adapter
- Epic 3 integration tests
- frontend development against predictable scenarios

---

# 3. MVP Linking Objective

The linking flow must answer:

> Which Velkap 1 investor record belongs to the currently authenticated Velkap 2 investor?

A successful link must be based on approved identity and organisation context.

The integration must never link an investor when the match is ambiguous.

---

# 4. Lookup Request Contract

## 4.1 Required Request Fields

The MVP lookup request should contain the following logical fields.

| Field | Required | Purpose |
|---|:---:|---|
| `investorReference` | Yes | Investor-provided Velkap 1 reference |
| `verifiedEmail` | Yes | Verified Velkap 2 email address |
| `tenantId` / `organisationContext` | Yes | Prevents cross-tenant or cross-organisation matching |
| `identityConfirmation` | Conditional | Additional identity fields used to confirm the match |

Example logical shape:

```json
{
  "investorReference": "INV-123456",
  "verifiedEmail": "investor@example.com",
  "tenantId": "VELKAP",
  "identityConfirmation": {
    "firstName": "Example",
    "lastName": "Investor"
  }
}
```

---

# 5. Identity Confirmation Fields

The exact identity-confirmation fields require approval by the Velkap 1 / Architecture / Compliance owners.

Possible fields include:

- first name
- last name
- date of birth
- phone number
- legal investor name
- organisation name for entity investors

Only the minimum approved fields should be sent.

Sensitive data that is not required for matching must not be included.

---

# 6. Successful Match Response

A successful exact match returns a `MATCHED` result.

Example logical response:

```json
{
  "status": "MATCHED",
  "velkap1InvestorId": "V1-998877",
  "investorReference": "INV-123456",
  "organisationId": "ORG-001"
}
```

The response should contain only the identifiers Velkap 2 is approved to retain.

---

# 7. Velkap 1 Fields Persisted by Velkap 2

The minimum recommended persisted reference fields are:

| Field | Purpose |
|---|---|
| `velkap1InvestorId` | Stable Velkap 1 investor identifier |
| `velkap1InvestorReference` | Human/business reference used during linking |
| `velkap1OrganisationId` | Organisation/tenant ownership context, if applicable |
| `velkap1LinkedAt` | Audit timestamp recording successful link |

Velkap 2 should not copy the full Velkap 1 investor record.

Velkap 1 remains the source of truth for data owned by Velkap 1.

---

# 8. Canonical Response Outcomes

The adapter must return predictable business outcomes.

| Outcome | Meaning | Retryable |
|---|---|:---:|
| `MATCHED` | One valid investor record matched | No |
| `NO_MATCH` | No valid investor record matched | Yes |
| `DUPLICATE_MATCH` | More than one possible investor matched | No automatic retry resolution |
| `INACTIVE_INVESTOR` | Matching record exists but is inactive | Depends on business policy |
| `VALIDATION_ERROR` | Lookup request is invalid | After correcting request |
| `UNAVAILABLE` | Velkap 1 service cannot be reached or processed | Yes |
| `PENDING_REVIEW` | Manual review is required | No user retry while review is active |

`PENDING_REVIEW` is only enabled if MVP policy approves manual review.

---

# 9. Exact Match Behaviour

For `MATCHED`:

1. Adapter confirms exactly one valid investor record.
2. Approved Velkap 1 identifiers are returned.
3. Velkap 2 persists only approved link reference fields.
4. Linking state becomes `LINKED`.
5. The successful transition is audited.
6. The investor may continue the onboarding lifecycle.

---

# 10. No-Match Behaviour

For `NO_MATCH`:

- no link is created
- no Velkap 1 investor ID is persisted
- the investor remains unlinked
- the response shown to the investor must not reveal sensitive matching details
- retry may be allowed according to the approved linking retry policy

Safe investor-facing example:

> We could not verify a matching Velkap 1 investor record. Please check your details and try again or contact support.

---

# 11. Duplicate-Match Behaviour

For `DUPLICATE_MATCH`:

- Velkap 2 must not automatically select one record
- no Velkap 1 investor ID is persisted
- linking must remain incomplete
- the case must either:
  - enter manual review, or
  - return a support-required state

The API must not expose the identities or details of the duplicate Velkap 1 records to the investor.

---

# 12. Inactive-Investor Behaviour

For `INACTIVE_INVESTOR`:

- no active link is created
- the account remains unlinked
- the investor receives a safe generic response
- internal/support workflows may receive the reason if authorised

The business owner must confirm whether an inactive Velkap 1 investor:

- may reactivate through Velkap 1
- must contact support
- may enter manual review
- is permanently blocked from linking

---

# 13. Validation Error Behaviour

For `VALIDATION_ERROR`:

Examples include:

- missing investor reference
- malformed reference
- missing verified email
- invalid organisation context
- missing required identity field

The response should include safe field-level validation information where appropriate.

Example:

```json
{
  "status": "VALIDATION_ERROR",
  "errors": [
    {
      "field": "investorReference",
      "code": "INVALID_FORMAT"
    }
  ]
}
```

Do not expose internal Velkap 1 implementation details.

---

# 14. Service-Unavailable Behaviour

For `UNAVAILABLE`:

- the failure must not be treated as a bad investor match
- it must not count as a failed identity attempt
- no linking state should move to `FAILED` because of infrastructure unavailability
- the investor should receive a retryable generic message
- the error should be observable internally

Example investor-facing response:

> Account linking is temporarily unavailable. Please try again later.

---

# 15. Synchronous vs Pending / Manual Review

The MVP must explicitly choose one of the following models.

## Option A — Synchronous Linking

```text
Lookup
  |
  +-- MATCHED ------> LINKED
  |
  +-- NO_MATCH -----> FAILED / RETRY
  |
  +-- ERROR --------> RETRYABLE ERROR
```

This is the simplest MVP model.

## Option B — Synchronous Exact Match + Manual Review for Ambiguity

```text
Lookup
  |
  +-- MATCHED ----------> LINKED
  |
  +-- NO_MATCH ---------> FAILED / RETRY
  |
  +-- DUPLICATE_MATCH --> PENDING_REVIEW
  |
  +-- INACTIVE ---------> PENDING_REVIEW / SUPPORT
  |
  +-- UNAVAILABLE ------> RETRYABLE ERROR
```

### Open Decision

Architecture / Product / Operations must confirm whether `PENDING_REVIEW` is part of the MVP.

Until approved, implementation tickets must not invent a manual-review workflow.

---

# 16. Recommended Adapter Interface

The implementation may use any language-specific interface that preserves this logical contract.

Example:

```text
lookupInvestor(request) -> LinkingResult
```

Where `LinkingResult.status` is one of:

```text
MATCHED
NO_MATCH
DUPLICATE_MATCH
INACTIVE_INVESTOR
VALIDATION_ERROR
UNAVAILABLE
PENDING_REVIEW
```

The fake and production adapters must expose the same logical behaviour.

---

# 17. Fake Adapter Requirements

Epic 3 needs a deterministic fake adapter for development and integration tests.

The fake adapter must support at least these scenarios:

| Scenario | Fake Result |
|---|---|
| Valid exact investor | `MATCHED` |
| Unknown investor reference | `NO_MATCH` |
| Multiple matching investors | `DUPLICATE_MATCH` |
| Inactive Velkap 1 investor | `INACTIVE_INVESTOR` |
| Missing / malformed request fields | `VALIDATION_ERROR` |
| Simulated Velkap 1 outage | `UNAVAILABLE` |
| Review-required scenario | `PENDING_REVIEW`, if approved |

The fake must return stable values so frontend and backend tests are reproducible.

---

# 18. Suggested Fake Test Fixtures

Example deterministic fixtures:

```text
INV-MATCH-001
    -> MATCHED

INV-NOTFOUND-001
    -> NO_MATCH

INV-DUPLICATE-001
    -> DUPLICATE_MATCH

INV-INACTIVE-001
    -> INACTIVE_INVESTOR

INV-UNAVAILABLE-001
    -> UNAVAILABLE

INV-REVIEW-001
    -> PENDING_REVIEW
```

The exact fixture naming may be changed during implementation.

The important rule is that scenario behaviour remains deterministic.

---

# 19. Contract Tests

Contract tests should verify that the fake adapter and future production adapter follow the same result contract.

Minimum contract test cases:

| Test | Expected Result |
|---|---|
| Valid request with exact match | `MATCHED` and approved identifiers |
| Unknown investor | `NO_MATCH` |
| Multiple candidates | `DUPLICATE_MATCH` |
| Inactive investor | `INACTIVE_INVESTOR` |
| Invalid input | `VALIDATION_ERROR` |
| Velkap 1 unavailable | `UNAVAILABLE` |
| Review-required result | `PENDING_REVIEW` if supported |

Tests must also verify:

- no direct database dependency exists
- `UNAVAILABLE` is distinguishable from `NO_MATCH`
- duplicate match never creates a link
- failed lookups do not persist a Velkap 1 investor ID
- only approved Velkap 1 fields are persisted after `MATCHED`

---

# 20. Linking State Mapping

Recommended Velkap 2 mapping:

| Adapter Result | Velkap 2 Linking State |
|---|---|
| `MATCHED` | `LINKED` |
| `NO_MATCH` | `FAILED` |
| `DUPLICATE_MATCH` | `PENDING_REVIEW` or `FAILED`, pending MVP decision |
| `INACTIVE_INVESTOR` | `PENDING_REVIEW` or `FAILED`, pending MVP decision |
| `VALIDATION_ERROR` | No state transition / input correction required |
| `UNAVAILABLE` | Preserve current state; retry later |
| `PENDING_REVIEW` | `PENDING_REVIEW` |

---

# 21. Security and Privacy Rules

- Verified email must come from the authenticated Velkap 2 profile, not arbitrary client input.
- Tenant / organisation context must be server-controlled or server-validated.
- Velkap 1 identifiers must not be exposed unnecessarily.
- Duplicate candidate details must never be returned to the investor.
- Internal error details must not be exposed in investor-facing responses.
- Sensitive identity fields must be limited to the approved matching contract.
- Direct Velkap 1 database access is prohibited.

---

# 22. Follow-up Decisions

## V1L-001 — Identity Confirmation Fields

**Question**

Which additional investor identity fields are required to confirm a Velkap 1 match?

**Owner**

Architecture + Compliance + Velkap 1 Owner

**Priority**

P0

---

## V1L-002 — Persisted Velkap 1 Identifiers

**Question**

Which Velkap 1 identifiers may Velkap 2 persist after a successful link?

Proposed minimum:

- Velkap 1 investor ID
- investor reference
- organisation ID, if applicable
- linked timestamp

**Owner**

Architecture + Security

**Priority**

P0

---

## V1L-003 — Manual Review

**Question**

Does the MVP support `PENDING_REVIEW` for duplicate, ambiguous, or inactive investor matches?

**Owner**

Product + Operations + Architecture

**Priority**

P0

---

## V1L-004 — Inactive Investor Policy

**Question**

What should happen when the matched Velkap 1 investor exists but is inactive?

**Owner**

Product + Operations

**Priority**

P1

---

## V1L-005 — Retry / Failure Policy

**Question**

How many user-caused failed lookup attempts are allowed, and when should support or lockout behaviour begin?

**Owner**

Product + Security + Operations

**Priority**

P1

---

# 23. Implementation Contract for Epic 3

Epic 3 implementation tickets may proceed when they follow these rules:

1. All Velkap 1 access goes through the linking adapter contract.
2. No direct Velkap 1 database access is allowed.
3. `MATCHED`, `NO_MATCH`, `DUPLICATE_MATCH`, `INACTIVE_INVESTOR`, `VALIDATION_ERROR`, and `UNAVAILABLE` must be distinguishable.
4. Only approved identifiers are persisted after a successful exact match.
5. Ambiguous matches must never be automatically linked.
6. Infrastructure unavailability must not be treated as an identity failure.
7. Fake and production adapters must follow the same logical result contract.
8. Contract tests must cover all approved adapter scenarios.

---

# 24. Acceptance Criteria Mapping

| Ticket Requirement | Covered By |
|---|---|
| Request and response shapes documented | Sections 4–7 |
| Match/no-match/duplicate/error/unavailable behaviour defined | Sections 8–14 |
| Persisted Velkap 1 reference fields identified | Section 7 |
| Fake adapter scenarios defined | Sections 17–18 |
| Contract tests defined | Section 19 |
| Synchronous / pending behaviour addressed | Section 15 |
| No direct Velkap 1 DB access | Sections 2 and 21 |
| Downstream implementation can proceed | Section 23 |

---

# 25. Summary

The Velkap 2 MVP must link investors to Velkap 1 through a stable adapter contract rather than direct database access.

The contract distinguishes exact matches, no matches, duplicate matches, inactive investors, validation failures, and service unavailability.

A successful exact match returns only approved Velkap 1 reference identifiers for persistence.

The fake adapter must implement the same result cases as the production adapter so Epic 3 frontend and integration work can proceed before the real Velkap 1 service is connected.

Open Product, Architecture, Compliance, Security, and Operations decisions must be resolved through the follow-up tickets above rather than invented inside implementation tickets.
