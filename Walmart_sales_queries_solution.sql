-- --------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------GENERIC QUESTIONS---------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------

-- How many distinct cities are present in the dataset?
SELECT 
    COUNT(DISTINCT city) AS cities
FROM
    walmartsalesdata;

-- In which city is each branch situated?
SELECT 
    branch, city
FROM
    walmartsalesdata
GROUP BY 1 , 2;

-- --------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------PRODUCT ANALYSIS---------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------

-- How many distinct product lines are there in the dataset?
SELECT 
    COUNT(DISTINCT Product_line) AS Product_lines
FROM
    walmartsalesdata;

-- What is the most common payment method?
SELECT 
    payment, COUNT(payment) AS Payment_count
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- What is the most selling product line?
SELECT 
    product_line, COUNT(product_line) AS most_selling_product
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- What is the total revenue by month?
SELECT 
    month_name
FROM
    walmartsalesdata;
    
-- Which month recorded the highest Cost of Goods Sold (COGS)?

SELECT 
    month_name, SUM(cogs) AS Highest_cogs
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC;

-- Which product line generated the highest revenue?
SELECT 
    product_line, SUM(total) AS revenue
FROM
    walmartsalesdata
GROUP BY 1 order by 2 desc;

-- Which city has the highest revenue?
SELECT 
    city, SUM(total) AS revenue
FROM
    walmartsalesdata
GROUP BY 1 order by 2 desc limit 1;

-- Which product line incurred the highest VAT?
SELECT 
    product_line, SUM(tax_5_perc) AS VAT
FROM
    walmartsalesdata
GROUP BY 1 order by 2 desc limit 1;

-- Retrieve each product line and add a column product_category, indicating 'Good' or 'Bad,' 
-- based on whether its sales are above the average.

alter table walmartsalesdata
add column product_category varchar(10);

UPDATE walmartsalesdata
JOIN (SELECT AVG(total) AS avg_total FROM walmartsalesdata) AS subquery
SET product_category = 
    CASE
        WHEN total >= subquery.avg_total THEN 'good'
        ELSE 'bad'
    END;


-- Which branch sold more products than average product sold?

SELECT 
    *
FROM
    (SELECT 
        branch,
            SUM(Quantity) AS total_quantity,
            AVG(Quantity) AS avg_qty
    FROM
        walmartsalesdata
    GROUP BY 1) AS a;

SELECT branch, SUM(quantity) AS quantity
FROM walmartsalesdata GROUP BY branch HAVING SUM(quantity) > AVG(quantity) ORDER BY quantity DESC LIMIT 1;

-- What is the most common product line by gender?

SELECT 
    product_line, gender, COUNT(gender) AS Customers
FROM
    walmartsalesdata
GROUP BY 1 , 2
ORDER BY 3 DESC;

-- What is the average rating of each product line?
SELECT 
    product_line, ROUND(AVG(rating), 2) AS AVG_rating
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC;

-- --------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------SALES ANALYSIS---------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------

-- Number of sales made in each time of the day per weekday

SELECT 
    day_name, time_of_day, COUNT(invoice_id) AS Sales
FROM
    walmartsalesdata
GROUP BY 1 , 2
HAVING day_name NOT IN ('Sunday' , 'Saturday') order by 2 asc,3 desc;

-- Identify the customer type that generates the highest revenue.
SELECT 
    customer_type, SUM(total) AS Revenue
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT 
    city, SUM(tax_5_perc) as Total_Vat
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Which customer type pays the most VAT?

SELECT 
    customer_type, SUM(tax_5_perc) AS VAT
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;






-- --------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------CUSTOMER ANALYSIS---------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------

-- How many unique customer types does the data have?
SELECT 
    COUNT(DISTINCT customer_type) AS Unique_customer
FROM
    walmartsalesdata;

-- How many unique payment methods does the data have?
SELECT 
    COUNT(DISTINCT payment) AS Unique_payment_type
FROM
    walmartsalesdata;

-- Which is the most common customer type?
SELECT 
    customer_type, COUNT(customer_type) AS common_customer
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Which customer type buys the most?
SELECT 
    customer_type, SUM(total) AS total_sales
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1 ;

-- What is the gender of most of the customers?
SELECT 
    gender, COUNT(gender) AS Most_buyer
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- What is the gender distribution per branch?
SELECT 
    branch, COUNT(gender) AS gender_count
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC;

-- Which time of the day do customers give most ratings?
SELECT 
    time_of_day, AVG(rating) AS Most_rating
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC;

-- Which time of the day do customers give most ratings per branch?
SELECT 
    branch, time_of_day, round(AVG(rating),2) AS Most_rating
FROM
    walmartsalesdata
GROUP BY 1 , 2
ORDER BY 3 DESC;

-- Which day of the week has the best avg ratings?
SELECT 
    day_name, round(AVG(rating),2) AS AVG_rating
FROM
    walmartsalesdata
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- Which day of the week has the best average ratings per branch?
SELECT 
    day_name, branch, round(AVG(rating),2) AS Best_avg_rating
FROM
    walmartsalesdata
GROUP BY 1 , 2
ORDER BY 3 DESC
LIMIT 1;

