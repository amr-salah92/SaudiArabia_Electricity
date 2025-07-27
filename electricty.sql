/* ------------------------------------------------------------------
   SAUDI ELECTRICITY CONSUMPTION ANALYSIS PROJECT
   ---------------------------------------------------------------
   Objective: Analyze electricity consumption trends across 
   Saudi Arabia from 1990 to 2020 by:
   - Year, Region (Subregion), and Consumption Type
   - Identifying top-consuming areas and temporal patterns
   ------------------------------------------------------------------
*/

-- ===============================================================
-- 1. INITIAL SETUP AND DATA EXPLORATION
-- ===============================================================

USE electricity; -- Set database context
SET SQL_SAFE_UPDATES = 0; -- Allow updates for column cleanup

-- Preview sample data
SELECT * 
FROM Saudielectricity
LIMIT 5;

-- Fix column name due to UTF-8 BOM issue
ALTER TABLE Saudielectricity
CHANGE COLUMN ï»؟Megawatts Mega_Watt INT;

-- Check date range in dataset
SELECT 
    MIN(Year) AS START_YEAR,
    MAX(Year) AS END_YEAR
FROM Saudielectricity;

-- Identify consumption extremes
SELECT 
    MIN(Mega_Watt) AS Min_Consumption,
    MAX(Mega_Watt) AS Max_Consumption
FROM Saudielectricity;

-- ===============================================================
-- 2. AGGREGATED CONSUMPTION ANALYSIS
-- ===============================================================

-- Total consumption by Consumption Type
SELECT 
    `Consumption Type`, 
    SUM(Mega_Watt) AS Total_Mega_Watt
FROM Saudielectricity
GROUP BY `Consumption Type`
ORDER BY Total_Mega_Watt DESC;

-- Total consumption by Subregion
SELECT 
    Subregion, 
    SUM(Mega_Watt) AS Total_Mega_Watt
FROM Saudielectricity
GROUP BY Subregion
ORDER BY Total_Mega_Watt DESC;

-- Yearly total consumption with Year-over-Year (YoY) change
SELECT 
    Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
GROUP BY Year
ORDER BY Year;

-- ===============================================================
-- 3. TEMPORAL CONSUMPTION TRENDS
-- ===============================================================

-- Subregion-wise yearly trends
SELECT 
    Subregion,
    Year,
    SUM(Mega_Watt) AS Total_Mega_Watt
FROM Saudielectricity
GROUP BY Subregion, Year
ORDER BY Subregion, Year;

-- Consumption type trends over time
SELECT 
    `Consumption Type`,
    Year,
    SUM(Mega_Watt) AS Total_Mega_Watt
FROM Saudielectricity
GROUP BY `Consumption Type`, Year
ORDER BY `Consumption Type`, Year;

-- Share of total consumption by type
SELECT 
    `Consumption Type`,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    ROUND(
        SUM(Mega_Watt) * 100.0 / (SELECT SUM(Mega_Watt) FROM Saudielectricity), 2
    ) AS Percentage_Total
FROM Saudielectricity
GROUP BY `Consumption Type`
ORDER BY Total_Mega_Watt DESC;

-- Share of total consumption by region
SELECT 
    Subregion,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    ROUND(
        SUM(Mega_Watt) * 100.0 / (SELECT SUM(Mega_Watt) FROM Saudielectricity), 2
    ) AS Percentage_Total
FROM Saudielectricity
GROUP BY Subregion
ORDER BY Total_Mega_Watt DESC;

-- ===============================================================
-- 4. DETAILED YoY ANALYSIS BY CATEGORY AND REGION
-- ===============================================================

-- Template for Consumption Type-specific YoY analysis
-- (Repeat for each type with WHERE clause)
-- Types: 'Residential', 'Commercial', 'Industerial', 'Governmental', 'Agreculture', 'Others'

-- Example: Residential
SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Residential'
GROUP BY `Consumption Type`, Year
ORDER BY Year;


SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Agreculture'
GROUP BY `Consumption Type`, Year
ORDER BY Year;

SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Governmental'
GROUP BY `Consumption Type`, Year
ORDER BY Year;

SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Industerial'
GROUP BY `Consumption Type`, Year
ORDER BY Year;

SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Commercial'
GROUP BY `Consumption Type`, Year
ORDER BY Year;

SELECT 
    `Consumption Type`, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE `Consumption Type` = 'Others'
GROUP BY `Consumption Type`, Year
ORDER BY Year;

-- Template for Subregion-specific YoY analysis
-- Regions: 'Middle', 'Eastern', 'Western', 'Southern '

-- Example: Eastern
SELECT 
    Subregion, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE Subregion = 'Eastern'
GROUP BY Subregion, Year
ORDER BY Year;




SELECT 
    Subregion, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE Subregion = 'Southern '
GROUP BY Subregion, Year
ORDER BY Year;

SELECT 
    Subregion, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE Subregion = 'Western'
GROUP BY Subregion, Year
ORDER BY Year;

SELECT 
    Subregion, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) AS Prev_Year,
    ROUND(
        (SUM(Mega_Watt) - LAG(SUM(Mega_Watt)) OVER (ORDER BY Year)) 
        / LAG(SUM(Mega_Watt)) OVER (ORDER BY Year) * 100, 2
    ) AS YoY_Change_Percent
FROM Saudielectricity
WHERE Subregion = 'Middle'
GROUP BY Subregion, Year
ORDER BY Year;


-- ===============================================================
-- 5. REGIONAL SHARE OF SPECIFIC CONSUMPTION TYPES BY YEAR
-- ===============================================================

-- Template: Share of a consumption type by region over years
-- Industrial
SELECT 
    Subregion, Year,
    SUM(Mega_Watt) AS Total_Mega_Watt,
    ROUND(
        SUM(Mega_Watt) * 100.0 / SUM(SUM(Mega_Watt)) OVER (PARTITION BY Year), 2
    ) AS Percentage_of_Year_Total
FROM Saudielectricity
WHERE `Consumption Type` = 'Industerial'
GROUP BY Subregion, Year
ORDER BY Year, Subregion;


SELECT Subregion, Year, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       SUM(Mega_Watt) * 100.0 / SUM(SUM(Mega_Watt)) OVER (PARTITION BY Year) AS PERCENTAGE_OF_YEAR_TOTAL
FROM Saudielectricity
WHERE `Consumption Type` = 'Agreculture'
GROUP BY Year, Subregion
ORDER BY Year, Subregion;

SELECT Subregion, Year, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       SUM(Mega_Watt) * 100.0 / SUM(SUM(Mega_Watt)) OVER (PARTITION BY Year) AS PERCENTAGE_OF_YEAR_TOTAL
FROM Saudielectricity
WHERE `Consumption Type` = 'Governmental'
GROUP BY Year, Subregion
ORDER BY Year, Subregion;


SELECT Subregion, Year, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       SUM(Mega_Watt) * 100.0 / SUM(SUM(Mega_Watt)) OVER (PARTITION BY Year) AS PERCENTAGE_OF_YEAR_TOTAL
FROM Saudielectricity
WHERE `Consumption Type` = 'Commercial'
GROUP BY Year, Subregion
ORDER BY Year, Subregion;
