-- Store information (manager, store hours, address)
SELECT 
    s.StoreID, 
    s.Name AS StoreName, 
    s.OperatingHours, 
    s.StoreManager, 
    a.Street, 
    a.City, 
    a.State, 
    a.ZipCode
FROM 
    StoreLocations s
JOIN 
    Addresses a ON s.AddressID = a.AddressID;
