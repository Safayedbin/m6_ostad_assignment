
/*TASK 1*/

SELECT customer.customer_ID, name, email, location, total_number_of_order
FROM customer 
JOIN (
    SELECT customer_ID,count(*) as total_number_of_order 
    FROM orders 
    GROUP BY customer_ID) 
as table2 ON customer.Customer_ID=table2.customer_ID


/*TASK 2*/

SELECT p.name , quantity, unit_price as Total_amount
FROM order_items as ot 
JOIN product as p ON ot.product_ID = p.product_ID
ORDER BY ot.order_ID ASC



/*TASK 3*/

SELECT  cat.name, sum(ord.total_amount) as total_Revenue
FROM orders as ord
JOIN order_items as ot ON ord.order_ID= ot.order_ID
JOIN product as p ON ot.product_ID = p.product_ID
JOIN catagories as cat ON p.category_ID = cat.category_ID
GROUP BY p.category_ID
ORDER BY  total_Revenue DESC



/*TASK 4*/

 SELECT c.name ,SUM(ord.total_amount) as total_purchase
 FROM orders as ord
 JOIN customer as c ON ord.customer_ID = c.Customer_ID 
 GROUP BY ord.customer_ID
 ORDER BY total_purchase DESC
 LIMIT 5

