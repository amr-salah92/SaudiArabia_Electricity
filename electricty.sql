/*
SAUDI ELECTRICITY CONSUMPTION ANALYSIS PROJECT

This project analyzes electricity consumption trends across Saudi Arabia's regions and consumption types.
Key analyses include:
- Total consumption by year, region, and consumption type
- Identification of peak consumption periods and top-consuming regions
- Temporal trends from 1990-2020
- Comparative analysis between residential, commercial, and industrial usage
*/

-- ---------------------------------------------------------------
-- INITIAL SETUP AND DATA EXPLORATION
-- ---------------------------------------------------------------

USE electricity; -- Set database context

-- Temporarily disable safe update restriction for bulk updates
SET SQL_SAFE_UPDATES = 0;

-- Clean column name with special characters (original UTF-8 BOM issue)
ALTER TABLE Saudielectricity
CHANGE COLUMN ï»؟Megawatts Mega_Watt INT;

-- Basic data exploration
SELECT MAX(Year) AS END_YEAR,      -- Latest year in dataset (2020)
       MIN(Year) AS START_YEAR      -- Earliest year in dataset (1990)
FROM Saudielectricity;

-- Find consumption extremes
SELECT MAX(Mega_Watt) AS top_consumption,    -- Peak consumption record
       MIN(Mega_Watt) AS smallest_consumption -- Minimum consumption record
FROM Saudielectricity;

-- ---------------------------------------------------------------
-- CONSUMPTION AGGREGATION QUERIES
-- ---------------------------------------------------------------

-- Total consumption by category (Residential/Commercial/Industrial)
SELECT `Consumption Type`, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT 
FROM Saudielectricity
GROUP BY `Consumption Type`
ORDER BY TOTAL_MEGA_WATT DESC;

-- Regional consumption analysis
SELECT Subregion, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT 
FROM Saudielectricity
GROUP BY Subregion
ORDER BY TOTAL_MEGA_WATT DESC;

-- Annual consumption totals
SELECT Year, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT 
FROM Saudielectricity
GROUP BY Year
ORDER BY TOTAL_MEGA_WATT DESC;

-- ---------------------------------------------------------------
-- TEMPORAL TREND ANALYSIS
-- ---------------------------------------------------------------

-- Regional consumption trends over time
SELECT Subregion, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       Year
FROM Saudielectricity
GROUP BY Subregion, Year
ORDER BY TOTAL_MEGA_WATT DESC;

-- Consumption type trends over time
SELECT `Consumption Type`, 
       SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       Year
FROM Saudielectricity
GROUP BY `Consumption Type`, Year
ORDER BY TOTAL_MEGA_WATT DESC;

-- Comprehensive annual consumption trends
SELECT SUM(Mega_Watt) AS TOTAL_MEGA_WATT,
       Year
FROM Saudielectricity
GROUP BY Year
ORDER BY TOTAL_MEGA_WATT DESC;