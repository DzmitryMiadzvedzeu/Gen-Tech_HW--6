-- Вывести заказы со стоимостью от 
-- 5000 EUR (проекция: номер_заказа, стоимость_заказа)
SELECT
    OrderDetails.OrderID,
    SUM(Price * Quantity) AS Order_Price
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID
HAVING Order_Price >= 5000
ORDER BY Order_Price ASC