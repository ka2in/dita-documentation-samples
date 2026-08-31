<!--
Source: portal.farowave.com/guides/enterprise-documentation/2026/07/28/frankfurter-openapi-audit/
Saved for DITA conversion reference — Week 2 of DITA_XML_CCMS_Practical_Familiarity_v2.md
Target DITA topic type: Concept (structured as problem -> mechanism -> before/after)
-->

# Why your OpenAPI spec passes linting and still fails your developers

API documentation is only as good as it helps a developer reach their goal
without consulting external resources, reverse-engineering silent errors,
or opening a support ticket to decipher a cryptic response.

A spec that passes linting is officially done. The tooling says it's valid,
the CI pipeline goes green, and the documentation ships alongside the
release. What linting cannot measure is whether a developer facing the API
for the first time can actually use it.

## What the audit found

- Error response descriptions — generic "Resource not found" vs. specific
  causes (invalid currency code, date before 1999-01-04, end date before
  start date)
- Silent date adjustment — undocumented behavior where a start date before
  1999-01-04 is silently adjusted, with the adjusted date reflected in the
  response body
- Today's rates instability — no mention that today's data may update
  during the day as new rates are published
- Working days constraint — time series endpoints silently exclude
  weekends and bank holidays
- Base currency default — no declared default on the `base` parameter
- Response examples — none present on any schema
- Required fields — not declared on response schemas

## What this means for documentation

Each of these gaps passed linting. None were bugs in the spec. What was
missing was the layer of context that turns a technically correct document
into one a developer can actually rely on.
