-- Join customer and loyalty program
SELECT 
    c.CustomerID, 
    c.Name AS CustomerName, 
    c.ContactDetails, 
    c.AddressID,
    lp.ProgramName, 
    lp.Description AS ProgramDescription, 
    lp.DiscountRate
FROM 
    Customers c
LEFT JOIN 
    LoyaltyProgram lp ON c.LoyaltyProgramID = lp.LoyaltyProgramID;


