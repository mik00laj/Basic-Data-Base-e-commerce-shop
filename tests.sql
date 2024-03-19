-- Złączenie INNER JOIN i filtrowanie danych
SELECT o.order_id, c.name, oi.product_id, oi.quantity, oi.price
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed';

-- Złączenie LEFT JOIN i grupowanie danych
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;