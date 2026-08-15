# Velkap shared UI components

This folder contains the lightweight UI foundation for investor, onboarding,
authentication, and admin pages.

The components follow the visual direction of the Velkap investor portal
mockup: navy actions, blue focus states, slate form surfaces, rounded cards,
clear status colours, and responsive layouts.

## Where the components live

```text
frontend/
└── src/
    └── components/
        └── ui/
            ├── alert.tsx
            ├── button.tsx
            ├── card.tsx
            ├── form-controls.tsx
            ├── page-state.tsx
            ├── ui.module.css
            └── index.ts
```

Use the shared `index.ts` export instead of importing individual files:

```tsx
import {
  Alert,
  Button,
  Card,
  CardBody,
  CardFooter,
  CardHeader,
  Checkbox,
  PageSection,
  PageState,
  Select,
  TextArea,
  TextInput,
} from "@/components/ui";
```

The `@/` alias points to `frontend/src/`, so `@/components/ui` works from any
page or component in the frontend project.

## Button

Use `Button` for form submissions and page actions.

```tsx
<Button type="submit">Continue</Button>

<Button variant="secondary" onClick={goBack}>
  Back
</Button>

<Button variant="danger" onClick={removeDocument}>
  Remove document
</Button>

<Button isLoading={isSubmitting} fullWidth type="submit">
  Save and continue
</Button>
```

Available props:

| Prop | Values | Default | Purpose |
| --- | --- | --- | --- |
| `variant` | `primary`, `secondary`, `ghost`, `danger` | `primary` | Visual importance and action meaning |
| `size` | `small`, `medium`, `large` | `medium` | Button dimensions |
| `isLoading` | `boolean` | `false` | Shows a spinner and disables the button |
| `fullWidth` | `boolean` | `false` | Makes the button fill its container |
| `leadingIcon` | `ReactNode` | — | Places an icon before the label |

All native button props such as `type`, `disabled`, `onClick`, `name`, and
`aria-label` are also supported.

Use `type="submit"` for a form submission. The component defaults to
`type="button"` to prevent accidental form submissions.

## TextInput

Use `TextInput` for email, password, text, date, number, and other native input
types.

```tsx
<TextInput
  label="Email address"
  type="email"
  name="email"
  autoComplete="email"
  placeholder="you@example.com"
  required
/>

<TextInput
  label="National insurance number"
  name="nationalInsuranceNumber"
  helperText="Enter the number exactly as it appears on your documents."
/>

<TextInput
  label="Password"
  type="password"
  name="password"
  error={errors.password}
  required
/>
```

Component-specific props:

| Prop | Type | Purpose |
| --- | --- | --- |
| `label` | `string` | Required accessible field label |
| `helperText` | `string` | Extra instructions below the field |
| `error` | `string` | Validation message and invalid styling |
| `optional` | `boolean` | Displays an “Optional” label |

All native `<input>` props are supported. When `error` is supplied, the
component automatically sets `aria-invalid` and links the message with
`aria-describedby`.

## Select

Use `Select` for a short, predefined list of options.

```tsx
const investorTypes = [
  { value: "retail", label: "Retail investor" },
  { value: "professional", label: "Professional investor" },
];

<Select
  label="Investor type"
  name="investorType"
  options={investorTypes}
  placeholder="Select an investor type"
  defaultValue=""
  required
/>
```

Each option has this shape:

```ts
type SelectOption = {
  value: string;
  label: string;
  disabled?: boolean;
};
```

`Select` supports the same `label`, `helperText`, `error`, and `optional` props
as `TextInput`, together with all native `<select>` props.

When using a placeholder, set `defaultValue=""` for an uncontrolled field or
initialize the controlled value to an empty string.

## TextArea

Use `TextArea` for longer free-text responses.

```tsx
<TextArea
  label="Additional information"
  name="additionalInformation"
  helperText="Include anything that may help us review your application."
  optional
  rows={5}
/>
```

It supports the shared field props and all native `<textarea>` props.

## Checkbox

Use `Checkbox` for confirmations, consent, and independent choices.

