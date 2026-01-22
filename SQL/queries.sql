USE company_database
/*1-How much revenue do we make?*/
SELECT SUM(od.product_quantity * p.product_price) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;
/*2-What are the best-selling products?*/
SELECT p.product_name, SUM(od.product_quantity) AS units_sold
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC;
/*3-Which city generate the most revenue?*/
SELECT c.city, SUM(p.product_price * od.product_quantity) AS total_revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;
/*4-Which employees generate the most revenue?*/
SELECT e.employee_name, SUM(od.product_quantity * p.product_price) AS revenue
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY e.employee_name
ORDER BY revenue DESC;
/*5-What is the average order value?*/
SELECT SUM(od.product_quantity * p.product_price) / COUNT(DISTINCT o.order_id) AS average_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
/*6-How many orders does each employee handle?*/
SELECT e.employee_name,
       COUNT(o.order_id) AS orders
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_name
ORDER BY orders DESC;
/*7-How many orders has the company processed?*/
SELECT COUNT(*) AS total_orders
FROM orders;
/*8-Which product categories generate the most revenue?*/
SELECT p.product_category, SUM(od.product_quantity * p.product_price) AS category_revenue
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_category
ORDER BY category_revenue DESC;
/*9-Which department performs best in sales?*/
SELECT e.department, SUM(od.product_quantity * p.product_price) AS department_revenue
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY e.department
ORDER BY department_revenue DESC;
