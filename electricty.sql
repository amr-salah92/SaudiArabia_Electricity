USE electricity ;

SET SQL_SAFE_UPDATES = 0;

SELECT *
FROM Saudielectricity ;

ALTER TABLE Saudielectricity
CHANGE COLUMN  ï»؟Megawatts Mega_Watt INT;

-- START AND END YEARS 
SELECT MAX(Year) AS END_YEAR,
MIN(Year) AS START_YEAR
FROM Saudielectricity;

-- min AND max consumption 
SELECT MAX(Mega_Watt) AS top_consumption,
MIN(Mega_Watt) AS smallest_consumption
FROM Saudielectricity;



-- total consumption types
SELECT 	`Consumption Type` , 
       SUM(Mega_Watt) AS TOTAL_MGA_WT 
FROM Saudielectricity
GROUP BY `Consumption Type`
ORDER BY TOTAL_MGA_WT Desc;

-- subregion consumption
SELECT Subregion , 
       SUM(Mega_Watt) AS TOTAL_MGA_WT 
FROM Saudielectricity
GROUP BY Subregion 
ORDER BY TOTAL_MGA_WT Desc;

-- consumption by years
SELECT Year , 
       SUM(Mega_Watt) AS TOTAL_MGA_WT 
FROM Saudielectricity
GROUP BY Year 
ORDER BY TOTAL_MGA_WT Desc;

-- Top Subregion Consumption (Consumption_Trend)
SELECT Subregion , 
       SUM(Mega_Watt) AS TOTAL_MGA_WT ,
       Year
FROM Saudielectricity
GROUP BY Subregion , Year
ORDER BY TOTAL_MGA_WT Desc;

-- Top Consumption Type (Consumption_Trend)
SELECT `Consumption Type` , 
       SUM(Mega_Watt) AS TOTAL_MGA_WT ,
       Year
FROM Saudielectricity
GROUP BY `Consumption Type` , Year
ORDER BY TOTAL_MGA_WT Desc;

-- Top Year Consumption  (Consumption_Trend)
SELECT 
       SUM(Mega_Watt) AS TOTAL_MGA_WT ,
       Year
FROM Saudielectricity
GROUP BY  Year
ORDER BY TOTAL_MGA_WT Desc;