# Industry BA Delivery Pack — Chennai Industrial Air Quality

## Executive decision
Prioritise monitoring and mitigation where particulate exposure, unhealthy-day frequency and population exposure are highest.

## Stakeholders
Environmental operations, monitoring teams, industrial-zone managers, public agencies, programme finance and risk governance.

## Requirements
- Compare exposure indicators across zones.
- Rank zones by intervention priority.
- Distinguish industrial and population exposure context.
- Support mitigation scenarios.
- Provide auditable filtered exports.

## KPI dictionary
AQI, PM2.5, PM10, unhealthy-day share, population exposure and intervention priority.

## Analytical model
`dim_date` + `dim_zone` → `fact_air_quality_observation` + `dim_population` → exposure KPI layer.

## Scenario model
Test AQI reduction, PM reduction and monitoring-coverage uplift assumptions.

## Acceptance criteria
AQI/PM metrics reconcile with source rows, filters cascade, population totals are explicit, and outputs are labelled as exposure indicators rather than individual medical risk.

## Production controls
Governed monitoring feeds, station metadata, missing-data QA, meteorology/source lineage, approved thresholds and audit logs.

## Portfolio note
Synthetic illustrative data only; not an official environmental or medical assessment.
