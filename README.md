# TASK-3-ELEVATE-LABS
FOURTH DAY - SQL COMMANDS UTILIZATION

INTERVIEW QUESTIONS:

1. What is the difference between WHERE and HAVING?

WHERE filters rows before grouping; HAVING filters groups after GROUP BY.

2. What are the different types of joins?

INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSS JOIN, and SELF JOIN.

3. How do you calculate average revenue per user in SQL?

SELECT SUM(revenue)/COUNT(DISTINCT user_id) AS avg_revenue_per_user FROM table_name;

4. What are subqueries?

Queries nested inside another query, often used for filtering or computing values.

5. How do you optimize a SQL query?

Use proper indexes, avoid SELECT *, limit subqueries, analyze execution plans, and filter early.

6. What is a view in SQL?

A virtual table based on the result of a query, stored for reuse.

7. How would you handle null values in SQL?

Use IS NULL/IS NOT NULL for checks, and COALESCE() or IFNULL() to replace nulls.
