# BA / DA Delivery Pipeline

## Business question
Which Chennai zones have the greatest air-quality exposure burden and where should mitigation capacity be targeted?

## 01 — Excel
Clean monitoring observations, validate AQI/PM fields, calculate repeated unhealthy observations and inspect population exposure.

## 02 — SQL
Calculate AQI, PM2.5/PM10 trends, exposure-weighted burden and zone priority rankings.

## 03 — Power BI
Build: Exposure Overview → Zone Ranking → Pollutant Drivers → Mitigation Scenario, with date and zone drill-through.

## 04 — Decision
Prioritise monitoring, mitigation and inspection capacity using exposure, persistence and population.

## Acceptance criteria
KPI calculations reconcile to source observations; exposure assumptions are documented; synthetic records are clearly labelled.