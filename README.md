# Chennai Industrial Air Quality & Health-Risk Analysis

> **Business Analyst / Data Analyst portfolio case study** comparing zone-level air-quality and particulate exposure signals to prioritise monitoring and mitigation capacity.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/chennai-industrial-air-quality-health-risk/)**

## Executive summary

This case turns environmental observations into a management workflow: validate monitoring data, quantify persistent exposure, identify high-burden zones, explain pollutant drivers, and prioritise mitigation and monitoring effort.

## Business problem

**Which Chennai zones experience the greatest particulate exposure burden, and where should mitigation capacity be targeted first?**

## Analyst workflow

**Excel → Python / Pandas / NumPy (optional) → SQL / MySQL → Power BI → Decision**

### 1. Excel — first-pass control

Clean monitoring observations, validate AQI/PM fields, build formulas and pivots, calculate unhealthy-day indicators and review population-exposure exceptions.

### 2. Python — optional analytical layer

Use **Pandas + NumPy** for repeatable EDA, distribution analysis, anomaly checks, transformations and exposure calculations when the dataset benefits from programmatic analysis.

### 3. SQL / MySQL — mandatory analytical layer

Use CTEs, joins, aggregations, window functions, zone segmentation and ranking to calculate AQI/PM trends, unhealthy-day share and priority queues.

### 4. Power BI — mandatory executive layer

Build governed measures, slicers and drill-through, with an executive story: **Exposure Overview → Zone Ranking → Pollutant Drivers → Mitigation Scenario**.

### 5. Decision — mandatory outcome

Prioritise monitoring, inspection and mitigation using **priority, owner, action, expected impact and threshold assumptions**.

## Technical stack

- **Excel** — data cleaning, reconciliation, formulas, pivots, exception analysis and scenario planning
- **SQL / MySQL** — environmental KPIs, segmentation, ranking and exception queues
- **Python / Pandas / NumPy** — optional EDA, transformations, anomaly checks and exposure analysis
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction, data model, DAX and executive reporting specification
- **GitHub** — version control and documentation

## Dashboard story

1. **Exposure Overview** — AQI and particulate headline measures
2. **Zone Ranking** — exposure burden by zone
3. **Pollutant Drivers** — PM2.5/PM10 contribution patterns
4. **Population Exposure** — burden viewed alongside population
5. **Mitigation Scenario** — illustrative management levers
6. **Decision Queue** — priority monitoring and mitigation actions

## KPI framework

- **Average AQI** = mean AQI for the selected scope
- **PM2.5 exposure ratio** = observed PM2.5 / selected reference limit
- **Unhealthy-day share** = days at or above selected threshold / days observed × 100
- **Exposure priority** = pollution severity + persistence + population burden

## Business Analyst deliverables

Business framing, stakeholder/requirements thinking, KPI dictionary, Excel analysis, optional Python analysis, SQL/MySQL queries, Power BI/DAX specification, interactive dashboard, prioritisation logic and production-upgrade recommendations.

## Data quality & governance

Required-field validation, numeric/range checks, duplicate review, date completeness, KPI reconciliation and explicit treatment of illustrative data are included in the analytical controls.

## Production upgrade path

A production solution should integrate governed CPCB/TNPCB monitoring data, station metadata, meteorology, population grids and industrial-source inventories, with QA flags, missing-data treatment, source lineage and domain-approved thresholds.

## Important limitation

This is a **portfolio case study using synthetic / illustrative data**. Exposure indicators should not be interpreted as individual medical risk or as official monitoring results.

## Author

**Sanjay Arlo**  
Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
