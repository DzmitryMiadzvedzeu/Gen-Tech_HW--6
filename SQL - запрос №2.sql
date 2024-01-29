-- 2.	Вывести страны, в которые было отправлено 3 и более заказов
SELECT
    Customers.Country,
    COUNT(OrderID) AS Count_Of_Orders
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Country
HAVING Count_Of_Orders >= 3
ORDER BY Count_Of_Orders DESC