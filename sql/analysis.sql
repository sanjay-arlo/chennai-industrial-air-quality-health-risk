-- Chennai Air Quality: reproducible exposure SQL
-- MySQL 8+; portfolio data is synthetic/illustrative.

-- 1) Zone exposure KPI layer
WITH zone_kpi AS (
    SELECT zone,
           COUNT(*) AS observations,
           AVG(aqi) AS avg_aqi,
           AVG(pm25_ugm3) AS avg_pm25,
           AVG(pm10_ugm3) AS avg_pm10,
           SUM(population) AS population_observed,
           100.0 * SUM(CASE WHEN aqi >= 100 THEN 1 ELSE 0 END) / COUNT(*) AS unhealthy_day_pct
    FROM sample_zone_air_quality_chennai
    GROUP BY zone
)
SELECT zone, observations,
       ROUND(avg_aqi,2) AS avg_aqi,
       ROUND(avg_pm25,2) AS avg_pm25,
       ROUND(avg_pm10,2) AS avg_pm10,
       ROUND(unhealthy_day_pct,2) AS unhealthy_day_pct,
       population_observed
FROM zone_kpi
ORDER BY avg_aqi DESC;

-- 2) Window function: zone ranking and exposure share
WITH zone_kpi AS (
    SELECT zone,
           AVG(aqi) AS avg_aqi,
           SUM(population) AS population_observed
    FROM sample_zone_air_quality_chennai
    GROUP BY zone
)
SELECT zone,
       ROUND(avg_aqi,2) AS avg_aqi,
       population_observed,
       DENSE_RANK() OVER (ORDER BY avg_aqi DESC) AS aqi_rank,
       ROUND(100.0 * population_observed / NULLIF(SUM(population_observed) OVER (),0),2) AS population_share_pct
FROM zone_kpi
ORDER BY aqi_rank;

-- 3) CTE + join: zones above portfolio AQI benchmark
WITH zone_avg AS (
    SELECT zone, AVG(aqi) AS avg_aqi
    FROM sample_zone_air_quality_chennai
    GROUP BY zone
), portfolio_avg AS (
    SELECT AVG(aqi) AS portfolio_aqi
    FROM sample_zone_air_quality_chennai
)
SELECT z.zone,
       ROUND(z.avg_aqi,2) AS zone_avg_aqi,
       ROUND(p.portfolio_aqi,2) AS portfolio_avg_aqi,
       ROUND(z.avg_aqi - p.portfolio_aqi,2) AS excess_aqi
FROM zone_avg z
CROSS JOIN portfolio_avg p
WHERE z.avg_aqi > p.portfolio_aqi
ORDER BY excess_aqi DESC;

-- 4) High-exposure observation queue
SELECT date, zone, aqi, pm25_ugm3, pm10_ugm3, population
FROM sample_zone_air_quality_chennai
WHERE aqi >= 100 OR pm25_ugm3 >= 35
ORDER BY aqi DESC, pm25_ugm3 DESC
LIMIT 25;

-- 5) Data-quality control
SELECT COUNT(*) AS invalid_rows
FROM sample_zone_air_quality_chennai
WHERE date IS NULL OR zone IS NULL OR aqi IS NULL
   OR pm25_ugm3 IS NULL OR pm10_ugm3 IS NULL OR population IS NULL;
