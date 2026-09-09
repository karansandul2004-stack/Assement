-- SESSION 3 - WHERE Clause & OperatorsTopics:WHERE=, <>, >, <, <=, >=Logical operators AND, OR, NOTDemo:Filter employees with salary > 50000 and in "IT" dept.
-- Tasks
-- 1.Write an SQL query to select all restaurants from a table named 'restaurants' where the rating is greater than or equal to 4.5.
-- 2.In a table called 'movies', filter and display only the movies released after 2020 and with genre 'Action' using the WHERE clause and AND operator.
-- 3.Given a table 'products' with columns (id, name, price, category), write a query to find all products not in the 'Electronics' category or with a price less than 500.
-- 4.Write an SQL query for a table 'users' to show all users who are NOT from 'Ahmedabad' and have more than 1000 followers.<br><br><em><strong>Hint:</strong> Use the NOT operator combined with AND.</em>

-- 1.Write an SQL query to select all restaurants from a table named 'restaurants' where the rating is greater than or equal to 4.5.

use sql_assingment;

describe restaurants;

select * from restaurants
where rating >= 4.5;

-- 2.In a table called 'movies', filter and display only the movies released after 2020 and with genre 'Action' using the WHERE clause and AND operator.

insert into movies (movie_id, movie_name, release_year, genre, rating)
values
(6, 'Reacher',2022,'Action',9.8);

select * from movies 
where release_year > 2020
and genre = "Action";

-- 3.Given a table 'products' with columns (id, name, price, category), write a query to find all products not in the 'Electronics' category or with a price less than 500.

select product_id, product_name, price, category from products
where category <> "Electronics"
or
price < 500;

-- 4.Write an SQL query for a table 'users' to show all users who are NOT from 'Ahmedabad' and have more than 1000 followers.<br><br><em><strong>Hint:</strong> Use the NOT operator combined with AND.</em>

-- Create the users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    city VARCHAR(50),
    followers INT,
    age INT,
    join_date DATE
);

-- Insert sample data
INSERT INTO users (user_id, username, city, followers, age, join_date)
VALUES
(1, 'Aarav', 'Ahmedabad', 850, 22, '2023-01-15'),
(2, 'Diya', 'Surat', 1500, 25, '2022-06-20'),
(3, 'Rohan', 'Mumbai', 3200, 28, '2021-09-10'),
(4, 'Meera', 'Ahmedabad', 2100, 24, '2024-02-05'),
(5, 'Karan', 'Vadodara', 950, 21, '2023-11-18'),
(6, 'Sneha', 'Pune', 1800, 27, '2022-08-12'),
(7, 'Vikram', 'Delhi', 5000, 30, '2020-04-25'),
(8, 'Ananya', 'Ahmedabad', 1200, 23, '2021-12-30');

select * from users
where city <> 'Ahmedabad'
and followers > 1000;

select * from users -- Second veriation
where not (city = 'Ahmedabad')
and followers > 1000;