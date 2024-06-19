-- employees and their stores
SELECT 
    e.EmployeeID, 
    e.Name AS EmployeeName, 
    e.Position, 
    s.Name AS StoreName, 
    s.AddressID, 
    a.Street AS StoreStreet, 
    a.City AS StoreCity, 
    a.State AS StoreState, 
    a.ZipCode AS StoreZipCode
FROM 
    Employees e
JOIN 
    StoreLocations s ON e.StoreID = s.StoreID
JOIN 
    Addresses a ON s.AddressID = a.AddressID;
