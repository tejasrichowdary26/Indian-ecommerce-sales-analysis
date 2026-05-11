--Query 1:Total Sales by State 

SELECT O."State",
SUM(d."Amount") AS Total_sales
FROM "List of orders" o
JOIN "Order Details" d ON o."Order ID"=d."Order ID"
GROUP BY o."State"
ORDER BY Total_Sales DESC;

--Query 2: Sales by Category

SELECT d."Category",
SUM(d."Amount") AS Total_Sales,
SUM(d."Profit") AS Total_Profit
FROM "Order Details" d
GROUP BY d."Category"
ORDER BY Total_sales DESC;

--Query 3: Monthly Sales Trend

SELECT o."Order Date",
SUM(d."Amount") AS Monthly_Sales
FROM "List of Orders" o
JOIN "order Details" d ON o."Order ID"= d."Order ID"
GROUP BY o."Order Date"
ORDER BY o."Order Date";

--Query 4:Top 10 Customers by Sales

SELECT o."CustomerName",
SUM(d."Amount") AS Total_Spent
FROM "List of Orders" o
JOIN "Order Details" d ON o."Order ID"= d."Order ID"
GROUP BY o."CustomerName"
ORDER BY Total_Spent DESC
LIMIT 10;

--Query 5:Profit by Sub-category

SELECT d."Sub-Category",
SUM(d."Amount") AS Total_Sales,
SUM(d."Profit") AS Total_Profit,
ROUND(SUM(d."Profit")*100.0/SUM(d."Amount"),1) AS Profit_Margin
FROM "Order Details" d
GROUP BY d."Sub-category"
ORDER BY Total_Profit DESC;
