-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Author` (
  `F_Name` char(20) NOT NULL,
  `L_Name` char(20) NOT NULL,
  `bookID` int(10) NOT NULL AUTO_INCREMENT,
  KEY `bookID` (`bookID`),
  CONSTRAINT `author_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `titles` (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES ('Jane','Doe',1),('Beyonce','Knowles',4),('Bridget','Jones',2),('Charles','Bucky',5),('Bridget','Jones',3),('Kent','Jones',16),('Richard','Prior',15),('Jane','Doe',14),('Charles','Bucky',19),('Charles','Bucky',13),('Jane','Doe',9),('Richard','Prior',17),('Bridget','Jones',20),('Beyonce','Knowles',18),('Jane','Doe',12),('Beyonce','Knowles',8),('Bridget','Jones',10),('Charles','Bucky',7),('Beyonce','Knowles',11),('Kent','Jones',6);
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Category` (
  `CategoryName` char(20) NOT NULL,
  `categoryID` int(10) NOT NULL,
  `bookID` int(10) NOT NULL AUTO_INCREMENT,
  KEY `bookID` (`bookID`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `titles` (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('Comedy',1,1),('Drama',2,4),('Horror',3,2),('Fantasy',4,5),('Comedy',1,3),('Drama',2,16),('Horror',3,15),('Fantasy',4,14),('Comedy',1,19),('Drama',2,13),('Horror',3,9),('Fantasy',4,17),('Comedy',1,20),('Drama',2,18),('Horror',3,12),('Fantasy',4,8),('Comedy',1,10),('Drama',2,7),('Horror',3,11),('Fantasy',4,6);
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prices`
--

DROP TABLE IF EXISTS `Prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Prices` (
  `Price` float NOT NULL,
  `bookID` int(10) NOT NULL AUTO_INCREMENT,
  KEY `bookID` (`bookID`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `titles` (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prices`
--

LOCK TABLES `Prices` WRITE;
/*!40000 ALTER TABLE `Prices` DISABLE KEYS */;
INSERT INTO `Prices` VALUES (19.5,1),(2.57,4),(20.05,2),(5,5),(2.17,3),(6.75,16),(19.01,15),(19.9,14),(19.95,19),(2.09,13),(20.06,9),(5.17,17),(3.45,20),(12.23,18),(12.21,12),(6.07,8),(6.97,10),(13.44,7),(20.14,11),(20.05,6);
/*!40000 ALTER TABLE `Prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Titles`
--

DROP TABLE IF EXISTS `Titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Titles` (
  `Title` char(20) NOT NULL,
  `bookID` int(10) NOT NULL AUTO_INCREMENT,
  `categoryID` int(10) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Titles`
--

LOCK TABLES `Titles` WRITE;
/*!40000 ALTER TABLE `Titles` DISABLE KEYS */;
INSERT INTO `Titles` VALUES ('Junie B. Jones',1,1),('Murder on Elm Street',2,3),('Madea Funeral',3,1),('Traveling Pants',4,2),('Harry Potter',5,4),('Breathe Again',6,4),('Pretty Little Liars',7,2),('Live',8,4),('The Killing',9,3),('Insecure',10,1),('Freddy v. Jason',11,3),('Teen Wolf',12,3),('My Heart',13,2),('Robhinhood',14,4),('Freddy',15,3),('House of Payne',16,2),('Harry Potter II',17,4),('Greenleaf',18,2),('Dawgs',19,1),('Being Popular',20,1);
/*!40000 ALTER TABLE `Titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Years`
--

DROP TABLE IF EXISTS `Years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Years` (
  `bookYear` year(4) NOT NULL,
  `bookID` int(10) NOT NULL AUTO_INCREMENT,
  KEY `bookID` (`bookID`),
  CONSTRAINT `years_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `titles` (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Years`
--

LOCK TABLES `Years` WRITE;
/*!40000 ALTER TABLE `Years` DISABLE KEYS */;
INSERT INTO `Years` VALUES (2001,1),(1994,4),(2003,2),(2005,5),(2017,3),(2005,16),(1990,15),(1990,14),(1995,19),(2019,13),(2006,9),(2018,17),(2004,20),(2018,18),(2001,12),(2006,8),(2016,10),(2013,7),(2014,11),(2005,6);
/*!40000 ALTER TABLE `Years` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 13:57:01
