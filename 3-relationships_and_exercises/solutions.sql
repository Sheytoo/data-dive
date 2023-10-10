DROP TABLE IF EXISTS loan, student, book, author, gender, class;

CREATE TABLE class
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE student
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email      VARCHAR(50),
    class_id   INT,
    CONSTRAINT fk_student_class FOREIGN KEY (class_id) REFERENCES class (id)
);

CREATE TABLE gender
(
    id    INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(50) NOT NULL
);

CREATE TABLE author
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    age        INT
);

CREATE TABLE book
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    title     VARCHAR(50)   NOT NULL,
    price     DECIMAL(5, 2) NOT NULL,
    author_id INT,
    gender_id INT,
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author (id),
    CONSTRAINT fk_book_gender FOREIGN KEY (gender_id) REFERENCES gender (id)
);

CREATE TABLE loan
(
    book_id    INT,
    student_id INT,
    date       DATETIME,
    PRIMARY KEY (book_id, student_id),
    CONSTRAINT fk_loan_book FOREIGN KEY (book_id) REFERENCES book (id),
    CONSTRAINT fk_loan_student FOREIGN KEY (student_id) REFERENCES student (id)
);

# Exercise 1

SELECT id, first_name, last_name, email FROM student;

# Exercise 2

SELECT * FROM book
WHERE price > 9;

# Exercise 3

SELECT id, first_name, last_name, age FROM author
ORDER BY age;

# Exercise 4

SELECT book_id, title FROM loan
INNER JOIN book ON book.id = loan.book_id
INNER JOIN student ON student.id = loan.student_id
WHERE first_name = 'John' AND last_name = 'Doe';

# Exercise 5

SELECT book.id, title FROM book
INNER JOIN gender ON book.gender_id = gender.id
WHERE gender.label = 'Theatre';

# Exercise 6

SELECT student.id, first_name, last_name, email FROM student
INNER JOIN loan on student.id = loan.student_id
WHERE loan.date > '2023-01-01';