-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: project2025
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `grouptbl`
--

DROP TABLE IF EXISTS `grouptbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grouptbl` (
  `group_idx` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `group_pass` varchar(50) NOT NULL,
  `description` text,
  `leader_idx` int DEFAULT NULL,
  PRIMARY KEY (`group_idx`),
  KEY `leader_idx` (`leader_idx`),
  CONSTRAINT `grouptbl_ibfk_1` FOREIGN KEY (`leader_idx`) REFERENCES `members` (`member_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouptbl`
--

LOCK TABLES `grouptbl` WRITE;
/*!40000 ALTER TABLE `grouptbl` DISABLE KEYS */;
INSERT INTO `grouptbl` VALUES (1,'성은목장','123','테스트용',1);
/*!40000 ALTER TABLE `grouptbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_idx` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(50) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `member_birth` date DEFAULT NULL,
  `member_phone` varchar(50) DEFAULT NULL,
  `description` text,
  `group_idx` int DEFAULT NULL,
  `member_age` int DEFAULT NULL,
  PRIMARY KEY (`member_idx`),
  KEY `fk_members_group` (`group_idx`),
  CONSTRAINT `fk_members_group` FOREIGN KEY (`group_idx`) REFERENCES `grouptbl` (`group_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'홍성은','F','2001-02-16','010-1234-1234','테스트용',1,24),(2,'김민지','F','1999-07-11','010-2345-6789','민지목장 목원',1,26),(3,'박지훈','M','1998-03-05','010-3456-7890','찬양팀 소속',1,27),(4,'이서연','F','2002-12-25','010-4567-8901','신입 목원',1,22),(5,'최현우','M','2000-09-30','010-5678-9012','청년부 리더',1,24),(6,'정하늘','F','2003-05-14','010-6789-0123','테스트 데이터',1,22),(7,'오준석','M','1997-11-22','010-7890-1234','테스트 데이터',1,27);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-17 22:50:40
