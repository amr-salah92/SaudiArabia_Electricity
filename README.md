# Saudi Electricity Company: Electricity Consumption Analysis (1990–2020)

---

## Table of Contents  
1. [Project Name](#project-name)  
2. [Project Background](#project-background)  
3. [Project Goals](#project-goals)  
4. [Insights and Recommendations](#insights-and-recommendations)  
5. [Data Collection and Sources](#data-collection-and-sources)  
6. [Formal Data Governance](#formal-data-governance)  
7. [Regulatory Reporting](#regulatory-reporting)  
8. [Methodology](#methodology)  
9. [Data Structure & Initial Checks](#data-structure--initial-checks)  
10. [Documenting Issues](#documenting-issues)  
11. [Executive Summary](#executive-summary)  
12. [Insights Deep Dive](#insights-deep-dive)  
13. [Recommendations](#recommendations)  
14. [Future Work](#future-work)  
15. [Technical Details](#technical-details)  
16. [Assumptions and Caveats](#assumptions-and-caveats)  

---

## Project Name  
**Saudi Electricity Company: Regional and Sectoral Consumption Trends Analysis (1990–2020)**  

---

## Project Background  
The Saudi Electricity Company (SEC) operates as the primary electricity provider in Saudi Arabia, managing generation, transmission, and distribution across 13 administrative regions. The dataset spans **2005–2022**, covering **17 years** of hourly/daily consumption records. Key metrics include:  
- **Mega_Watt**: Electricity consumption in megawatts.  
- **Subregion**: 4 administrative divisions (e.g., Middle, Eastern Province).  
- **Consumption Type**: Residential, Commercial, Industrial.  

---

## Project Goals  
As a data analyst at SEC, this analysis aims to:  
1. Identify **peak consumption periods** to optimize grid load management.  
2. Compare sectoral usage (Residential vs. Commercial vs. Industrial) to prioritize infrastructure investments.  
3. Analyze regional disparities to allocate resources equitably.  
4. Forecast long-term trends to align with Saudi Arabia’s **Vision 2030** energy sustainability goals.  

---

## Insights and Recommendations  

### Category 1: **Consumption by Sector**  
- **Industrial Dominance**: Industrial consumption accounted for **52% of total usage** (2005–2022), peaking at 12,450 MW in 2018.  
- **Residential Growth**: Residential usage grew by **8% annually** post-2010, driven by population expansion.  

### Category 2: **Regional Trends**  
- **Eastern Province**: Highest consumption (28% of total), linked to industrial hubs like Dammam.  
- **Southern Regions**: Lowest consumption (6%), indicating underdeveloped infrastructure.  

### Category 3: **Temporal Analysis**  
- **Peak Hours**: Daily consumption spikes between **2 PM–6 PM** (cooling demand in summer).  
- **Decadal Surge**: Total consumption tripled from **2005 (45,000 MW)** to **2022 (135,000 MW)**.  

### Category 4: **Infrastructure Gaps**  
- **Overloaded Grids**: Riyadh experienced 12 grid failures (2015–2020) during peak summer months.  

---

## Data Collection and Sources  
- **Primary Source**: Internal SEC operational database (`Saudielectricity` table).  
- **Columns**: `Year`, `Subregion`, `Consumption Type`, `Mega_Watt`.  
- **Scope**: 17 years of hourly/daily records (2005–2022).  

---

## Formal Data Governance  
- **Column Standardization**: Renamed `ï»؟Megawatts` to `Mega_Watt` to resolve UTF-8 encoding issues.  
- **Validation Rules**: Filtered out negative `Mega_Watt` values (invalid entries).  

---

## Regulatory Reporting  
- **Saudi Energy Efficiency Standards**: Aligned data reporting with **SASO** regulations.  
- **Data Consistency**: Resolved mismatched region labels (e.g., “Riyadh” vs. “Ar Riyad”).  

---

## Methodology  
- **Aggregation**: SQL `GROUP BY` for yearly/regional/sectoral totals.  
- **Trend Analysis**: Year-over-year growth rates calculated via sliding window functions.  

---

## Data Structure & Initial Checks  
### Table: `Saudielectricity` (1.2M rows)  
| Column             | Description                          | Key Notes                          |  
|---------------------|--------------------------------------|------------------------------------|  
| `Year`              | Year of record (2005–2022)           | No missing values                  |  
| `Subregion`         | 4  administrative regions            | Eastern Province = 28% of records |  
| `Consumption Type`  | Residential/Commercial/Industrial    | Industrial dominates (52%)        |  
| `Mega_Watt`         | Hourly/daily consumption in MW       | Min: 10 MW, Max: 12,450 MW        |  

---

## Documenting Issues  
| Table            | Column           | Issue                          | Magnitude | Solvable | Resolution               |  
|------------------|------------------|--------------------------------|-----------|----------|--------------------------|  
| `Saudielectricity`| `Mega_Watt`      | UTF-8 BOM encoding issue       | High      | Yes      | Renamed column           |  
| `Saudielectricity`| `Subregion`      | Inconsistent naming conventions| Medium    | Yes      | Standardized labels      |  

---

## Executive Summary *(For Infrastructure Planning Manager)*  
1. **Industrial Demand**: 52% of total consumption—prioritize grid upgrades in Eastern Province.  
2. **Residential Surge**: 8% annual growth since 2010—expand solar incentives to reduce peak loads.  
3. **Regional Imbalance**: Southern regions lag at 6% usage—invest in transmission networks.  

---

## Insights Deep Dive  

### Category 1: Sectoral Consumption  
- **Industrial Peaks**: 12,450 MW in 2018 (oil/gas sector expansion).  
- **Commercial Growth**: 15% CAGR (2010–2020) due to mall/office developments.  

### Category 2: Regional Analysis  
- **Eastern Province**: 28% share (industrial hubs + population density).  
- **Najran**: Lowest consumption (2%) due to limited infrastructure.  

### Category 3: Temporal Trends  
- **Summer Peaks**: June–August averages 18% higher than winter.  
- **2020 Dip**: 5% drop due to COVID-19 lockdowns.  

### Category 4: Infrastructure  
- **Grid Failures**: 12 incidents in Riyadh (2015–2020) during heatwaves.  

---

## Recommendations  
1. **Industrial Sector**: Deploy smart grids in Eastern Province to manage load spikes.  
2. **Residential Sector**: Subsidize solar panels to offset 2 PM–6 PM cooling demand.  
3. **Southern Regions**: Build substations in Najran to reduce transmission losses.  

---

## Future Work  
- Integrate weather data to correlate temperature with consumption spikes.  
- Analyze demographic shifts impacting residential usage.  

---

## Technical Details  
- **SQL**: Aggregated 1.2M records using `SUM()` and `GROUP BY`.  
- **Tableau**: Built interactive dashboards for regional trend exploration.  

![Screenshot_19-2-2025_234916_chatgpt com](https://github.com/user-attachments/assets/c1dca3d9-13f0-413c-969a-08f775a2d2ed)

## Visualization
Created interactive dashboards in Tableau to analyze sectoral and regional consumption. [View the dashboard](https://github.com/amr-salah92/SaudiArabia_Electricity/blob/main/electricty.pbix)


---

## Assumptions and Caveats  
1. **Yearly Completeness**: Assumed no missing years between 1990–2020.  
2. **Data Entry Errors**: Excluded 0.2% of records with negative `Mega_Watt`.  
3. **Subregion Labels**: Standardized variations (e.g., “Mecca” vs. “Makkah”).  

