/*
CREATE TEMPORARY TABLE top10customers
SELECT p.customerNumber, 
       c.customerName, 
       FORMAT(SUM(p.amount),2) total
FROM payments p
INNER JOIN customers c ON c.customerNumber = p.customerNumber
GROUP BY p.customerNumber
ORDER BY total DESC
LIMIT 10;
*/
SELECT * FROM top10customers;
drop temporary table top10customers;