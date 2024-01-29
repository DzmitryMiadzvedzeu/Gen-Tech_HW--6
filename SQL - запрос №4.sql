-- Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)
SELECT
Orders.EmployeeID,
Employees.LastName,
Employees.FirstName,
SUM(Products.Price * OrderDetails.Quantity) * 0.05 AS Salary
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Employees.EmployeeID
 
-- в процессе написания глючила база, но танцы с бубном
-- и декомпозиция помогли, результат прилагаю скриншотом в 
-- репозитории