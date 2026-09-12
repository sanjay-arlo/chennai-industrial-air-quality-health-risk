"""Optional Pandas/NumPy air-quality EDA.
Run: python analysis.py --input path/to/data.csv
"""
import argparse
import numpy as np
import pandas as pd

REQUIRED = ["date", "zone", "aqi", "pm25_ugm3", "pm10_ugm3", "population"]


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True)
    args = parser.parse_args()
    df = pd.read_csv(args.input)
    missing = [c for c in REQUIRED if c not in df.columns]
    if missing:
        raise ValueError(f"Missing required columns: {missing}")

    for col in REQUIRED[2:]:
        df[col] = pd.to_numeric(df[col], errors="coerce")
    df["unhealthy_flag"] = np.where(df["aqi"] >= 100, 1, 0)
    df["exposure_proxy"] = df["aqi"] * df["population"]

    zone = (
        df.groupby("zone", as_index=False)
        .agg(avg_aqi=("aqi", "mean"), avg_pm25=("pm25_ugm3", "mean"),
             unhealthy_obs=("unhealthy_flag", "sum"), population=("population", "sum"),
             exposure_proxy=("exposure_proxy", "sum"))
    )
    zone["exposure_percentile"] = zone["exposure_proxy"].rank(pct=True) * 100
    print("Rows:", len(df))
    print(zone.sort_values("exposure_proxy", ascending=False).to_string(index=False))


if __name__ == "__main__":
    main()
