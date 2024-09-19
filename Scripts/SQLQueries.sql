INSERT INTO Genre (GenreName) VALUES ('Science Fiction');
INSERT INTO Genre (GenreName) VALUES ('Fantasy');
INSERT INTO Genre (GenreName) VALUES ('Mystery');
INSERT INTO Genre (GenreName) VALUES ('Romance');
INSERT INTO Genre (GenreName) VALUES ('Horror');
INSERT INTO Genre (GenreName) VALUES ('Biography');
INSERT INTO Genre (GenreName) VALUES ('History');

-- Science Fiction Books
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('Dune', 'Frank Herbert', 15.99, '1965-08-01', 1);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('Neuromancer', 'William Gibson', 12.99, '1984-07-01', 1);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('Foundation', 'Isaac Asimov', 14.99, '1951-06-01', 1);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('Snow Crash', 'Neal Stephenson', 13.99, '1992-06-01', 1);

-- Fantasy Books
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('The Hobbit', 'J.R.R. Tolkien', 10.99, '1937-09-21', 2);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('A Game of Thrones', 'George R.R. Martin', 19.99, '1996-08-06', 2);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('The Name of the Wind', 'Patrick Rothfuss', 17.99, '2007-03-27', 2);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('The Way of Kings', 'Brandon Sanderson', 18.99, '2010-08-31', 2);

-- Mystery Books
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('The Girl with the Dragon Tattoo', 'Stieg Larsson', 9.99, '2005-08-01', 3);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('Gone Girl', 'Gillian Flynn', 11.99, '2012-06-05', 3);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('The Da Vinci Code', 'Dan Brown', 10.99, '2003-03-18', 3);
INSERT INTO Books (Title, Author, Price, PublishedDate, GenreID) VALUES ('In the Woods', 'Tana French', 8.99, '2007-05-17', 3);