create database walmart_sales_data;
use  walmart_sales_data;

SELECT 
    *
FROM
    walmartsalesdata;
-- ----------------------------------------------- Adding columns feature engineering
-- Momth_name

SELECT date,
MONTHNAME(date) AS month_name
FROM walmartsalesdata;

ALTER TABLE walmartsalesdata
ADD COLUMN month_name VARCHAR(10);

UPDATE walmartsalesdata
SET month_name = MONTHNAME(date);

-- Day_name
ALTER TABLE walmartsalesdata 
ADD COLUMN day_name VARCHAR(10);

SELECT date,
DAYNAME(date) AS day_name
FROM walmartsalesdata;

UPDATE walmartsalesdata
SET day_name = DAYNAME(date);


-- Time_of_day

ALTER TABLE walmartsalesdata 
ADD COLUMN time_of_day VARCHAR(20);

SELECT time,
(CASE 
	WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
	WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
	ELSE "Evening" 
END) AS time_of_day
FROM walmartsalesdata;

UPDATE walmartsalesdata
SET time_of_day = (
	CASE 
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
		WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
		ELSE "Evening" 
	END
);

