-- SESSION 4 - Wildcards & Pattern Matching (LIKE, BETWEEN, IN)Topics:LIKE (“R%”)BETWEEN (ranges)IN (multiple values)Demo:Find all customers whose names start with ‘M’.
-- Tasks
-- 1.Write an SQL query to find all restaurants in a table called Restaurants whose names end with 'Cafe' using the LIKE operator.
-- 2.In a Flipkart-style Products table, use the BETWEEN operator to select all products with a price between 500 and 1500 rupees.
-- 3.Write an SQL query to display all users from a Users table whose city is either 'Ahmedabad', 'Surat', or 'Vadodara' using the IN operator.
-- 4.Given a table called Songs with columns song_name and artist_name, find all songs where the artist_name contains the letter sequence 'ar' anywhere in the name using the LIKE operator.<br><br><em><strong>Hint:</strong> Use wildcards on both sides of the pattern.</em>

use sql_assingment;

insert into restaurants (restaurants_id, restaurant_name, cuisine, city, rating, average_cost)
values
(6, 'Sunrise Cafe', 'Cafe', 'Ahmedabad', 4.3, 500),
(7, 'Moonlight Cafe', 'Cafe', 'Surat', 4.6, 650),
(8, 'Coffee Cafe', 'Cafe', 'Pune', 4.1, 450);

select * from restaurants;

-- 1.Write an SQL query to find all restaurants in a table called Restaurants whose names end with 'Cafe' using the LIKE operator.

select * from restaurants
where restaurant_name like '%Cafe%';

-- 2.In a Flipkart-style Products table, use the BETWEEN operator to select all products with a price between 500 and 1500 rupees.

INSERT INTO products (product_id, product_name, category, price, stock_quantity, brand)
VALUES
(6, 'Keyboard', 'Electronics', 899.00, 35, 'Logitech'),
(7, 'Bluetooth Speaker', 'Electronics', 1499.00, 20, 'boAt'),
(8, 'Headphones', 'Electronics', 999.00, 30, 'JBL'),
(9, 'Desk Lamp', 'Furniture', 750.00, 25, 'Philips');

select * from products
where price between 500 and 1500;

-- 3.Write an SQL query to display all users from a Users table whose city is either 'Ahmedabad', 'Surat', or 'Vadodara' using the IN operator.

select * from users
where city in ('Ahmedabad','Surat','Vadodara');

-- 4.Given a table called Songs with columns song_name and artist_name, find all songs where the artist_name contains the letter sequence 'ar' anywhere in the name using the LIKE operator.<br><br><em><strong>Hint:</strong> Use wildcards on both sides of the pattern.</em>

-- Create the Songs table
CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist_name VARCHAR(100),
    album_name VARCHAR(100),
    release_year INT
);

-- Insert sample data
INSERT INTO Songs (song_id, song_name, artist_name, album_name, release_year)
VALUES
(1, 'Perfect', 'Ed Sheeran', 'Divide', 2017),
(2, 'Blinding Lights', 'The Weeknd', 'After Hours', 2020),
(3, 'Believer', 'Imagine Dragons', 'Evolve', 2017),
(4, 'Levitating', 'Dua Lipa', 'Future Nostalgia', 2020),
(5, 'Apna Bana Le', 'Arijit Singh', 'Bhediya', 2022),
(6, 'Shape of You', 'Ed Sheeran', 'Divide', 2017),
(7, 'Kesariya', 'Arijit Singh', 'Brahmastra', 2022),
(8, 'Bad Habits', 'Ed Sheeran', 'Equals', 2021);

select * from songs
where artist_name like '%ar%';