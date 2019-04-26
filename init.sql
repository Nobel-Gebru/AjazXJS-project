DROP TABLE IF EXISTS `Titles`;
create Table Titles(
  Title char(20) NOT NULL,
  bookID int(10) NOT NULL Auto_increment,
  categoryID int(10) NOT NULL,
  Primary Key (bookID)
);

LOCK TABLES `Titles` Write;
Insert into `titles` values ('Junie B. Jones',1,1),('Traveling Pants', 4,2),('Murder on Elm Street', 2,3 ),('Harry Potter',5, 4),('Madea Funeral',3,1),('House of Payne', 16, 2),('Freddy', 15, 3),('Robhinhood',14,4 ),('Dawgs',19,1),('My Heart', 13, 2),('The Killing', 9,3),('Harry Potter II',17, 4),('Being Popular',20,1),('Greenleaf', 18,2),('Teen Wolf', 12, 3),('Live',8,4),('Insecure',10,1),('Pretty Little Liars', 7,2),('Freddy v. Jason', 11,3),('Breathe Again',6,4);
UNLOCK TABLES;

DROP TABLE IF EXISTS `Category`;
create Table Category(
  CategoryName char(20) NOT NULL,
  categoryID int(10) NOT NULL,
  bookID int(10) NOT NULL Auto_increment,
  Foreign Key (bookID) REFERENCES Titles(bookID)
);

LOCK TABLES `Category` Write;
Insert into `Category` values ('Comedy',1,1),('Drama', 2,4),('Horror', 3,2 ),('Fantasy',4, 5),('Comedy',1,3),('Drama', 2, 16),('Horror', 3, 15),('Fantasy',4,14 ),('Comedy',1,19),('Drama', 2, 13),('Horror', 3,9),('Fantasy',4, 17),('Comedy',1,20),('Drama', 2,18 ),('Horror', 3, 12),('Fantasy',4,8),('Comedy',1,10),('Drama', 2,7),('Horror', 3,11),('Fantasy',4,6);
UNLOCK TABLES;

create Table Years(
  bookYear YEAR NOT NULL,
  bookID int(10) NOT NULL Auto_increment,
  Foreign Key (bookID) REFERENCES Titles(bookID)
);

LOCK TABLES `Years` Write;
Insert into `Years` values ('2001',1),('1994', 4),('2003', 2),('2005',5),('2017',3),('2005', 16),('1990', 15),('1990',14),('1995',19),('2019', 13),('2006', 9),('2018',17),('2004',20),('2018', 18),('2001', 12),('2006',8),('2016',10),('2013', 7),('2014', 11),('2005',6);
UNLOCK TABLES;

create Table Prices(
  Price float(10) NOT NULL,
  bookID int(10) NOT NULL Auto_increment,
  Foreign Key (bookID) REFERENCES Titles(bookID)
);

LOCK TABLES `Prices` Write;
Insert into `Prices` values (19.50,1),(2.57, 4),(20.05, 2),(5.00,5),(2.17,3),(6.75, 16),(19.01, 15),(19.90,14),(19.95,19),(2.09, 13),(20.06, 9),(5.17,17),(3.45,20),(12.23, 18),(12.21, 12),(6.07,8),(6.97,10),(13.44, 7),(20.14, 11),(20.05,6);
UNLOCK TABLES;


create Table Author(
  F_Name char(20) NOT NULL,
  L_Name char(20) NOT NULL,
  bookID int(10) NOT NULL Auto_increment,
  Foreign Key (bookID) REFERENCES Titles(bookID)
);

LOCK TABLES `Author` Write;
Insert into `Author` values ('Jane','Doe',1),('Beyonce', 'Knowles', 4),('Bridget','Jones', 2),('Charles','Bucky',5),('Bridget','Jones',3),('Kent','Jones', 16),('Richard','Prior', 15),('Jane','Doe',14),('Charles','Bucky',19),('Charles','Bucky', 13),('Jane','Doe', 9),('Richard','Prior',17),('Bridget','Jones',20),('Beyonce', 'Knowles', 18),('Jane','Doe', 12),('Beyonce', 'Knowles',8),('Bridget','Jones',10),('Charles','Bucky', 7),('Beyonce', 'Knowles', 11),('Kent','Jones',6);
UNLOCK TABLES;