```tsx
<Checkbox
  label="I confirm that the information is accurate"
  description="You can review your answers before final submission."
  name="informationConfirmed"
  checked={confirmed}
  onChange={(event) => setConfirmed(event.target.checked)}
  error={errors.informationConfirmed}
/>
```

Component-specific props:

| Prop | Type | Purpose |
| --- | --- | --- |
| `label` | `ReactNode` | Main checkbox label |
| `description` | `string` | Supporting explanation |
| `error` | `string` | Validation error |

All native checkbox props except `type` are supported. The component always
renders `type="checkbox"`.

## Alert

Use `Alert` for information related to the current form or page content. It is
appropriate when the user can continue interacting with the page.

```tsx
<Alert variant="info" title="Before you continue">
  Have your identity and address documents ready.
</Alert>

<Alert variant="success" title="Document uploaded">
  Your file is ready for review.
</Alert>

<Alert variant="warning" title="Review required">
  Some details must be checked by the compliance team.
</Alert>

<Alert variant="error" title="Upload failed">
  Choose a PDF, JPG, or PNG file smaller than 10 MB.
</Alert>
```

Available variants are `info`, `success`, `warning`, and `error`. The default
is `info`. Warning and error alerts use an assertive alert role; information
and success alerts use a status role.

## Card

Use cards to group related information and actions.

```tsx
<Card>
  <CardHeader
    title="Identity details"
    description="Enter the details shown on your identity document."
  />
  <CardBody>
    <form>{/* Form controls */}</form>
  </CardBody>
  <CardFooter>
    <Button variant="secondary">Back</Button>
    <Button type="submit">Continue</Button>
  </CardFooter>
</Card>
```

`CardHeader` also accepts an `action` prop for a badge, link, or compact
button. `Card`, `CardBody`, and `CardFooter` accept `className` for page-level
layout adjustments.

## PageSection

Use `PageSection` to give a larger page area a consistent heading,
description, and optional action.

```tsx
<PageSection
  title="Your documents"
  description="Upload and track the documents required for verification."
  action={<Button size="small">Upload document</Button>}
>
  <DocumentList />
</PageSection>
```

Use `Card` inside a section when the content needs a bordered container.

## Standard page states

`PageState` provides one shared pattern for loading, empty, blocked, success,
and error states. It accepts:

| Prop | Type | Purpose |
| --- | --- | --- |
| `variant` | `loading`, `empty`, `blocked`, `success`, `error` | Required state presentation |
| `title` | `string` | Short description of the current state |
| `description` | `ReactNode` | Explanation or next-step guidance |
| `action` | `ReactNode` | Optional button or link |
| `className` | `string` | Optional page-level layout adjustment |

### Loading

Use loading while data or a required operation is in progress.

```tsx
<PageState
  variant="loading"
  title="Loading your application"
  description="This should only take a moment."
/>
```

Do not display an empty state while the request is still loading.

### Empty

Use empty when a request succeeded but there are no records to display.

```tsx
<PageState
  variant="empty"
  title="No documents uploaded"
  description="Upload your first document to begin identity verification."
  action={<Button>Upload document</Button>}
/>
```

An empty state is not an error. Give the user a clear first action when one is
available.

### Blocked

Use blocked when the page is working, but business rules or account state do
not allow the user to continue.

```tsx
<PageState
  variant="blocked"
  title="Email verification required"
  description="Verify your email address before uploading documents."
  action={<Button>Resend verification email</Button>}
/>
```

Typical blocked reasons include an incomplete prerequisite, pending compliance
review, account suspension, or insufficient permissions. Explain what caused
the block and what the user can do next. Do not use an error state for a known
business-rule restriction.

### Success

Use success after an important operation or milestone completes.

```tsx
<PageState
  variant="success"
  title="Application submitted"
  description="We will notify you when the compliance review is complete."
  action={<Button>Return to dashboard</Button>}
/>
```

For a small confirmation inside an existing page, prefer a success `Alert`.
Use a success `PageState` when the result is the main purpose of the page.

### Error

Use error when the page cannot load or an operation fails unexpectedly.

