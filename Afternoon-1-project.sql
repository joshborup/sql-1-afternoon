DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Orders;

CREATE TABLE Person(
id SERIAL PRIMARY KEY,
name TEXT,
age INTEGER,
height INTEGER,
city TEXT,
favoriteColor TEXT
);

INSERT INTO Person
(name, age, height, city, favoriteColor)
VALUES
('Josh', 30, 170, 'mesa', 'green')
,('Annie', 26, 140, 'mesa', 'blue')
,('Jeff', 34, 160, 'phoenix', 'blue')
,('Jake', 30, 190, 'queen creek', 'red')
,('Lora', 63, 135, 'mesa', 'blue')
;

SELECT height FROM Person
ORDER BY height DESC;

SELECT * FROM Person
ORDER BY age DESC;

SELECT * FROM Person
WHERE age > 20;

SELECT * FROM Person
WHERE age = 18;

SELECT * FROM Person
WHERE age < 18 OR age > 30;

SELECT * FROM Person
WHERE age != 27;

SELECT * FROM Person
WHERE favoriteColor != 'red';

SELECT * FROM Person
WHERE favoriteColor != 'red' AND favoriteColor != 'blue';

SELECT * FROM Person
WHERE favoriteColor = 'orange' OR favoriteColor = 'green';

SELECT * FROM Person
WHERE favoriteColor IN ('orange', 'green', 'blue');


SELECT * FROM Person
WHERE favoriteColor IN ('yellow', 'purple');

CREATE TABLE Orders(
ordernum SERIAL PRIMARY KEY,
personID INT,
productName TEXT,
productPrice INT,
quantity INT
);

INSERT INTO Orders
(personID, productName, productPrice, quantity)
VALUES
(1, 'cheerios', 12, 15)
,(1, 'apple jacks', 3, 38)
,(1, 'lucky charms', 4, 3)
,(2, 'beets', 2, 44)
,(2, 'battlestar galactica', 3, 8)
;

SELECT * FROM Orders;

SELECT sum(quantity) FROM Orders;

SELECT sum(productPrice) FROM Orders;

SELECT sum(productPrice) FROM Orders
WHERE personID = 1;

INSERT INTO Artist
(Name)
VALUES
('David Bowie')
,('Chirs Martin')
,('Kendrick Lamar');

SELECT * FROM Artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM Artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM Artist
WHERE name LIKE 'Black%';

SELECT * FROM Artist
WHERE name LIKE '%Black%';


SELECT firstname, lastname, city FROM Employee
WHERE city = 'Calgary';

SELECT MAX(birthdate), firstname, lastname FROM Employee;

SELECT MIN(birthdate), firstname, lastname FROM Employee;

SELECT * FROM Employee
WHERE Reportsto = 2;

SELECT count(city) FROM Employee
WHERE city = 'Lethbridge';

SELECT count(BillingCountry) FROM Invoice
WHERE BillingCountry = 'USA';

SELECT MAX(Total) FROM Invoice;

SELECT MIN(Total) FROM Invoice;

SELECT * FROM Invoice
WHERE Total > 5;

SELECT count(*) FROM Invoice
WHERE Total > 5;

SELECT count(*) FROM Invoice
WHERE Billingstate IN ('AZ', 'TX', 'CA');

SELECT AVG(TOTAL) FROM Invoice;

SELECT SUM(TOTAL) FROM Invoice;
