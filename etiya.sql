1. SELECT * 
   FROM Products 
   WHERE SupplierID BETWEEN 1 AND 5;
2. SELECT * 
   FROM Products 
   WHERE SupplierID IN (1, 2, 4, 5);
3. SELECT * 
   FROM Products 
   WHERE ProductName IN ('Chang', 'Aniseed Syrup');
4. SELECT * 
   FROM Products 
   WHERE SupplierID = 3 OR UnitPrice > 10;

5.SELECT ProductName, UnitPrice 
  FROM Products;

6.SELECT ProductName
   FROM Products 
   WHERE UPPER(ProductName) LIKE '%C%';

7.SELECT ProductName
  FROM Products
  WHERE ProductName LIKE 'n_';

8.SELECT * 
 FROM Products 
 WHERE UnitsInStock > 50;

9. SELECT * 
   FROM Products 
   WHERE UnitPrice = (SELECT MAX(UnitPrice) AS MaxPrice FROM Products)
      OR UnitPrice = (SELECT MIN(UnitPrice) AS MinPrice FROM Products);

10. SELECT * 
    FROM Products 
    WHERE ProductName LIKE '%Spice%';

------------------WORKSHOP2---------------------------------------------
1. SELECT CategoryID, COUNT(*) AS ProductCount
   FROM Products
   GROUP BY CategoryID;

2. SELECT * 
   FROM Products
   ORDER BY UnitPrice DESC
   LIMIT 5;

3.SELECT SupplierID, AVG(UnitPrice) AS AveragePrice
  FROM Products
  GROUP BY SupplierID;

4. SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
   FROM Products
   WHERE UnitPrice > 100
   GROUP BY CategoryID;

5. SELECT * 
   FROM [Order Details]
   WHERE (UnitPrice * Quantity) > 1000;

6. SELECT * 
   FROM Orders
   WHERE ShippedDate IS NOT NULL
   ORDER BY ShippedDate DESC
   LIMIT 10;

7.SELECT AVG(UnitPrice) AS AveragePrice
  FROM Products;

8.SELECT SUM(UnitsInStock) AS TotalStock
  FROM Products
  WHERE UnitPrice > 50;

9.SELECT MIN(OrderDate) AS OldestOrderDate
  FROM Orders;

10. SELECT EmployeeID, 
       FirstName, 
       LastName, 
       HireDate,
       FLOOR((julianday('now') - julianday(HireDate)) / 365.25) AS YearsEmployed
   FROM Employees;


11. SELECT OrderID, 
    ROUND(SUM(UnitPrice * Quantity), 0) AS RoundedTotalPrice
    FROM [Order Details]
    GROUP BY OrderID;

12. SELECT COUNT(*) AS NumberOfProductsInStock
    FROM Products
    WHERE UnitsInStock > 0;

13.SELECT MIN(UnitPrice) AS LowestPrice, 
   MAX(UnitPrice) AS HighestPrice
   FROM Products;

14. SELECT strftime('%Y', OrderDate) AS OrderYear, 
       COUNT(*) AS NumberOfOrders
    FROM Orders
    GROUP BY strftime('%Y', OrderDate)
    ORDER BY OrderYear;

15. SELECT FirstName || ' ' || LastName AS FullName
    FROM Employees;

16. SELECT City, LENGTH(City) AS CityLength
    FROM Customers;

17. SELECT ProductID, 
       ProductName, 
       ROUND(UnitPrice, 2) AS RoundedPrice
    FROM Products;

18. SELECT COUNT(*) AS TotalOrders
    FROM Orders;

19. SELECT CategoryID, 
       AVG(UnitPrice) AS AveragePrice
    FROM Products
    GROUP BY CategoryID;

20. SELECT 
    (COUNT(CASE WHEN ShippedDate IS NULL THEN 1 END) * 100.0 / COUNT(*)) AS PercentageUnshipped
    FROM Orders;

21.SELECT ProductName, 
       UnitPrice AS OriginalPrice, 
       ROUND(UnitPrice * 1.10, 2) AS PriceIncreased
   FROM Products
   ORDER BY UnitPrice DESC
   LIMIT 1;

22. SELECT ProductName, 
    substr(ProductName, 1, 3) AS FirstThreeChars
    FROM Products;

23.SELECT strftime('%Y', OrderDate) AS OrderYear, 
       strftime('%m', OrderDate) AS OrderMonth, 
       COUNT(*) AS NumberOfOrders
   FROM Orders
   GROUP BY strftime('%Y', OrderDate), strftime('%m', OrderDate)
   ORDER BY OrderYear, OrderMonth;

24. SELECT OrderID, 
       ROUND(SUM(UnitPrice * Quantity), 2) AS TotalOrderValue
    FROM [Order Details]
    GROUP BY OrderID;

25. SELECT ROUND(SUM(UnitPrice), 2) AS TotalStockValue
    FROM Products
    WHERE UnitsInStock = 0;


