```tsx
<PageState
  variant="error"
  title="We could not load your documents"
  description="Check your connection and try again."
  action={<Button onClick={retry}>Try again</Button>}
/>
```

Provide a retry or safe navigation action whenever possible. Keep technical
details out of investor-facing messages; log them separately.

## Choosing between Alert and PageState

| Situation | Component |
| --- | --- |
| A form has one validation or submission message | `Alert` |
| Content remains usable despite a warning | `Alert` |
| The whole content area is loading | `PageState` |
| A successful request returned no records | `PageState` with `empty` |
| Account rules prevent access to the whole area | `PageState` with `blocked` |
| A completed milestone is the page result | `PageState` with `success` |
| The whole page or section failed to load | `PageState` with `error` |

## Recommended async state pattern

Represent remote data with distinct states instead of multiple overlapping
booleans:

```tsx
type DocumentsState =
  | { kind: "loading" }
  | { kind: "blocked"; reason: string }
  | { kind: "error"; message: string }
  | { kind: "ready"; documents: Document[] };
```

Render exactly one result:

```tsx
if (state.kind === "loading") {
  return <PageState variant="loading" title="Loading documents" />;
}

if (state.kind === "blocked") {
  return (
    <PageState
      variant="blocked"
      title="Documents unavailable"
      description={state.reason}
    />
  );
}

if (state.kind === "error") {
  return (
    <PageState
      variant="error"
      title="Documents could not be loaded"
      description={state.message}
      action={<Button onClick={retry}>Try again</Button>}
    />
  );
}

if (state.documents.length === 0) {
  return (
    <PageState
      variant="empty"
      title="No documents uploaded"
      action={<Button>Upload document</Button>}
    />
  );
}

return <DocumentList documents={state.documents} />;
```

This prevents contradictory combinations such as loading and error appearing
at the same time.

## Client and server component usage

The form controls include `"use client"` because they use React IDs and refs.
They can be rendered directly inside interactive client pages.

Static components such as `Alert`, `Card`, `PageSection`, and `PageState` can
also be rendered by server components. If an `action` contains an `onClick`
handler, move that interactive action into a client component.

Example client page:

```tsx
"use client";

import { useState } from "react";
import { Button, TextInput } from "@/components/ui";

export default function ProfileForm() {
  const [name, setName] = useState("");

  return (
    <form>
      <TextInput
        label="Full name"
        value={name}
        onChange={(event) => setName(event.target.value)}
      />
      <Button type="submit">Save profile</Button>
    </form>
  );
}
```

## Accessibility rules

- Always provide a meaningful `label` for every form control.
- Use `helperText` for instructions and `error` for validation failures.
- Do not communicate status by colour alone; keep the title and description.
- Keep visible button labels specific, such as “Upload document” rather than
  “Click here”.
- Use `isLoading` on the action that started the operation so it becomes
  disabled and exposes its busy state.
- Do not remove keyboard focus styles.
- Keep heading order logical on each page.

## Responsive use

The primitives are responsive by default. Page-level grids and widths remain
the responsibility of the page using them.

Use CSS Modules for page layout:

```css
.formGrid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 1rem;
}

@media (max-width: 48rem) {
  .formGrid {
    grid-template-columns: 1fr;
  }
}
```

Avoid putting page-specific spacing, widths, or business behaviour into the
shared UI components.

## Existing example

The current home page at `frontend/src/app/page.tsx` demonstrates:

- `Card`, `CardHeader`, and `CardBody`;
- `TextInput` and `Button` in the sign-in form;
- `Alert` for authentication success and failure;
- loading, empty, success, and error `PageState` variants.

The blocked variant is available for upcoming onboarding route guards and
account-state screens.

## Adding or changing a shared component

Before changing a shared primitive:

1. Confirm that the requirement is shared by more than one feature.
2. Preserve native HTML props and accessible semantics.
3. Keep business rules in the feature, not in the UI primitive.
4. Export the component and its public types from `index.ts`.
5. Run the frontend checks:

```bash
cd frontend
npm run lint
npm run build
```

This folder is intentionally a small shared foundation, not a complete design
system.
