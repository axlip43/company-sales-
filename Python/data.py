import pandas as pd
import mysql.connector
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="company database"
)
query1 = """
SELECT SUM(od.product_quantity * p.product_price) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;
"""
df_q1 = pd.read_sql(query1, conn)
query2 = """
SELECT p.product_name, SUM(od.product_quantity) AS units_sold
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC;
"""
df_q2 = pd.read_sql(query2, conn)
query3 = """
SELECT c.city,
       SUM(p.product_price * od.product_quantity) AS total_revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;
"""
df_q3 = pd.read_sql(query3, conn)
query4 = """
SELECT e.employee_name,
       SUM(od.product_quantity * p.product_price) AS revenue
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY e.employee_name
ORDER BY revenue DESC;
"""
df_q4 = pd.read_sql(query4, conn)
query5 = """
SELECT SUM(od.product_quantity * p.product_price) / COUNT(DISTINCT o.order_id) AS average_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
"""
df_q5 = pd.read_sql(query5, conn)
query6 = """
SELECT e.employee_name,
       COUNT(o.order_id) AS orders
FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
GROUP BY e.employee_name
ORDER BY orders DESC;"""
df_q6 = pd.read_sql(query6, conn)
query7 = """
SELECT COUNT(*) AS total_orders
FROM orders;
"""
df_q7 = pd.read_sql(query7, conn)
query8 = """
SELECT p.product_category,
       SUM(od.product_quantity * p.product_price) AS category_revenue
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_category
ORDER BY category_revenue DESC;
"""
df_q8 = pd.read_sql(query8, conn)
query9 = """
SELECT e.department,
       SUM(od.product_quantity * p.product_price) AS department_revenue
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY e.department
ORDER BY department_revenue DESC;
"""
df_q9 = pd.read_sql(query9, conn)
