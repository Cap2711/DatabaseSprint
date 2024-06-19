-- How many of each product is sold
SELECT 
    p.ProductID, 
    p.Name AS ProductName, 
    SUM(od.Quantity) AS TotalQuantitySold
FROM 
    Products p
JOIN 
    OrderDetails od ON p.ProductID = od.ProductID
GROUP BY 
    p.ProductID, p.Name;
