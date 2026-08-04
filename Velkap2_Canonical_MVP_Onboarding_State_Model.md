# **VELKAP 2**

## **Canonical MVP Investor Onboarding
and Account-State Model**

*Implementation baseline for Epics 1, 2, and 3*

> **Document status**  
> Approved technical baseline incorporating repository evidence and stakeholder decisions. Open business/compliance items are isolated as follow-up tickets and do not silently change the confirmed MVP flow.

| **Field** | **Value** |
| --- | --- |
| **Source baseline** | **Velkap 2 mockup repository, decision log, page checklist, route flow, onboarding/document/profile/dashboard/account-linking pages** |
| **Decision input** | **Stakeholder answers provided on 4 August 2026** |
| **Primary use** | **Shared implementation reference for Epics 1, 2, and 3** |
| **Status** | **Canonical for confirmed rules; open items explicitly ticketed** |

## 1. Executive Summary

This document converts the Velkap 2 mockup into one implementation-ready investor onboarding state model. It distinguishes prototype behavior from approved MVP behavior and defines the statuses, transitions, routing rules, access gates, owners, and follow-up decisions that all three epics must share.

> **Canonical MVP sequence**  
> Registration complete → Questionnaire passed → Email verified → KYC documents uploaded and approved → Velkap 1 account linked → Dashboard access enabled. The sequence is mandatory; steps do not run in parallel.

Dashboard access is not a manually editable flag and must not be controlled by a URL parameter. The backend stores the independent onboarding statuses and dynamically calculates whether the investor satisfies every access requirement.

The mockup remains a planning and UX reference. Production behavior is defined by this approved state model, not by demo-only implementation such as unguarded routes, unconditional login redirection, local component state, or the current ?verified=true query parameter.

## 2. Scope and Source Evidence

The model is derived from the mockup decision log, velkap2_react_page_checklist.md, src/pages/ChecklistPublicPages.tsx, route registration, AccountSetupStepper, and onboarding, document, profile, dashboard, account-linking, product, portfolio, and investment-request pages.

- Repository evidence establishes the intended journey and page/state vocabulary.

- Stakeholder answers in this document resolve policy where the mockup was ambiguous.

- Any remaining unsupported policy is marked OPEN and assigned a follow-up ticket.

## 3. Approved MVP Business Decisions

| **Decision area** | **Approved rule** |
| --- | --- |
| **Questionnaire failure** | **The investor may retry immediately. The investor must pass before proceeding to email verification or any later onboarding step.** |
| **Dashboard unlock** | **All onboarding requirements must be complete: registration complete, questionnaire passed, email verified, KYC approved, Velkap 1 linked, and account operational status active.** |
| **KYC threshold** | **KYC approval is required. Uploading documents or being under review does not unlock the next step or dashboard access.** |
| **Velkap 1 linking** | **Mandatory for every investor in the MVP.** |
| **Onboarding order** | **Mandatory sequential order. KYC must be approved before account linking begins.** |
| **Product access** | **Products are accessible only after dashboard access is enabled, with additional product-specific eligibility checks.** |
| **Profile changes** | **All profile edits trigger re-verification under the current approved rule.** |
| **State representation** | **Use multiple independent status dimensions, not one overloaded account status.** |
| **Dashboard decision logic** | **Calculate dynamically from requirements/statuses stored in the database.** |
| **Authorization** | **Frontend route guards support navigation; backend authorization is the security source of truth.** |

## 4. Canonical Onboarding Sequence

| **#** | **Step** | **Completion condition** | **Primary owner** |
| --- | --- | --- | --- |
| **1** | **Registration** | **Account created; legal terms/privacy accepted** | **Investor / System** |
| **2** | **Questionnaire** | **Investor achieves PASSED; failed attempts may be retried immediately** | **Investor / System** |
| **3** | **Email verification** | **Server validates verification token and records VERIFIED** | **Investor / System** |
| **4** | **KYC upload and review** | **Required documents submitted, reviewed, and aggregate KYC becomes APPROVED** | **Investor / Compliance** |
| **5** | **Velkap 1 account linking** | **Mandatory link is submitted and resolved as LINKED** | **Investor / System / Operations** |
| **6** | **Dashboard enablement** | **Backend evaluates all stored requirements and grants access** | **System** |

> **Sequence rule**  
> A user cannot proceed to the next step until the current step is complete. Questionnaire failure remains at the questionnaire step; KYC pending/rejected remains at KYC; linking pending/failed remains at account linking.

## 5. Canonical Account-State Model

The investor account is represented by independent dimensions because multiple facts coexist and change independently.

