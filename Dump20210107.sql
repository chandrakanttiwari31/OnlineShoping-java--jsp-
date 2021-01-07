CREATE DATABASE  IF NOT EXISTS `ecom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecom`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('chandan@gmail.com',2,1,12000,12000,'ambival','thane','maharashtra','indian',87666568798,'2020-12-31 01:09:57','2021-01-07 01:09:57','Cash On delivery(COD)','r444','cencel'),('chandan@gmail.com',2,1,12000,12000,'Nimaich','varanasi','up','indian',87666568798,'2021-01-01 14:37:48','2021-01-08 14:37:48','Cash On delivery(COD)','4545','cencel'),('chandan@gmail.com',4,1,700,700,'thane','thane','thane','thane',8574021170,'2021-01-02 22:36:17','2021-01-09 22:36:17','Cash On delivery(COD)','thane-11','Delivered'),('chandan@gmail.com',3,1,1500,1500,'kalyan','kalyan','kalyan','kalyan',8574021170,'2021-01-02 22:51:01','2021-01-09 22:51:01','Cash On delivery(COD)','kalyan-11','Cancel'),('chandan@gmail.com',3,2,1500,3000,'kk','kk','kk','kk',8574021170,'2021-01-02 23:02:12','2021-01-09 23:02:12','Online Payment','kk-11','Cancel'),('chandan@gmail.com',2,1,12000,12000,'Mumbai','mumbail','Maharashtra','india',8574021170,'2021-01-03 00:27:15','2021-01-10 00:27:15','Cash On delivery(COD)','mum-1101','processing');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'chandan@gmail.com','Product Survey','Your product was awesome');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Nokia','mobile',12000,'Yes'),(3,'sonata','watch',1500,'Yes'),(4,'java','book',700,'Yes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('chandan','chandan@gmail.com','8574021170','What is the name of your pet ?','Moti','12345','Mumbai','mumbail','Maharashtra','india');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 22:54:51
