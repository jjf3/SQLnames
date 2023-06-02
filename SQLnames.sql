# Retrieve the names and email addresses of all customers who have made a purchase in the last month

SELECT name, email
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  WHERE order_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
);
