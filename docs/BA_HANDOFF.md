# BA Handoff — Chennai Industrial Air Quality

## Objective
Identify zones with the strongest particulate-exposure signals and prioritise monitoring and mitigation resources.

## Stakeholders
Environmental regulators; industrial-area operators; municipal teams; monitoring teams; planning/health stakeholders; community representatives.

## Core requirements
- Compare AQI and PM2.5 by zone and period.
- Track unhealthy-day frequency.
- Support industrial-versus-residential segmentation.
- Rank mitigation priorities transparently.
- Separate synthetic portfolio data from official monitoring evidence.

## Decision rule
Prioritise persistently high AQI/PM2.5 and high exposure populations, while treating outputs as screening indicators rather than individual medical risk.

## Acceptance criteria
Dashboard loads without a backend; KPI calculations reconcile; zone filters work; priority outputs show drivers; data disclaimer is visible.

## Production controls
Official monitoring feeds, station metadata, meteorology, population grids, missing-data rules, source lineage, QA flags and domain-approved thresholds.
