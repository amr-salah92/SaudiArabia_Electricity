# Saudi Electricity Consumption Analysis: Regional & Seasonal Trends

**Table of Contents**

1. [Project Name](#project-name)
2. [Project Background](#project-background)
3. [Project Goals](#project-goals)
4. [Data Structure & Initial Checks](#data-structure--initial-checks)
5. [Executive Summary](#executive-summary)
6. [Insights Deep Dive](#insights-deep-dive)
   - [Category 1: Regional Consumption Trends](#category-1-regional-consumption-trends)
   - [Category 2: Seasonal Variations in Consumption](#category-2-seasonal-variations-in-consumption)
   - [Category 3: Cost Analysis by Province and Season](#category-3-cost-analysis-by-province-and-season)
   - [Category 4: Long-term Trends and Forecasts](#category-4-long-term-trends-and-forecasts)
7. [Recommendations](#recommendations)
8. [Technical Details](#technical-details)
9. [Assumptions and Caveats](#assumptions-and-caveats)

---

## Introduction

This repository contains an analysis of Saudi Arabia's electricity consumption trends from **2005 to 2022**. The objective is to understand consumption patterns across different sectors and regions, enabling data-driven recommendations for energy efficiency and sustainability.

## Background

Saudi Electricity Company (SEC) is the leading power provider in Saudi Arabia, supplying electricity to over **10 million customers** across residential, commercial, industrial, and governmental sectors. Electricity demand has grown significantly due to urbanization, economic expansion, and industrialization, reaching **299 million megawatts in 2022** from **153 million megawatts in 2005**.

## Objectives

- Analyze sector-wise electricity consumption trends.
- Identify regional consumption patterns and long-term trends.
- Provide actionable insights for energy optimization and policy planning.
- Support infrastructure development through data-driven analysis.

## Data Overview

The dataset consists of **432 records spanning 18 years**, with the following attributes:

- **Megawatts**: Electricity consumption in megawatts.
- **Consumption Type**: Categorized into Residential, Industrial, Commercial, Governmental, and Agricultural.
- **Subregion**: Geographical classification of consumption.
- **Year**: The year of recorded electricity consumption.

## Key Findings

- **Total electricity consumption nearly doubled from 2005 to 2022.**
- **Western and Middle regions dominated residential electricity demand.**
- **The Eastern region led industrial consumption due to large-scale industries.**
- **Post-pandemic commercial energy consumption surged in 2022.**
- **Agricultural electricity consumption remained the lowest, with minimal growth.**

## Detailed Insights

### Residential Consumption

- The **Western region recorded the highest residential electricity consumption**, peaking at **51.6 million megawatts in 2016**.
- **Middle region saw substantial growth from 2019 to 2022**, driven by population growth and urban expansion.
- **Extreme climate conditions contribute significantly** to high electricity demand for cooling systems.
  
![Dashboard](https://github.com/user-attachments/assets/c89fecb1-c36a-42dc-9bd8-34bed577fce8)

### Industrial Consumption

- **62% increase in industrial electricity usage from 2005 to 2022.**
- The **Eastern region led industrial consumption**, particularly in **2014**, reflecting major industrial expansion.
- Growth is linked to **petrochemical and manufacturing sector development**.
- Government-backed industrialization policies contributed to rising demand.
  
![Dashboard (1)](https://github.com/user-attachments/assets/2d83332f-dcfb-4b2a-9610-ac1c05324f16)

### Commercial & Governmental Consumption

- **Commercial electricity demand peaked in 2022**, indicating economic recovery post-COVID-19.
  
  ![Dashboard (2)](https://github.com/user-attachments/assets/16207286-570d-494c-9484-82cae331cda3)

- Governmental energy consumption remained stable, with a peak in **2018 in the Western region**.
  
![Dashboard (3)](https://github.com/user-attachments/assets/f6cb26e1-5075-4c27-8ddf-e15f7e3d5f22)

- **Business expansion and infrastructure projects contributed to rising commercial energy consumption.**
- Case study: **Post-pandemic hospitality sector recovery in Riyadh** led to a **15% increase in electricity consumption (2021-2022).**

### Agricultural & Other Consumption

- **Agriculture sector had the lowest electricity demand**, with **52,342 megawatts recorded in 2005**.
- **Minimal growth over time** due to outdated irrigation systems and limited adoption of energy-efficient technologies.
- **Solar-powered irrigation presents an opportunity** for sustainable energy use in the agricultural sector.
  
![Dashboard (4)](https://github.com/user-attachments/assets/e6fc5390-59d6-434b-9edb-629298ce2ba8)

## Recommendations

### 1. Enhance Residential Energy Efficiency Programs
- **Action Plan**: Implement smart meters, promote energy-efficient appliances, and conduct awareness campaigns.
- **Impact**: Reduce peak demand and lower household electricity bills.
- **Example**: Dubai’s smart home program cut residential energy consumption by **10%**.

### 2. Promote Industrial Energy Optimization
- **Action Plan**: Encourage adoption of energy-efficient machinery and conduct regular audits.
- **Impact**: Reduce operational costs and enhance industrial competitiveness.
- **Example**: Japan’s Top Runner Program improved industrial energy efficiency significantly.

### 3. Support Renewable Energy Adoption in Agriculture
- **Action Plan**: Provide subsidies for solar irrigation and launch pilot projects.
- **Impact**: Lower electricity costs and increase sustainability.
- **Example**: India’s PM-KUSUM scheme improved agricultural productivity through solar energy.

### 4. Introduce Incentives for High-Demand Regions
- **Action Plan**: Offer rebates for energy-efficient appliances and impose stricter building regulations.
- **Impact**: Reduce regional energy imbalances and unnecessary consumption.

### 5. Encourage Solar Panel Installation in High-Consumption Areas
- **Action Plan**: Provide incentives for residential and commercial solar installations.
- **Impact**: Reduce peak summer electricity demand and improve energy independence.
- **Example**: Germany’s solar incentives led to widespread adoption and lower summer peaks.

### Technical Implementation

## Data Cleaning
Performed in Excel, handling missing values and ensuring trend consistency.[View the File](https://github.com/amr-salah92/SaudiArabia_Electricity/blob/main/SaudiElectricity.csv)  

## Visualization
Created interactive dashboards in Tableau to analyze sectoral and regional consumption. [View the dashboard](https://public.tableau.com/app/profile/amr.salah6779/viz/electricity_17392262053380/Dashboard1)


## Assumptions & Limitations

- Missing data for certain years were estimated using historical trends.
- Minor consumption records (<1% of total) were excluded to maintain focus on significant trends.
- Consumption classifications follow SEC’s standard categorization.

---

This repository provides **data-driven insights and strategic recommendations for optimizing electricity consumption** in Saudi Arabia. By leveraging advanced analytics, policymakers and industry leaders can implement effective energy efficiency measures and promote sustainable practices.

