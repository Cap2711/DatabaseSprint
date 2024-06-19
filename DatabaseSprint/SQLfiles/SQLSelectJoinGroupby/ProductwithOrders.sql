-- show product information with order details
SELECT 
    od.OrderDetailsID, 
    od.OrderID, 
    p.Name AS ProductName, 
    p.Description AS ProductDescription, 
    od.Quantity, 
    od.Price
FROM 
    OrderDetails od
JOIN 
    Products p ON od.ProductID = p.ProductID;
