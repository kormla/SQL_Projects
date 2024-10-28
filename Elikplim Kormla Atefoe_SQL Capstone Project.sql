# creating a table for authors

CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name TEXT,
    Last_name TEXT,
    gender TEXT,
    country TEXT,
    age INT
);

#changing a column's name

ALTER TABLE authors CHANGE Last_name last_name TEXT;

#inserting 20 records into the authors table

INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Dan", "Brown", "Male", "USA", 60);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Michael", "Scott", "Male", "Ireland", 65);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Rick", "Riordan", "Male", "USA", 60);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("George", "Martin", "Male", "USA", 76);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Robert", "Stine", "Male", "USA", 81);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Anthony", "Horowitz", "Male", "England", 69);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Eoin", "Colfer", "Male", "Ireland", 59);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Joanne", "Rowling", "Female", "English", 59);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Jim", "Butcher", "Male", "USA", 52);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Brandon", "Mull", "Male", "USA", 49);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Suzanne", "Collins", "Female", "USA", 62);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("John", "Tolkien", "Male", "English", 81);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Veronica", "Roth", "Female", "USA", 36);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Cassandra", "Clare", "Female", "USA", 51);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Donald", "MacHale", "Male", "USA", 69);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Colleen", "Hoover", "Female", "USA", 44);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("T", "Rudacille", "Male", "USA", 60);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("James", "Patterson", "Male", "USA", 77);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Alex", "Scarrow", "Male", "England", 58);
INSERT INTO authors (first_name, last_name, gender, country,age) VALUES ("Darren", "Shan", "Male", "Ireland", 52);

SELECT 
    *
FROM
    authors;
    
# creating a table for books

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    genre TEXT
);

# inserting a new column into the table

ALTER TABLE books ADD year INTEGER;

#inserting 20 values into the book table

INSERT INTO books (title, genre, year) VALUES ("The Lost Symbol", "Thriller", 2009);
INSERT INTO books (title, genre, year) VALUES ("The Alchemyst", "Fiction", 2007);
INSERT INTO books (title, genre, year) VALUES ("The Last Olympian", "Fiction", 2009);
INSERT INTO books (title, genre, year) VALUES ("A Game of Thrones", "Fantasy Fiction", 1996);
INSERT INTO books (title, genre, year) VALUES ("Goosebumps", "Fiction", 1992);
INSERT INTO books (title, genre, year) VALUES ("Alex Rider", "Fiction", 2000);
INSERT INTO books (title, genre, year) VALUES ("Artemis Fowl", "Fantasy Fiction", 2015 );
INSERT INTO books (title, genre, year) VALUES ("Harry Potter", "Fantasy", 1997);
INSERT INTO books (title, genre, year) VALUES ("The Dresden Files", "Urban Fantasy", 2000);
INSERT INTO books (title, genre, year) VALUES ("Fablehaven", "Detective", 2000);
INSERT INTO books (title, genre, year) VALUES ("The Hunger Games", "Dystopian Fiction", 2008);
INSERT INTO books (title, genre, year) VALUES ("The Lord of the Rings", "Adventure", 1954);
INSERT INTO books (title, genre, year) VALUES ("Divergent", "Dystopian Fiction", 2011);
INSERT INTO books (title, genre, year) VALUES ("The Mortal Instruments", "Urban Fantasy", 2007);
INSERT INTO books (title, genre, year) VALUES ("Pendragon", "Science Fiction", 2002);
INSERT INTO books (title, genre, year) VALUES ("It Starts with Us", "Romance", 2022);
INSERT INTO books (title, genre, year) VALUES ("The Shattered Genesis", "Science Fiction", 2015);
INSERT INTO books (title, genre, year) VALUES ("Along Came a Spider", "Thriller", 1983);
INSERT INTO books (title, genre, year) VALUES ("Time Riders", "Science Fiction", 2010);
INSERT INTO books (title, genre, year) VALUES ("Cirque du Freak", "Thriller", 2021 );

UPDATE books 
SET 
    genre = 'Horror'
WHERE
    book_id = 5;

SELECT 
    *
FROM
    books;

# creating a table for book ratings

CREATE TABLE book_ratings (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2 , 1 )
);

#inserting 20 values into the book_ratings table

INSERT INTO book_ratings (rating) VALUES (4.5);
INSERT INTO book_ratings (rating) VALUES (4.8);
INSERT INTO book_ratings (rating) VALUES (4.9);
INSERT INTO book_ratings (rating) VALUES (3.0);
INSERT INTO book_ratings (rating) VALUES (4.5);
INSERT INTO book_ratings (rating) VALUES (3.0);
INSERT INTO book_ratings (rating) VALUES (3.5);
INSERT INTO book_ratings (rating) VALUES (4.1);
INSERT INTO book_ratings (rating) VALUES (4.4);
INSERT INTO book_ratings (rating) VALUES (4.5);
INSERT INTO book_ratings (rating) VALUES (4.0);
INSERT INTO book_ratings (rating) VALUES (3.9);
INSERT INTO book_ratings (rating) VALUES (4.5);
INSERT INTO book_ratings (rating) VALUES (4.8);
INSERT INTO book_ratings (rating) VALUES (4.0);
INSERT INTO book_ratings (rating) VALUES (4.5);
INSERT INTO book_ratings (rating) VALUES (4.7);
INSERT INTO book_ratings (rating) VALUES (4.0);
INSERT INTO book_ratings (rating) VALUES (3.5);
INSERT INTO book_ratings (rating) VALUES (4.0);

SELECT 
    *
FROM
    book_ratings;

SELECT 
    authors.first_name,
    authors.last_name,
    authors.gender,
    books.title,
    books.genre,
    books.year,
    book_ratings.rating
FROM
    authors
        INNER JOIN
    books ON authors.id = books.book_id
        INNER JOIN
    book_ratings ON books.book_id = book_ratings.id;

SELECT 
    books.genre,
    ROUND(AVG(book_ratings.rating), 1) AS avg_rating_per_genre
FROM
    books
        JOIN
    book_ratings ON books.book_id = book_ratings.id
GROUP BY books.genre;

SELECT 
    a.title, a.genre, MAX(r.rating) AS highly_rated
FROM
    books AS a
        INNER JOIN
    book_ratings AS r ON a.book_id = r.id
GROUP BY a.book_id
ORDER BY highly_rated DESC
LIMIT 15;





