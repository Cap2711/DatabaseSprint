CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY,
    Street VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(20),
    Country VARCHAR(100)
);

CREATE TABLE LoyaltyProgram (
    LoyaltyProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(255),
    Description TEXT,
    DiscountRate DECIMAL(5, 2)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactDetails VARCHAR(255),
    ProductCategories VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10, 2),
    Size VARCHAR(50),
    Color VARCHAR(50),
    Category VARCHAR(100),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE StoreLocations (
    StoreID INT PRIMARY KEY,
    Name VARCHAR(255),
    AddressID INT,
    ContactDetails VARCHAR(255),
    StoreManager VARCHAR(255),
    OperatingHours VARCHAR(100),
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactDetails VARCHAR(255),
    AddressID INT,
    LoyaltyProgramID INT,
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID),
    FOREIGN KEY (LoyaltyProgramID) REFERENCES LoyaltyProgram(LoyaltyProgramID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactInformation VARCHAR(255),
    Position VARCHAR(100),
    StoreID INT,
    FOREIGN KEY (StoreID) REFERENCES StoreLocations(StoreID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ShippingAddressID INT,
    PaymentDetails VARCHAR(255),
    OrderStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ShippingAddressID) REFERENCES Addresses(AddressID)
);

CREATE TABLE OrderDetails (
    OrderDetailsID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
