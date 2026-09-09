-- SESSION 5 - DISTINCT, ORDER BY, LIMITTopics:DISTINCTSorting (ASC, DESC)Limiting rowsDemo:Top 10 highest selling products.
-- Tasks
-- 1.Write an SQL query using the DISTINCT keyword to find all unique payment methods used in the orders table of a food delivery app database.
-- 2.Query the users table to list all cities where users have registered, but display each city only once and sort the result in alphabetical order (A-Z).
-- 3.Write an SQL query to select the top 5 most recent movie bookings from the bookings table, ordered by booking_date in descending order.
-- 4.From a products table containing Flipkart-style product data (id, name, category, sold_count), write an SQL query to retrieve the 10 products with the highest sold_count, displaying only product name and sold_count, sorted from highest to lowest.<br><br><em><strong>Hint:</strong> Use ORDER BY and LIMIT together to achieve this.</em>

use sql_assingment;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    restaurant_name VARCHAR(50),
    payment_method VARCHAR(20),
    total_amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, customer_name, restaurant_name, payment_method, total_amount)
VALUES
(1, 'Amit', 'Pizza Hut', 'UPI', 450.00),
(2, 'Neha', 'Dominos', 'Cash', 320.00),
(3, 'Rahul', 'McDonalds', 'Card', 280.00),
(4, 'Priya', 'Subway', 'UPI', 190.00),
(5, 'Karan', 'Burger King', 'Wallet', 350.00),
(6, 'Riya', 'KFC', 'Cash', 410.00),
(7, 'Ankit', 'Pizza Hut', 'Card', 520.00),
(8, 'Sneha', 'Dominos', 'UPI', 260.00),
(9, 'Vikram', 'Subway', 'Wallet', 180.00),
(10, 'Pooja', 'McDonalds', 'Cash', 295.00);

-- 1.Write an SQL query using the DISTINCT keyword to find all unique payment methods used in the orders table of a food delivery app database.

select distinct(payment_method) from orders;

-- 2.Query the users table to list all cities where users have registered, but display each city only once and sort the result in alphabetical order (A-Z).

select distinct(city) from users
order by city;

-- 3.Write an SQL query to select the top 5 most recent movie bookings from the bookings table, ordered by booking_date in descending order.

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    movie_name VARCHAR(100),
    booking_date DATE,
    seats INT,
    ticket_price DECIMAL(10,2)
);

INSERT INTO bookings (booking_id, customer_name, movie_name, booking_date, seats, ticket_price)
VALUES
(1, 'Amit', 'Avengers: Endgame', '2026-08-20', 2, 600.00),
(2, 'Neha', 'Pushpa 2', '2026-08-25', 3, 900.00),
(3, 'Rahul', 'Jawan', '2026-08-28', 1, 300.00),
(4, 'Priya', 'KGF Chapter 2', '2026-08-30', 4, 1200.00),
(5, 'Karan', 'Interstellar', '2026-09-01', 2, 700.00),
(6, 'Riya', 'The Batman', '2026-09-03', 1, 350.00),
(7, 'Ankit', 'Dune: Part Two', '2026-09-05', 2, 800.00),
(8, 'Sneha', 'Oppenheimer', '2026-09-06', 3, 1050.00),
(9, 'Vikram', 'Spider-Man: No Way Home', '2026-09-07', 2, 750.00),
(10, 'Pooja', 'The Dark Knight', '2026-09-08', 1, 400.00);

select * from bookings
order by booking_date desc
limit 5;

-- 4.From a products table containing Flipkart-style product data (id, name, category, sold_count), write an SQL query to retrieve the 10 products with the highest sold_count, displaying only product name and sold_count, sorted from highest to lowest.<br><br><em><strong>Hint:</strong> Use ORDER BY and LIMIT together to achieve this.</em>

ALTER TABLE products
ADD sold_count INT;

update products set sold_count = 120 where product_id = 1; 
update products set sold_count = 85 where product_id = 2; 
update products set sold_count = 250 where product_id = 3; 
update products set sold_count = 60 where product_id = 4; 
update products set sold_count = 175 where product_id = 5; 
update products set sold_count = 95 where product_id = 6; 
update products set sold_count = 210 where product_id = 7; 
update products set sold_count = 160 where product_id = 8; 
update products set sold_count = 70 where product_id = 9; 

insert into products (product_id, product_name, category, price, stock_quantity, brand, sold_count)
values
(10, 'Laptop', 'Electronics', 75000.00, 28, 'ASUS', 140);


select product_name, sold_count from products
order by sold_count desc
limit 10;

