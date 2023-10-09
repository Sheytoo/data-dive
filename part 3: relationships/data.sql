INSERT INTO class (id, name) VALUES
    (1, 'Pré-MSc'),
    (2, 'MSc-1'),
    (3, 'MSc-2'),
    (4, 'W@C');

INSERT INTO student (id, first_name, last_name, email, class_id) VALUES
    (1, 'John', 'Doe', 'john.doe@gmail.com', 1),
    (2, 'Jane', 'Doe', 'jane.doe@gmail.com', 1),
    (3, 'John', 'Smith', 'john.smith@gmail.com', 2),
    (4, 'David', 'Williams', 'david.williams@gmail.com,', 2),
    (5, 'Maria', 'Garcia', 'maria.garcia@gmail.com', 3),
    (6, 'Mary', 'Davis', 'mary.davis@gmail.com', 3),
    (7, 'James', 'Brown', 'james@brown@gmail.com', 4),
    (8, 'Robert', 'Miller', 'robert.miller@gmail.com', 4);

INSERT INTO author (id, first_name, last_name, age) VALUES
    (1, 'Jean-Baptiste', 'Poquelin', 51),
    (2, 'Victor', 'Hugo', 83),
    (3, 'Charles', 'Baudelaire', 46),
    (4, 'Jean', 'de La Fontaine', 73),
    (5, 'Paul', 'Verlaine', 51),
    (6, 'Arthur', 'Rimbaud', 37);

INSERT INTO gender (id, label) VALUES
    (1, 'Science-Fiction'),
    (2, 'Fantasy'),
    (3, 'Poetry'),
    (4, 'Theatre');

INSERT INTO book (id, name, author_id, gender_id, price) VALUES
    (1, 'Les Misérables', 2, 2, 10.99),
    (2, 'Notre-Dame de Paris', 2, 2, 9.99),
    (3, 'Les Fleurs du mal', 3, 3, 8.99),
    (4, 'Le Spleen de Paris', 3, 3, 7.99),
    (5, 'Le Bourgeois gentilhomme', 4, 4, 6.99),
    (6, 'Les Fourberies de Scapin', 4, 4, 5.99),
    (7, 'Les Contemplations', 2, 3, 4.99),
    (8, 'Les Châtiments', 2, 3, 3.99);

INSERT INTO loan (book_id, student_id, date) VALUES
    (1, 4, '2022-04-01'),
    (4, 2, '2022-05-15'),
    (5, 1, '2022-09-20'),
    (6, 3, '2023-03-11'),
    (7, 5, '2021-12-04'),
    (8, 6, '2023-08-28'),
    (1, 7, '2021-06-17'),
    (2, 8, '2023-10-02'),
    (3, 1, '2021-09-14');
