-- join customer with order info and shipping info
SELECT 
    o.OrderID, 
    c.Name AS CustomerName, 
    o.OrderDate, 
    a.Street AS ShippingStreet, 
    a.City AS ShippingCity, 
    a.State AS ShippingState, 
    a.ZipCode AS ShippingZipCode, 
    o.PaymentDetails, 
    o.OrderStatus
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
JOIN 
    Addresses a ON o.ShippingAddressID = a.AddressID;
