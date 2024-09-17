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