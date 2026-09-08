-- SESSION2-BasicSELECT&FROMTopicsSELECTcolumn1,column2SELECT*Renamingcolumns(ASkeyword)CommentsinSQLDemoSELECTFROMemployees;
-- Tasks
-- 1.Open your SQL editor and run a query to select all columns from a table named restaurants using SELECT * FROM restaurants;.
-- 2.Write an SQL query to display only the name and rating columns from the table zomato_reviews.
-- 3.Write an SQL query to select the movie_name and release_year columns from a table called movies, but rename movie_name as 'Title' and release_year as 'Year Released' in the output using the AS keyword.
-- 4.In a table called products, write an SQL query that selects all columns and add a comment in your SQL code explaining what the query does.<br><br><em><strong>Hint:</strong> Use -- to write a single-line comment above your query.</em>


-- Task 1.Open your SQL editor and run a query to select all columns from a table named restaurants using SELECT * FROM restaurants;.
create database SQL_Assingment;  

-- create the restaurants table
create table restaurants (
restaurants_id int primary key,
restaurant_name varchar(100),
cuisine varchar(50),
city varchar(50),
rating decimal(2,1),
average_cost int
);

-- Insert sample data
INSERT INTO restaurants (restaurants_id, restaurant_name, cuisine, city, rating, average_cost)
VALUES
(1, 'Spice Villa', 'Indian', 'Ahmedabad', 4.5, 800),
(2, 'Pizza Hub', 'Italian', 'Surat', 4.2, 600),
(3, 'Sushi World', 'Japanese', 'Mumbai', 4.7, 1500),
(4, 'Burger Point', 'Fast Food', 'Vadodara', 4.0, 400),
(5, 'Green Bowl', 'Vegetarian', 'Pune', 4.4, 700);

select * from restaurants;

-- Task 2.Write an SQL query to display only the name and rating columns from the table zomato_reviews.

-- create the zomato_reviews table
create table zomato_reviews (
review_id int primary key,
Name varchar(100),
rating decimal(2,1),
city varchar(50),
cuisine varchar(50),
review_test varchar(225) 
);

-- ALTER TABLE zomato_reviews
-- RENAME COLUMN review_test TO review_text;

-- Insert sample data
INSERT INTO zomato_reviews (review_id, name, rating, city, cuisine, review_text)
VALUES
(1, 'Spice Villa', 4.5, 'Ahmedabad', 'Indian', 'Excellent food and service'),
(2, 'Pizza Hub', 4.2, 'Surat', 'Italian', 'Delicious pizzas'),
(3, 'Sushi World', 4.8, 'Mumbai', 'Japanese', 'Fresh sushi and great ambience'),
(4, 'Burger Point', 3.9, 'Vadodara', 'Fast Food', 'Affordable and tasty'),
(5, 'Green Bowl', 4.4, 'Pune', 'Vegetarian', 'Healthy and fresh meals');

Select Name, rating from zomato_reviews;

-- 3.Write an SQL query to select the movie_name and release_year columns from a table called movies, but rename movie_name as 'Title' and release_year as 'Year Released' in the output using the AS keyword.

-- Create the movies table
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    release_year INT,
    genre VARCHAR(50),
    rating DECIMAL(2,1)
);

-- Insert sample data
INSERT INTO movies (movie_id, movie_name, release_year, genre, rating)
VALUES
(1, 'Inception', 2010, 'Sci-Fi', 8.8),
(2, 'Interstellar', 2014, 'Sci-Fi', 8.7),
(3, 'The Dark Knight', 2008, 'Action', 9.0),
(4, '3 Idiots', 2009, 'Comedy', 8.4),
(5, 'Dangal', 2016, 'Drama', 8.3);

-- Alter table movies
-- rename Column Title to movie_name;

-- Alter Table movies
-- rename column  Year_Released to release_year;

select movie_name as Title, release_year as Year_Released from movies;

-- 4.In a table called products, write an SQL query that selects all columns and add a comment in your SQL code explaining what the query does.<br><br><em><strong>Hint:</strong> Use -- to write a single-line comment above your query.</em>

-- Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    brand VARCHAR(50)
);

-- Insert sample data
INSERT INTO products (product_id, product_name, category, price, stock_quantity, brand)
VALUES
(1, 'Laptop', 'Electronics', 65000.00, 25, 'Dell'),
(2, 'Smartphone', 'Electronics', 32000.00, 40, 'Samsung'),
(3, 'Office Chair', 'Furniture', 8500.00, 18, 'Nilkamal'),
(4, 'Water Bottle', 'Accessories', 499.00, 100, 'Milton'),
(5, 'Wireless Mouse', 'Electronics', 1200.00, 60, 'Logitech');

Select * from products; -- The * (Select all the columns from the table where its stored)
--  Selct use for to select all column(*) or specific colmn in the query from to call only those column.   