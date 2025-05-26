-- MySQL dump 10.13  Distrib 9.0.0, for Win64 (x86_64)
--
-- Host: localhost    Database: supplychainanalytics
-- ------------------------------------------------------
-- Server version	9.0.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(10) DEFAULT NULL,
  `current_stock` int DEFAULT NULL,
  `reorder_point` int DEFAULT NULL,
  `safety_stock` int DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'P001',82,52,23),(2,'P002',172,91,16),(3,'P003',54,66,18),(4,'P004',90,73,24),(5,'P005',77,64,24),(6,'P006',184,94,19),(7,'P007',121,76,22),(8,'P008',61,32,28),(9,'P009',82,30,16),(10,'P010',97,34,26);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(10) DEFAULT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `expected_delivery` date DEFAULT NULL,
  `quantity_ordered` int DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'P009','Supplier A','2024-01-20','2024-01-26',192,'Pending'),(2,'P009','Supplier B','2024-01-11','2024-01-17',62,'Delivered'),(3,'P006','Supplier C','2024-01-07','2024-01-20',135,'In Transit'),(4,'P006','Supplier A','2024-01-02','2024-01-14',94,'Delivered'),(5,'P009','Supplier B','2024-01-25','2024-02-01',183,'Pending'),(6,'P010','Supplier C','2024-01-12','2024-01-26',133,'Delivered'),(7,'P005','Supplier A','2024-01-11','2024-01-23',141,'Cancelled'),(8,'P004','Supplier B','2024-01-25','2024-02-03',178,'Delivered'),(9,'P009','Supplier C','2024-01-25','2024-02-07',170,'Pending'),(10,'P008','Supplier A','2024-01-20','2024-01-31',52,'In Transit'),(11,'P009','Supplier B','2024-01-07','2024-01-15',186,'Delivered'),(12,'P002','Supplier C','2024-01-05','2024-01-08',100,'Delivered'),(13,'P002','Supplier A','2024-01-10','2024-01-24',108,'Pending'),(14,'P004','Supplier B','2024-01-22','2024-02-01',162,'Delivered'),(15,'P001','Supplier C','2024-01-17','2024-01-29',101,'Delivered'),(16,'P004','Supplier A','2024-01-12','2024-01-21',179,'In Transit'),(17,'P001','Supplier B','2024-01-03','2024-01-06',150,'Delivered'),(18,'P002','Supplier C','2024-01-17','2024-01-27',130,'Cancelled'),(19,'P005','Supplier A','2024-01-17','2024-01-21',179,'Delivered'),(20,'P002','Supplier B','2024-01-22','2024-01-31',178,'Delivered'),(21,'P008','Supplier C','2024-01-19','2024-01-23',102,'Pending'),(22,'P004','Supplier A','2024-01-12','2024-01-24',117,'Delivered'),(23,'P010','Supplier B','2024-01-23','2024-02-05',172,'Pending'),(24,'P005','Supplier C','2024-01-17','2024-01-25',73,'Delivered'),(25,'P005','Supplier A','2024-01-05','2024-01-11',147,'Delivered'),(26,'P002','Supplier B','2024-01-06','2024-01-14',188,'Cancelled'),(27,'P003','Supplier C','2024-01-16','2024-01-19',173,'Delivered'),(28,'P006','Supplier A','2024-01-06','2024-01-11',197,'Pending'),(29,'P008','Supplier B','2024-01-04','2024-01-09',139,'Delivered'),(30,'P004','Supplier C','2024-01-03','2024-01-08',197,'In Transit');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `lead_time_days` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P001','Product A','Accessories',122.00,13),('P002','Product B','Home Appliances',455.00,13),('P003','Product C','Home Appliances',290.00,10),('P004','Product D','Office',126.00,7),('P005','Product E','Accessories',91.00,6),('P006','Product F','Accessories',40.00,10),('P007','Product G','Home Appliances',634.00,10),('P008','Product H','Accessories',141.00,5),('P009','Product I','Accessories',486.00,8),('P010','Product J','Home Appliances',234.00,7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` varchar(10) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `units_sold` int DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('S001','2024-01-02','P003',28,250.00,'North'),('S002','2024-01-12','P007',34,180.00,'West'),('S003','2024-01-06','P009',6,199.00,'South'),('S004','2024-01-28','P002',25,300.00,'East'),('S005','2024-01-01','P009',16,210.00,'North'),('S006','2024-01-26','P006',26,150.00,'West'),('S007','2024-01-29','P004',48,230.00,'South'),('S008','2024-01-25','P001',31,175.00,'East'),('S009','2024-01-27','P002',46,300.00,'North'),('S010','2024-01-28','P009',20,195.00,'West'),('S011','2024-01-15','P010',48,275.00,'South'),('S012','2024-01-23','P002',7,185.00,'East'),('S013','2024-01-05','P010',11,290.00,'North'),('S014','2024-01-21','P007',13,310.00,'West'),('S015','2024-01-07','P003',22,200.00,'South'),('S016','2024-01-04','P003',29,199.00,'East'),('S017','2024-01-28','P005',18,180.00,'North'),('S018','2024-01-18','P008',13,165.00,'West'),('S019','2024-01-26','P005',6,240.00,'South'),('S020','2024-01-20','P002',32,220.00,'East'),('S021','2024-01-15','P002',11,210.00,'North'),('S022','2024-01-12','P005',12,205.00,'West'),('S023','2024-01-15','P010',39,280.00,'South'),('S024','2024-01-14','P007',21,260.00,'East'),('S025','2024-01-04','P008',44,195.00,'North'),('S026','2024-01-04','P004',6,170.00,'West'),('S027','2024-01-30','P008',10,310.00,'South'),('S028','2024-01-22','P007',46,215.00,'East'),('S029','2024-01-04','P010',33,260.00,'North'),('S030','2024-01-18','P002',30,190.00,'West'),('S031','2024-01-12','P005',38,175.00,'South'),('S032','2024-01-10','P002',40,245.00,'East'),('S033','2024-01-14','P009',35,200.00,'North'),('S034','2024-01-16','P009',19,185.00,'West'),('S035','2024-01-08','P009',18,210.00,'South'),('S036','2024-01-23','P003',44,260.00,'East'),('S037','2024-01-21','P009',20,230.00,'North'),('S038','2024-01-13','P009',22,240.00,'West'),('S039','2024-01-15','P007',28,195.00,'South'),('S040','2024-01-26','P005',29,180.00,'East'),('S041','2024-01-28','P009',49,170.00,'North'),('S042','2024-01-09','P005',33,190.00,'West'),('S043','2024-01-15','P004',49,250.00,'South'),('S044','2024-01-01','P008',29,230.00,'East'),('S045','2024-01-07','P001',13,190.00,'North'),('S046','2024-01-24','P006',5,175.00,'West'),('S047','2024-01-12','P009',12,210.00,'South'),('S048','2024-01-24','P009',15,200.00,'East'),('S049','2024-01-19','P002',21,185.00,'North'),('S050','2024-01-08','P010',39,275.00,'West');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-24 19:24:15
