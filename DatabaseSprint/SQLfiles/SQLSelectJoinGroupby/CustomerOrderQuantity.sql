-- customer and the number of orders they have
SELECT 
    c.CustomerID, 
    c.Name AS CustomerName, 
    COUNT(o.OrderID) AS TotalOrders
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, c.Name;
