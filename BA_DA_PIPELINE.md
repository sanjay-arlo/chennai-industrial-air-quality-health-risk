# BA / DA Delivery Pipeline

## Business question
Which Chennai zones have the greatest air-quality exposure burden and where should mitigation capacity be targeted?

## 01 — Excel — mandatory first pass
Clean monitoring observations, validate AQI/PM fields, use formulas and pivots, calculate unhealthy-observation rates and population exposure, and build a zone exception view.

## 02 — Python (Pandas + NumPy) — optional
Use Python when useful for EDA, distribution checks, anomaly detection, pollutant correlation analysis, repeated-quality checks and automated transformation.

## 03 — SQL — mandatory analytical layer
Use joins, CTEs, aggregations and window functions for pollutant KPIs, rolling trends, exposure-weighted measures, zone ranking and exception queues.

## 04 — Power BI — mandatory decision interface
Build the model, DAX measures, slicers and drill-through: Exposure Overview → Zone Ranking → Pollutant Drivers → Mitigation Scenario.

## 05 — Decision — mandatory outcome
Prioritise monitoring, mitigation and inspection capacity with owner, priority, expected exposure reduction and escalation rules.

## Acceptance criteria
KPI calculations reconcile across stages; exposure assumptions are documented; synthetic records are clearly labelled; no portfolio metric is presented as official environmental telemetry.
