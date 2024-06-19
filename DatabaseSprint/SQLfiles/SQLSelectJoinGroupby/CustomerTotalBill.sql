
-- calculation for the order based on quantity and price for each customer
SELECT 
    o.OrderID, 
    c.Name AS CustomerName, 
    SUM(od.Quantity * od.Price) AS TotalAmount
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID
GROUP BY 
    o.OrderID, c.Name;