| **Dimension** | **Allowed values** | **Purpose** |
| --- | --- | --- |
| **registration_status** | **NOT_REGISTERED, REGISTRATION_COMPLETE** | **Account creation milestone** |
| **questionnaire_status** | **NOT_STARTED, IN_PROGRESS, PASSED, FAILED** | **Suitability/appropriateness process; attempts retained** |
| **email_status** | **UNVERIFIED, VERIFIED** | **Email ownership validation** |
| **kyc_status** | **NOT_STARTED, INCOMPLETE, UNDER_REVIEW, APPROVED, ACTION_REQUIRED** | **Aggregate KYC state** |
| **document_review_status** | **REQUIRED, UPLOADED, UNDER_REVIEW, VERIFIED, REJECTED, EXPIRED, REPLACED** | **Per-document lifecycle** |
| **velkap1_link_status** | **NOT_STARTED, PENDING, UNDER_REVIEW, LINKED, FAILED, LOCKED_OUT** | **Mandatory account-link process** |
| **account_operational_status** | **ACTIVE, TEMPORARILY_LOCKED, SUSPENDED** | **Overrides normal onboarding access** |

Dashboard access is a derived entitlement, not a primary editable state. Audit timestamps may record first grant, revocation, and restoration without replacing dynamic policy evaluation.

## 6. State Transitions and Owners

| **Current state** | **Trigger** | **Next state** | **Owner** |
| --- | --- | --- | --- |
| **NOT_REGISTERED** | **Valid registration accepted** | **REGISTRATION_COMPLETE** | **Investor/System** |
| **Questionnaire NOT_STARTED** | **Investor starts questionnaire** | **IN_PROGRESS** | **Investor** |
| **Questionnaire IN_PROGRESS** | **Passing submission** | **PASSED** | **System** |
| **Questionnaire IN_PROGRESS** | **Failing submission** | **FAILED** | **System** |
| **Questionnaire FAILED** | **Immediate retry** | **IN_PROGRESS** | **Investor** |
| **Email UNVERIFIED** | **Valid token consumed** | **VERIFIED** | **Investor/System** |
| **KYC NOT_STARTED** | **First required document uploaded** | **INCOMPLETE** | **Investor/System** |
| **KYC INCOMPLETE** | **All required documents submitted** | **UNDER_REVIEW** | **Investor/System** |
| **KYC UNDER_REVIEW** | **All required documents approved** | **APPROVED** | **Compliance** |
| **KYC UNDER_REVIEW** | **Document rejected/replacement requested** | **ACTION_REQUIRED** | **Compliance** |
| **KYC ACTION_REQUIRED** | **Replacement submitted** | **UNDER_REVIEW** | **Investor/System** |
| **Link NOT_STARTED** | **Investor reference submitted** | **PENDING** | **Investor/System** |
| **Link PENDING** | **Automated/manual review begins** | **UNDER_REVIEW** | **System/Operations** |
| **Link PENDING or UNDER_REVIEW** | **Match succeeds** | **LINKED** | **System/Operations** |
| **Link PENDING or UNDER_REVIEW** | **Match fails** | **FAILED** | **System/Operations** |
| **Link FAILED** | **Retry allowed** | **PENDING** | **Investor/System** |
| **Any active state** | **Admin locks/suspends** | **TEMPORARILY_LOCKED or SUSPENDED** | **Admin** |
| **All required dimensions complete** | **Policy evaluation succeeds** | **Dashboard access allowed** | **System** |

## 7. State-Based Routing After Login

Routing evaluates conditions in priority order. The first matching rule wins.

| **Priority** | **Condition** | **Redirect** |
| --- | --- | --- |
| **1** | **Account TEMPORARILY_LOCKED or link LOCKED_OUT** | **/account-locked** |
| **2** | **Account SUSPENDED** | **/forbidden** |
| **3** | **Registration incomplete** | **/register** |
| **4** | **Questionnaire not PASSED (including FAILED)** | **/register/questionnaire** |
| **5** | **Email UNVERIFIED** | **/verify-email** |
| **6** | **KYC NOT_STARTED or INCOMPLETE** | **/documents/upload** |
| **7** | **KYC UNDER_REVIEW** | **/documents or KYC status page** |
| **8** | **KYC ACTION_REQUIRED** | **/documents, focused on replacement action** |
| **9** | **Velkap 1 link NOT_STARTED or FAILED** | **/onboarding/account-linking** |
| **10** | **Velkap 1 link PENDING or UNDER_REVIEW** | **/onboarding/account-linking/status** |
| **11** | **All onboarding conditions satisfied** | **/dashboard** |

