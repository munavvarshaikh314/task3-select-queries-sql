SELECT *from MenuItem; --all data from MenuItem

SELECT name, city FROM Customer;

SELECT * FROM Restaurant WHERE city='delhi';

SELECT * FROM Customer WHERE city='mumbai' AND email IS NULL;

SELECT * FROM MenuItem WHERE price<150 OR name LIKE '%Burger';

SELECT * FROM Customer WHERE name LIKE 'A%';

SELECT * FROM MenuItem WHERE price BETWEEN 100 AND 200;

SELECT * FROM MenuItem ORDER BY price;

SELECT * FROM MenuItem ORDER BY price DESC;

SELECT * FROM MenuItem ORDER BY price DESC LIMIT 3;

-- this is combines example

SELECT name, price FROM MenuItem
WHERE restaurant_id=3 AND name LIKE 'Veg%'
ORDER BY price DESC
LIMIT 3;