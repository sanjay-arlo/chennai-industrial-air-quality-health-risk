from pathlib import Path
import csv
p=Path(__file__).parents[1]/'sample_zone_air_quality_chennai.csv'
req={'date','zone','aqi','pm25_ugm3','pm10_ugm3','population'}
with p.open(newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
missing=sorted(req-set(rows[0])) if rows else sorted(req)
invalid=sum(1 for r in rows if float(r['aqi'])<0 or float(r['pm25_ugm3'])<0 or float(r['pm10_ugm3'])<0 or int(r['population'])<0)
print({'rows':len(rows),'missing_columns':missing,'invalid_rows':invalid})