## 8. Access Matrix

A = allowed; R = restricted to status/remediation actions; D = denied. Support, logout, legal, and public pages remain available unless the account is suspended under a stricter policy.

| **Effective state** | **Dashboard** | **Products** | **Portfolio** | **Invest. requests** | **Profile** | **Documents** | **Questionnaire** | **Linking** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Questionnaire pending/failed** | **D** | **D** | **D** | **D** | **R** | **D** | **A** | **D** |
| **Email unverified** | **D** | **D** | **D** | **D** | **R** | **D** | **R** | **D** |
| **KYC incomplete** | **D** | **D** | **D** | **D** | **R** | **A** | **R** | **D** |
| **KYC under review** | **D** | **D** | **D** | **D** | **R** | **R** | **R** | **D** |
| **KYC action required** | **D** | **D** | **D** | **D** | **R** | **A** | **R** | **D** |
| **Link not started/failed** | **D** | **D** | **D** | **D** | **R** | **R** | **R** | **A** |
| **Link pending/under review** | **D** | **D** | **D** | **D** | **R** | **R** | **R** | **R** |
| **Fully onboarded and active** | **A** | **A*** | **A** | **A*** | **A** | **A** | **R** | **R** |
| **Locked/suspended** | **D** | **D** | **D** | **D** | **D** | **D** | **D** | **D** |

* Product access still requires product-specific visibility/eligibility. Investment request creation/submission requires product eligibility and all applicable request validations.

## 9. Capability Access Gates

| **Capability** | **Gate** |
| --- | --- |
| **Dashboard** | **Authenticated AND account ACTIVE AND registration complete AND questionnaire PASSED AND email VERIFIED AND KYC APPROVED AND Velkap 1 LINKED.** |
| **Products** | **Dashboard access allowed AND product visible/eligible for the investor.** |
| **Portfolio** | **Dashboard access allowed under the current approved rule. Later KYC-expiry behavior remains OPEN in ONB-001.** |
| **Investment request list/details** | **Dashboard access allowed AND investor owns the resource.** |
| **Create/submit investment request** | **Dashboard access allowed AND KYC APPROVED AND Velkap 1 LINKED AND selected product eligible AND request validations pass.** |
| **Profile** | **Authenticated onboarding self-service, subject to route state. Every profile edit triggers re-verification under the current decision.** |
| **Documents** | **Authenticated access for upload, review status, replacement, and history relevant to the investor.** |

## 10. Route Guard and Authorization Rules

| **Condition** | **Protected area** | **Redirect/result** | **Enforcement** |
| --- | --- | --- | --- |
| **No authenticated session** | **Protected investor routes** | **/login?returnTo=...** | **Backend and frontend** |
| **Account locked** | **All authenticated investor routes** | **/account-locked** | **Backend and frontend** |
| **Account suspended** | **All authenticated investor routes** | **/forbidden** | **Backend and frontend** |
| **Questionnaire not passed** | **All later onboarding and investor routes** | **/register/questionnaire** | **Backend and frontend** |
| **Email unverified** | **KYC, linking, dashboard, products, portfolio, requests** | **/verify-email** | **Backend and frontend** |
| **KYC not approved** | **Linking, dashboard, products, portfolio, requests** | **KYC upload/status/remediation** | **Backend and frontend** |
| **Velkap 1 not linked** | **Dashboard, products, portfolio, requests** | **Link or link-status page** | **Backend and frontend** |
| **Dashboard predicate false** | **Dashboard and post-onboarding areas** | **Current required onboarding step** | **Backend and frontend** |
| **Product ineligible** | **Product detail/request creation** | **/products or /forbidden** | **Backend; frontend mirrors** |
| **Wrong resource owner** | **Documents/investments/requests** | **404 or /forbidden** | **Backend mandatory** |

> **Security rule**  
> Frontend guards improve user experience but are never sufficient security. Every protected API must verify identity, ownership, account operational status, onboarding gates, KYC, linking, and product/request eligibility on the backend.

## 11. Backend Implementation Model

Recommended stored fields:

```text
investor_account
id
registration_status
registration_completed_at
questionnaire_status
current_questionnaire_attempt_id
email_status
email_verified_at
kyc_status
velkap1_link_status
velkap1_linked_at
account_operational_status
locked_at / suspended_at / reactivated_at
dashboard_first_enabled_at
dashboard_access_revoked_at (nullable)
```

Required relationships include questionnaire attempts/version, KYC documents and review events, Velkap 1 link attempts, investment requests, products/subprojects, and investor-owned investment/portfolio records.

