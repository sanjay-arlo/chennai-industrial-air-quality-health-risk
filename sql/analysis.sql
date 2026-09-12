-- Chennai Air Quality: exposure analysis
SELECT zone,
       COUNT(*) AS observations,
       ROUND(AVG(aqi),2) AS avg_aqi,
       ROUND(AVG(pm25_ugm3),2) AS avg_pm25,
       ROUND(AVG(pm10_ugm3),2) AS avg_pm10,
       ROUND(100.0*SUM(CASE WHEN aqi >= 100 THEN 1 ELSE 0 END)/COUNT(*),2) AS unhealthy_day_pct,
       SUM(population) AS population_observed
FROM sample_zone_air_quality_chennai
GROUP BY zone
ORDER BY avg_aqi DESC;

SELECT date, zone, aqi, pm25_ugm3, pm10_ugm3, population
FROM sample_zone_air_quality_chennai
ORDER BY aqi DESC, pm25_ugm3 DESC
LIMIT 20;
