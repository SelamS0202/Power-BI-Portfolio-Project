Create View dashboard_sales_view as(
SELECT 
c.customer_id
,c.customer_name
,c.contact_lastname
,c.contact_firstname
,c.phone
,c.country_code
,c.country
,c.city
,c.deal_size
,c.state
,c.territory
,p.product_code
,p.product_line
,d.month
,d.order_date
,d.qtr
,d.year
,s.order_number
,s.order_line_number
,s.quantity
,s.unit_price
,s.sales
FROM [dbo].[FactSales] as s  ----sales data 
INNER JOIN [dbo].[DimCustomer] as c --- customer data
on s.[customer_id] = c.[customer_id]
INNER JOIN [dbo].[DimProduct] as p   --- product data
on s.[product_code] = p.[product_code]
INNER JOIN [dbo].[DimDate] as d     --- date data
on s.[date_id] = d.[date_id]
)