### Dynamic dashboard predicate

```text
can_access_dashboard(account) =
account.authenticated
AND account.account_operational_status == ACTIVE
AND account.registration_status == REGISTRATION_COMPLETE
AND account.questionnaire_status == PASSED
AND account.email_status == VERIFIED
AND account.kyc_status == APPROVED
AND account.velkap1_link_status == LINKED
```

The database stores the requirement statuses. The backend calculates access. A manually editable dashboard_enabled boolean must not be the source of truth.

## 12. Decision Log Reconciliation: DC-001 to DC-005

| **ID** | **Decision** | **Status** | **Resolution / required action** |
| --- | --- | --- | --- |
| **DC-001** | **Mockup classification** | **Resolved** | **The mockup is a planning/UX reference, not executable production policy. This state model and approved requirements govern implementation.** |
| **DC-002** | **MVP screens and journeys** | **Follow-up required** | **Approve a route-level Epic 1/2/3 scope matrix and explicitly defer optional/admin/content screens not required by this state model.** |
| **DC-003** | **Canonical onboarding journey/state model** | **Resolved** | **Registration → pass questionnaire → verify email → KYC approved → mandatory Velkap 1 link → dashboard. Independent statuses are authoritative.** |
| **DC-004** | **Dashboard and investment access rules** | **Partially resolved** | **Core unlock rule is resolved. Later KYC expiry/rejection access behavior remains ONB-001.** |
| **DC-005** | **Questionnaire failure treatment** | **Resolved** | **Immediate retry is allowed; the user must pass before continuing.** |

## 13. Open Follow-Up Tickets

| **Ticket** | **Question / decision** | **Required answer** | **Owner** | **Priority** |
| --- | --- | --- | --- | --- |
| **ONB-001** | **Post-approval KYC lapse policy** | **If a previously approved KYC document expires or is later rejected, which access is removed: only new investment activity, products plus new requests, or all dashboard/portfolio access?** | **Compliance + Product + Legal** | **P0** |
| **ONB-002** | **Required KYC document matrix** | **Confirm required documents and accepted alternatives by investor type, country/jurisdiction, and any investment-risk threshold.** | **Compliance + Operations** | **P0** |
| **ONB-003** | **Aggregate KYC calculation** | **Approve how mixed document statuses produce aggregate KYC status. Proposed precedence: rejected/expired → ACTION_REQUIRED; missing → INCOMPLETE; pending → UNDER_REVIEW; all verified → APPROVED.** | **Compliance + Backend** | **P0** |
| **ONB-004** | **Velkap 1 link failure policy** | **Define retry count, waiting period, manual review trigger, lockout duration, owning team, security mismatch handling, and service-unavailable behavior.** | **Architecture + Security + Operations** | **P0** |
| **ONB-005** | **MVP route scope (DC-002)** | **Approve the exact route/page list for Epics 1, 2, and 3 and mark optional/deferred routes.** | **Product + Business** | **P0** |

## 14. Epic Implementation Contract

| **Epic** | **Scope** | **Required use of this model** |
| --- | --- | --- |
| **Epic 1** | **Registration, questionnaire, email verification** | **Own registration_status, questionnaire_status/attempts, email_status. Must not define onboarding completion independently.** |
| **Epic 2** | **KYC documents/review and Velkap 1 linking** | **Own kyc_status, document statuses/events, link attempts/status. Must enforce the mandatory sequence and approved thresholds.** |
| **Epic 3** | **Dashboard, products, portfolio, investment requests** | **Use shared backend policy functions for dashboard, products, portfolio, and request access. Must not add a separate verified flag or trust URL/client state.** |

## 15. Final MVP State Machine

```text
on successful login:
if account is temporarily locked: /account-locked
else if account is suspended: /forbidden
else if registration is incomplete: /register
else if questionnaire is not PASSED: /register/questionnaire
else if email is UNVERIFIED: /verify-email
else if KYC is NOT_STARTED or INCOMPLETE: /documents/upload
else if KYC is UNDER_REVIEW: /documents (status)
else if KYC is ACTION_REQUIRED: /documents (remediation)
else if Velkap 1 link is NOT_STARTED or FAILED: /onboarding/account-linking
else if Velkap 1 link is PENDING or UNDER_REVIEW: /onboarding/account-linking/status
else: /dashboard
```

> **Implementation baseline**  
> Epics 1, 2, and 3 may implement the confirmed status dimensions, transitions, routing priority, access predicates, audit history, and backend enforcement immediately. The five open tickets above must be resolved before finalizing their affected edge-case policies.

