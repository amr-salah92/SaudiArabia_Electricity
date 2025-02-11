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

## Project Name

**Saudi Electricity Consumption Analysis: Regional & Seasonal Trends**

## Project Background

The Saudi Electricity Company (SEC), established in 2000 through the merger of various regional electricity companies, is the primary entity responsible for the generation, transmission, and distribution of electric power in the Kingdom of Saudi Arabia. Operating within the utilities sector, SEC has played a pivotal role in supporting the nation's rapid economic growth and urbanization. As of 2024, SEC manages an installed generation capacity exceeding 80,000 megawatts, serving over 10 million customers across residential, commercial, industrial, and governmental sectors. The company's business model encompasses vertically integrated operations, including power generation from diverse energy sources, extensive transmission networks spanning vast geographical areas, and comprehensive distribution systems ensuring reliable electricity delivery to end-users. Key performance metrics indicate a consistent annual growth rate of approximately 6% in electricity demand over the past decade, with peak load demand reaching 62,000 megawatts in the summer months. SEC's strategic initiatives focus on enhancing grid reliability, integrating renewable energy sources, and implementing advanced metering infrastructure to optimize operational efficiency and customer service.

## Project Goals

As data analysts within SEC, our objective is to conduct a comprehensive analysis of regional electricity consumption patterns across Saudi Arabia. This analysis aims to identify trends, anomalies, and potential areas for efficiency improvements. By examining consumption data segmented by year, consumption type, and subregion, we seek to:

- Understand regional disparities in electricity usage to inform infrastructure investment decisions.
- Assess the effectiveness of demand-side management programs by analyzing consumption trends across different sectors.
- Identify peak demand periods and regions with the highest growth rates to enhance load forecasting accuracy.
- Provide actionable insights to support the integration of renewable energy sources and the development of targeted energy efficiency initiatives.

## Data Structure & Initial Checks

The primary dataset for this analysis is sourced from the DataSaudi platform, specifically the "Electricity Consumption by Subregion" dataset. The dataset comprises detailed records of electricity consumption measured in megawatts, categorized by year, consumption type, and subregion. The data spans multiple years, providing a temporal perspective on consumption patterns.

### Data Breakdown

**SAMA Electricity Consumption Dataset:**
- **Year:** Time period of electricity consumption.
- **Consumption Type:** Category of electricity use.
- **Subregion:** Geographic classification.
- **Megawatts:** Total consumption in MW.

**GASTAT Dwelling Electrical Energy Consumption Dataset:**
- **Year:** Time period of electricity consumption.
- **Province:** Regional classification.
- **Season:** Seasonal consumption segmentation.
- **Consumption:** Total electricity consumption (MW).
- **Cost:** Associated cost of electricity.

## Executive Summary

Our analysis of regional electricity consumption in Saudi Arabia reveals significant disparities across different subregions and consumption types. Notably, the Riyadh region accounts for the highest proportion of residential electricity consumption, reflecting its dense population and urban infrastructure. In contrast, the Eastern Region exhibits substantial industrial electricity usage, aligning with its concentration of industrial activities. Over the analyzed period, there is a discernible upward trend in overall electricity consumption, with peak demand consistently occurring during the summer months, attributable to increased cooling requirements. These insights underscore the necessity for region-specific energy policies and targeted demand-side management strategies to ensure sustainable and efficient electricity utilization.

## Insights Deep Dive

### Category 1: Regional Consumption Trends

- **Insight 1:** In 2022, the Riyadh region consumed approximately 28.1% of the nation's total residential electricity, underscoring its status as the most populous and urbanized area in Saudi Arabia.
- **Insight 2:** The Eastern Region, known for its industrial base, accounted for 16.7% of the country's residential electricity consumption in 2022, indicating a significant contribution to the national energy demand.
- **Insight 3:** Certain provinces, such as Al-Riyadh, consistently show the highest electricity consumption.
- **Insight 4:** Industrial and urban centers contribute significantly to overall demand.
- **Insight 5:** Rural areas demonstrate lower but steadily increasing consumption.

### Category 2: Seasonal Variations in Consumption

- **Insight 1:** Summer months experience peak electricity consumption due to cooling demands.
- **Insight 2:** The highest recorded temperatures in the Eastern Region were in July, reaching up to 47.3 degrees Celsius, correlating with peak electricity consumption periods.
- **Insight 3:** Between 2021 and 2022, the Riyadh region experienced a decrease in electricity consumption during winter months by 11.6%, while consumption during the rest of the year decreased by 21.6%.
- **Insight 4:** The Eastern Region saw an increase in electricity consumption during winter months by 31.7% from 2021 to 2022, with consumption during the rest of the year increasing by 30.7%.
- **Insight 5:** Rest of the year sees relatively lower consumption, but gradual increases over time.

### Category 3: Cost Analysis by Province and Season

- **Insight 1:** Cost per megawatt varies significantly across provinces and seasons.
- **Insight 2:** Higher costs align with peak demand periods, especially in summer.
- **Insight 3:** Urban areas show the highest total electricity expenditure.

### Category 4: Long-term Trends and Forecasts

- **Insight 1:** Electricity consumption has shown an upward trend over the past decade.
- **Insight 2:** Projected growth in demand indicates the need for energy-efficient policies.
- **Insight 3:** Investment in renewable energy sources may alleviate high seasonal demand pressures.

## Recommendations

Based on the insights derived from the analysis, we recommend the following actions:

- **Enhance Energy Efficiency Programs:** Implement targeted energy efficiency initiatives in the Riyadh region to manage residential consumption, focusing on promoting energy-efficient appliances and building practices.
- **Industrial Energy Audits:** Conduct comprehensive energy audits in the Eastern Region's industrial sector to identify opportunities for reducing electricity consumption and improving process efficiencies.
- **Demand Response Strategies:** Develop and implement demand response programs during peak summer months to alleviate grid stress, encouraging consumers to shift non-essential usage to off-peak periods.
- **Renewable Energy Integration:** Prioritize the integration of renewable energy sources, such as solar power, in regions with high consumption growth rates to diversify the energy mix and enhance sustainability.
- **Implement Demand-Side Management Strategies:** Reduce peak loads by promoting energy-efficient appliances and practices in high-demand regions.
- **Expand Renewable Energy Investments:** Offset seasonal electricity spikes by investing in renewable energy sources.
- **Enhance Grid Infrastructure:** Support growing demand efficiently by improving grid infrastructure.

## Technical Details

For this analysis, we utilized Excel and Tableau. Here is the link to the interactive Tableau dashboard: [Tableau Dashboard](https://public.tableau.com/app/profile/amr.salah6779/viz/electricity_17392262053380/Dashboard1#1). These tools were used for data cleaning, transformation, analysis, and visualization.

## Assumptions and Caveats

1. **Data Completeness:** Assumes the dataset provided is complete and representative of actual electricity consumption patterns.
2. **Time Frame:** The analysis is based on the available data spanning multiple years, providing a historical perspective but may not account for recent changes or future projections.
3. **Causal Relationships:** Identified trends and correlations do not imply causation. Further analysis may be required to establish causal links.
4. **External Factors:** External factors such as economic conditions, policy changes, and technological advancements may impact electricity consumption patterns and are not explicitly accounted for in this analysis.

This analysis provides a comprehensive overview of regional electricity consumption patterns in Saudi Arabia, offering actionable insights to inform strategic decision-making and enhance operational efficiency within the Saudi Electricity Company.
