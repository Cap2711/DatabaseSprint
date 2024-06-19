-- supplier with products
SELECT 
    p.ProductID, 
    p.Name AS ProductName, 
    p.Description, 
    p.Price, 
    p.Size, 
    p.Color, 
    p.Category, 
    s.Name AS SupplierName, 
    s.ContactDetails
FROM 
    Products p
JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID;
