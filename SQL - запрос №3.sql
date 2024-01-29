-- Вывести ТОП-10 самых продаваемых товаров 
-- проекция: название_товара, ко_во_проданных_единиц
SELECT
Products.ProductName,
SUM(OrderDetails.Quantity) AS Total
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY Total DESC
LIMIT 10