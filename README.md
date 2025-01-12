<h2>Objectives</h2>
<p>The main goal is to derive insights from Walmart's sales data by exploring various factors that influence sales across different branches.</p>

<h2>Dataset Description</h2>
<p>The dataset includes sales transactions from three Walmart branches located in Mandalay, Yangon, and Naypyitaw. It contains 17 columns and 1000 rows:</p>
<table>
    <tr>
        <th>Column</th>
        <th>Description</th>
        <th>Data Type</th>
    </tr>
    <tr>
        <td>invoice_id</td>
        <td>Invoice of the sales made</td>
        <td>VARCHAR(30)</td>
    </tr>
    <tr>
        <td>branch</td>
        <td>Branch at which sales were made</td>
        <td>VARCHAR(5)</td>
    </tr>
    <tr>
        <td>city</td>
        <td>The location of the branch</td>
        <td>VARCHAR(30)</td>
    </tr>
    <tr>
        <td>customer_type</td>
        <td>The type of the customer</td>
        <td>VARCHAR(30)</td>
    </tr>
    <tr>
        <td>gender</td>
        <td>Gender of the customer making purchase</td>
        <td>VARCHAR(10)</td>
    </tr>
    <tr>
        <td>product_line</td>
        <td>Product line of the product sold</td>
        <td>VARCHAR(100)</td>
    </tr>
    <tr>
        <td>unit_price</td>
        <td>The price of each product</td>
        <td>DECIMAL(10, 2)</td>
    </tr>
    <tr>
        <td>quantity</td>
        <td>The amount of the product sold</td>
        <td>INT</td>
    </tr>
    <tr>
        <td>VAT</td>
        <td>The amount of tax on the purchase</td>
        <td>FLOAT(6, 4)</td>
    </tr>
    <tr>
        <td>total</td>
        <td>The total cost of the purchase</td>
        <td>DECIMAL(12, 4)</td>
    </tr>
    <tr>
        <td>date</td>
        <td>The date on which the purchase was made</td>
        <td>DATETIME</td>
    </tr>
    <tr>
        <td>time</td>
        <td>The time at which the purchase was made</td>
        <td>TIME</td>
    </tr>
    <tr>
        <td>payment</td>
        <td>The total amount paid</td>
        <td>DECIMAL(10, 2)</td>
    </tr>
    <tr>
        <td>cogs</td>
        <td>Cost Of Goods sold</td>
        <td>DECIMAL(10, 2)</td>
    </tr>
    <tr>
        <td>gross_margin_pct</td>
        <td>Gross margin percentage</td>
        <td>FLOAT(11, 9)</td>
    </tr>
    <tr>
        <td>gross_income</td>
        <td>Gross Income</td>
        <td>DECIMAL(12, 4)</td>
    </tr>
    <tr>
        <td>rating</td>
        <td>Rating</td>
        <td>FLOAT(2, 1)</td>
    </tr>
</table>

<h2>Analysis Categories</h2>
<h3>1. Product Analysis</h3>
<ul>
    <li>Analyze different product lines to determine top performers and areas for improvement.</li>
</ul>

<h3>2. Sales Analysis</h3>
<ul>
    <li>Evaluate sales trends to assess the effectiveness of sales strategies and identify potential modifications to increase sales.</li>
</ul>

<h3>3. Customer Analysis</h3>
<ul>
    <li>Identify customer segments, understand purchasing trends, and evaluate the profitability of each segment.</li>
</ul>

<h2>Methodology</h2>
<h3>1. Data Wrangling</h3>
<ul>
    <li>Inspect data for NULL or missing values and implement strategies for handling them.</li>
    <li>Build a database, create tables, and insert data.</li>
    <li>Ensure fields are specified as NOT NULL to filter out null values.</li>
</ul>

<h3>2. Feature Engineering</h3>
<ul>
    <li>Add <code>time_of_day</code> column to categorize sales into Morning, Afternoon, and Evening.</li>
    <li>Add <code>day_name</code> column to extract the day of the week from transaction dates.</li>
    <li>Add <code>month_name</code> column to extract the month from transaction dates.</li>
</ul>

<h3>3. Exploratory Data Analysis (EDA)</h3>
<ul>
    <li>Conduct EDA to address project questions and objectives.</li>
</ul>

<h2>Key Business Questions</h2>

<h3>General Questions</h3>
<ul>
    <li>How many distinct cities are present in the dataset?</li>
    <li>In which city is each branch located?</li>
</ul>

<h3>Product Analysis Questions</h3>
<ul>
    <li>How many distinct product lines are there?</li>
    <li>What is the most common payment method?</li>
    <li>Which is the best-selling product line?</li>
    <li>What is the total revenue by month?</li>
    <li>Which month recorded the highest Cost of Goods Sold (COGS)?</li>
    <li>Which product line generated the highest revenue?</li>
    <li>Which city has the highest revenue?</li>
    <li>Which product line incurred the highest VAT?</li>
    <li>Categorize product lines as 'Good' or 'Bad' based on sales above average.</li>
    <li>Which branch sold more products than the average?</li>
    <li>What is the most common product line by gender?</li>
    <li>What is the average rating of each product line?</li>
</ul>

<h3>Sales Analysis Questions</h3>
<ul>
    <li>Number of sales made at different times of the day per weekday.</li>
    <li>Identify the customer type generating the highest revenue.</li>
    <li>Which city has the largest tax percent/VAT?</li>
    <li>Which customer type pays the most VAT?</li>
</ul>

<h3>Customer Analysis Questions</h3>
<ul>
    <li>How many unique customer types are there?</li>
    <li>How many unique payment methods are there?</li>
    <li>Which is the most common customer type?</li>
    <li>Which customer type buys the most?</li>
    <li>What is the gender distribution of customers?</li>
    <li>Gender distribution per branch.</li>
    <li>Which time of the day receives the most customer ratings?</li>
    <li>Time of day with most ratings per branch.</li>
    <li>Which day of the week has the best average ratings?</li>
    <li>Best average ratings per branch by day of the week.</li>
</ul>

<h2>Conclusion</h2>
<p>This project provides insights into Walmart's sales data, helping to optimize sales strategies and improve understanding of customer behavior. Through comprehensive analysis, actionable recommendations can be derived to enhance overall business performance.</p>
