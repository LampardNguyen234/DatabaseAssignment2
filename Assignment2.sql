-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment2
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `01-staff`
--

DROP TABLE IF EXISTS `01-staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `01-staff` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Salary` int(11) NOT NULL,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `01-staff`
--

LOCK TABLES `01-staff` WRITE;
/*!40000 ALTER TABLE `01-staff` DISABLE KEYS */;
INSERT INTO `01-staff` VALUES (1215121,'Lê Thị Thúy An',11000000,'Điều Dưỡng'),(1288681,'Trần Nhật Tú',19020000,'Bác Sỹ'),(1297719,'Lê Quốc Linh',18980000,'Bác Sỹ'),(1303697,'Trần Trung Linh',19400000,'Bác Sỹ'),(1315215,'Trần Thúy Hiền',9000000,'Hộ Lý'),(1335580,'Hồ Nhật Trình',18390000,'Bác Sỹ'),(1425156,'Nguyễn Thị Xuân',12000000,'Bác Sỹ'),(1492484,'Đặng Quốc Kỷ',18130000,'Bác Sỹ'),(1510901,'Văn Minh Hào',15000000,'Bác Sỹ'),(1512591,'Nguyễn Thành Phương',16000000,'Bác Sỹ'),(1513056,'Nguyễn Văn Thành',10000000,'Nhân Viên Hành Chính'),(1513057,'Nguyễn Lê Nhất Thành',16000000,'Bác Sỹ'),(1513919,'Hoàng Lê Chánh Tú',10000000,'Nhân Viên Hành Chính'),(1514145,'Nguyễn Công Phượng',19650000,'Bác Sỹ'),(1514444,'Nguyễn Văn Toàn',10000000,'Nhân Viên Hành Chính'),(1516161,'Lương Xuân Trường',8500000,'Hộ Lý'),(1526254,'Tạ Thị Phương Thảo',12000000,'Điều Dưỡng'),(1549485,'Nguyễn Đức Phương',15160000,'Bác Sỹ'),(1615215,'Hoàng Văn Trường',17000000,'Bác Sỹ'),(1714364,'Hoàng Trung Hải',18720000,'Bác Sỹ'),(1906280,'Trần Thành Tú',17770000,'Bác Sỹ'),(1941792,'Hoàng Nhật Hải',17480000,'Bác Sỹ'),(1960511,'Hồ Quốc Bảo',18330000,'Bác Sỹ');
/*!40000 ALTER TABLE `01-staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `02-staffphone`
--

DROP TABLE IF EXISTS `02-staffphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `02-staffphone` (
  `ID` int(11) NOT NULL,
  `PhoneNum` varchar(12) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  PRIMARY KEY (`ID`,`PhoneNum`),
  CONSTRAINT `abcde` FOREIGN KEY (`ID`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `02-staffphone`
--

LOCK TABLES `02-staffphone` WRITE;
/*!40000 ALTER TABLE `02-staffphone` DISABLE KEYS */;
INSERT INTO `02-staffphone` VALUES (1215121,'0962152444'),(1215121,'0987524652'),(1315215,'01263252452'),(1425156,'01299585545'),(1510901,'0965825325'),(1512591,'01687985245'),(1513056,'01299554170'),(1513056,'0969241475'),(1513057,'01299582987'),(1513919,'01653248624'),(1514145,'0905654456'),(1514444,'0915303159'),(1516161,'01256321456'),(1526254,'0987456852'),(1615215,'0963215245');
/*!40000 ALTER TABLE `02-staffphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `03-doctor`
--

DROP TABLE IF EXISTS `03-doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `03-doctor` (
  `ID` int(11) NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `abcd` FOREIGN KEY (`ID`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `03-doctor`
--

LOCK TABLES `03-doctor` WRITE;
/*!40000 ALTER TABLE `03-doctor` DISABLE KEYS */;
INSERT INTO `03-doctor` VALUES (1288681,'Bác Sỹ Phẫu Thuật'),(1297719,'Bác Sỹ Phẫu Thuật'),(1303697,'Bác Sỹ Phẫu Thuật'),(1335580,'Bác Sỹ Điều Trị'),(1425156,'Bác Sỹ Điều Trị'),(1492484,'Bác Sỹ Điều Trị'),(1510901,'Bác Sỹ Phẫu Thuật'),(1512591,'Bác Sỹ Phẫu Thuật'),(1513057,'Bác Sỹ Phẫu Thuật'),(1514145,'Bác Sỹ Điều Trị'),(1549485,'Bác Sỹ Phẫu Thuật'),(1615215,'Bác Sỹ Điều Trị'),(1714364,'Bác Sỹ Điều Trị'),(1906280,'Bác Sỹ Điều Trị'),(1941792,'Bác Sỹ Điều Trị'),(1960511,'Bác Sỹ Phẫu Thuật');
/*!40000 ALTER TABLE `03-doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `04-shift`
--

DROP TABLE IF EXISTS `04-shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `04-shift` (
  `ID` int(11) NOT NULL,
  `Begin` timestamp NULL DEFAULT NULL,
  `End` timestamp NULL DEFAULT NULL,
  `DutyDoctor` int(11) NOT NULL,
  `SubDoctor` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Duty_idx` (`DutyDoctor`),
  KEY `Sub_idx` (`SubDoctor`),
  CONSTRAINT `Duty` FOREIGN KEY (`DutyDoctor`) REFERENCES `03-doctor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Sub` FOREIGN KEY (`SubDoctor`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `04-shift`
--

LOCK TABLES `04-shift` WRITE;
/*!40000 ALTER TABLE `04-shift` DISABLE KEYS */;
INSERT INTO `04-shift` VALUES (1,'2017-01-30 17:32:25','2017-01-31 05:32:25',1297719,1288681),(2,'2017-01-31 05:32:25','2017-01-31 17:32:25',1288681,1512591),(3,'2017-01-31 17:32:25','2017-02-01 05:32:25',1513057,1297719),(4,'2017-02-01 05:32:25','2017-02-01 17:32:25',1288681,1512591),(5,'2017-02-01 17:32:25','2017-02-02 05:32:25',1510901,1303697),(6,'2017-02-02 05:32:25','2017-02-02 17:32:25',1549485,1510901),(7,'2017-02-02 17:32:25','2017-02-03 05:32:25',1513057,1960511),(8,'2017-02-03 05:32:25','2017-02-03 17:32:25',1512591,1288681),(9,'2017-02-03 17:32:25','2017-02-04 05:32:25',1960511,1510901),(10,'2017-02-04 05:32:25','2017-02-04 17:32:25',1288681,1512591),(11,'2017-02-04 17:32:25','2017-02-05 05:32:25',1512591,1960511),(12,'2017-02-05 05:32:25','2017-02-05 17:32:25',1960511,1510901),(13,'2017-02-05 17:32:25','2017-02-06 05:32:25',1549485,1303697),(14,'2017-02-06 05:32:25','2017-02-06 17:32:25',1288681,1297719),(15,'2017-02-06 17:32:25','2017-02-07 05:32:25',1510901,1512591),(16,'2017-02-07 05:32:25','2017-02-07 17:32:25',1303697,1510901),(17,'2017-02-07 17:32:25','2017-02-08 05:32:25',1960511,1297719),(18,'2017-02-08 05:32:25','2017-02-08 17:32:25',1513057,1297719),(19,'2017-02-08 17:32:25','2017-02-09 05:32:25',1549485,1288681),(20,'2017-02-09 05:32:25','2017-02-09 17:32:25',1510901,1303697),(21,'2017-02-09 17:32:25','2017-02-10 05:32:25',1513057,1512591),(22,'2017-02-10 05:32:25','2017-02-10 17:32:25',1288681,1960511),(23,'2017-02-10 17:32:25','2017-02-11 05:32:25',1303697,1297719),(24,'2017-02-11 05:32:25','2017-02-11 17:32:25',1297719,1510901),(25,'2017-02-11 17:32:25','2017-02-12 05:32:25',1288681,1510901),(26,'2017-02-12 05:32:25','2017-02-12 17:32:25',1510901,1513057),(27,'2017-02-12 17:32:25','2017-02-13 05:32:25',1510901,1512591),(28,'2017-02-13 05:32:25','2017-02-13 17:32:25',1512591,1510901),(29,'2017-02-13 17:32:25','2017-02-14 05:32:25',1288681,1960511),(30,'2017-02-14 05:32:25','2017-02-14 17:32:25',1549485,1513057),(31,'2017-02-14 17:32:25','2017-02-15 05:32:25',1297719,1513057),(32,'2017-02-15 05:32:25','2017-02-15 17:32:25',1549485,1510901),(33,'2017-02-15 17:32:25','2017-02-16 05:32:25',1297719,1513057),(34,'2017-02-16 05:32:25','2017-02-16 17:32:25',1513057,1297719),(35,'2017-02-16 17:32:25','2017-02-17 05:32:25',1960511,1512591),(36,'2017-02-17 05:32:25','2017-02-17 17:32:25',1513057,1510901),(37,'2017-02-17 17:32:25','2017-02-18 05:32:25',1512591,1960511),(38,'2017-02-18 05:32:25','2017-02-18 17:32:25',1513057,1510901),(39,'2017-02-18 17:32:25','2017-02-19 05:32:25',1303697,1512591),(40,'2017-02-19 05:32:25','2017-02-19 17:32:25',1288681,1303697),(41,'2017-02-19 17:32:25','2017-02-20 05:32:25',1303697,1513057),(42,'2017-02-20 05:32:25','2017-02-20 17:32:25',1513057,1303697),(43,'2017-02-20 17:32:25','2017-02-21 05:32:25',1297719,1960511),(44,'2017-02-21 05:32:25','2017-02-21 17:32:25',1510901,1297719),(45,'2017-02-21 17:32:25','2017-02-22 05:32:25',1513057,1960511),(46,'2017-02-22 05:32:25','2017-02-22 17:32:25',1510901,1549485),(47,'2017-02-22 17:32:25','2017-02-23 05:32:25',1510901,1549485),(48,'2017-02-23 05:32:25','2017-02-23 17:32:25',1960511,1513057),(49,'2017-02-23 17:32:25','2017-02-24 05:32:25',1512591,1960511),(50,'2017-02-24 05:32:25','2017-02-24 17:32:25',1513057,1549485),(51,'2017-02-24 17:32:25','2017-02-25 05:32:25',1960511,1549485),(52,'2017-02-25 05:32:25','2017-02-25 17:32:25',1303697,1512591),(53,'2017-02-25 17:32:25','2017-02-26 05:32:25',1297719,1512591),(54,'2017-02-26 05:32:25','2017-02-26 17:32:25',1303697,1549485),(55,'2017-02-26 17:32:25','2017-02-27 05:32:25',1297719,1303697),(56,'2017-02-27 05:32:25','2017-02-27 17:32:25',1549485,1960511),(57,'2017-02-27 17:32:25','2017-02-28 05:32:25',1303697,1297719),(58,'2017-02-28 05:32:25','2017-02-28 17:32:25',1960511,1510901),(59,'2017-02-28 17:32:25','2017-03-01 05:32:25',1549485,1512591),(60,'2017-03-01 05:32:25','2017-03-01 17:32:25',1303697,1288681),(61,'2017-03-01 17:32:25','2017-03-02 05:32:25',1513057,1288681),(62,'2017-03-02 05:32:25','2017-03-02 17:32:25',1303697,1510901),(63,'2017-03-02 17:32:25','2017-03-03 05:32:25',1288681,1512591),(64,'2017-03-03 05:32:25','2017-03-03 17:32:25',1549485,1510901),(65,'2017-03-03 17:32:25','2017-03-04 05:32:25',1549485,1297719),(66,'2017-03-04 05:32:25','2017-03-04 17:32:25',1513057,1288681),(67,'2017-03-04 17:32:25','2017-03-05 05:32:25',1960511,1549485),(68,'2017-03-05 05:32:25','2017-03-05 17:32:25',1288681,1303697),(69,'2017-03-05 17:32:25','2017-03-06 05:32:25',1513057,1512591),(70,'2017-03-06 05:32:25','2017-03-06 17:32:25',1303697,1297719),(71,'2017-03-06 17:32:25','2017-03-07 05:32:25',1549485,1303697),(72,'2017-03-07 05:32:25','2017-03-07 17:32:25',1549485,1288681),(73,'2017-03-07 17:32:25','2017-03-08 05:32:25',1303697,1549485),(74,'2017-03-08 05:32:25','2017-03-08 17:32:25',1960511,1512591),(75,'2017-03-08 17:32:25','2017-03-09 05:32:25',1288681,1549485),(76,'2017-03-09 05:32:25','2017-03-09 17:32:25',1549485,1303697),(77,'2017-03-09 17:32:25','2017-03-10 05:32:25',1288681,1512591),(78,'2017-03-10 05:32:25','2017-03-10 17:32:25',1513057,1297719),(79,'2017-03-10 17:32:25','2017-03-11 05:32:25',1512591,1513057),(80,'2017-03-11 05:32:25','2017-03-11 17:32:25',1513057,1303697),(81,'2017-03-11 17:32:25','2017-03-12 05:32:25',1960511,1549485),(82,'2017-03-12 05:32:25','2017-03-12 17:32:25',1513057,1549485),(83,'2017-03-12 17:32:25','2017-03-13 05:32:25',1513057,1288681),(84,'2017-03-13 05:32:25','2017-03-13 17:32:25',1510901,1512591),(85,'2017-03-13 17:32:25','2017-03-14 05:32:25',1549485,1512591),(86,'2017-03-14 05:32:25','2017-03-14 17:32:25',1303697,1297719),(87,'2017-03-14 17:32:25','2017-03-15 05:32:25',1960511,1510901),(88,'2017-03-15 05:32:25','2017-03-15 17:32:25',1960511,1297719),(89,'2017-03-15 17:32:25','2017-03-16 05:32:25',1303697,1960511),(90,'2017-03-16 05:32:25','2017-03-16 17:32:25',1549485,1303697),(91,'2017-03-16 17:32:25','2017-03-17 05:32:25',1297719,1512591),(92,'2017-03-17 05:32:25','2017-03-17 17:32:25',1297719,1303697),(93,'2017-03-17 17:32:25','2017-03-18 05:32:25',1288681,1303697),(94,'2017-03-18 05:32:25','2017-03-18 17:32:25',1297719,1513057),(95,'2017-03-18 17:32:25','2017-03-19 05:32:25',1303697,1510901),(96,'2017-03-19 05:32:25','2017-03-19 17:32:25',1513057,1960511),(97,'2017-03-19 17:32:25','2017-03-20 05:32:25',1512591,1960511),(98,'2017-03-20 05:32:25','2017-03-20 17:32:25',1512591,1960511),(99,'2017-03-20 17:32:25','2017-03-21 05:32:25',1288681,1512591),(100,'2017-03-21 05:32:25','2017-03-21 17:32:25',1288681,1512591);
/*!40000 ALTER TABLE `04-shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `05-region`
--

DROP TABLE IF EXISTS `05-region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `05-region` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Characteristic` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `05-region`
--

LOCK TABLES `05-region` WRITE;
/*!40000 ALTER TABLE `05-region` DISABLE KEYS */;
INSERT INTO `05-region` VALUES (1,'B1','Khu Điều Trị'),(2,'A1','Khu Ở Người Nhà'),(3,'D1','Cấp Cứu'),(4,'C1','Khoa Ngoại Tổng Hợp'),(5,'C2','Khoa Nội Tổng Hợp'),(6,'C3','Chấn Thương Chỉnh Hình');
/*!40000 ALTER TABLE `05-region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `06-medicine`
--

DROP TABLE IF EXISTS `06-medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `06-medicine` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Bill` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `06-medicine`
--

LOCK TABLES `06-medicine` WRITE;
/*!40000 ALTER TABLE `06-medicine` DISABLE KEYS */;
INSERT INTO `06-medicine` VALUES (1,'Viabiovit',50000),(2,'Safaria',20000),(3,'Omega 3',16000),(4,'Vitamin D',10000),(5,'Panadol Extra',20000),(6,'Paracetamol',20000),(7,'Tetracycline',60000),(8,'Neurontin',100000),(9,'Thuốc Ho Bảo Thanh',35000),(10,'Methionin',31500),(11,'Abernil',95500),(12,'Hyposufen',21000),(13,'Flubium',35000);
/*!40000 ALTER TABLE `06-medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `07-patient`
--

DROP TABLE IF EXISTS `07-patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `07-patient` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `IDStaff` int(11) DEFAULT NULL,
  `AdmittedTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDStaff_idx` (`IDStaff`),
  CONSTRAINT `IDStaff` FOREIGN KEY (`IDStaff`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `07-patient`
--

LOCK TABLES `07-patient` WRITE;
/*!40000 ALTER TABLE `07-patient` DISABLE KEYS */;
INSERT INTO `07-patient` VALUES (1,'Nguyễn Đỗ Đức Anh','Quận 1 - TP.HCM','Bệnh nhân nội trú',1514444,'2017-07-22 06:34:56'),(2,'Nguyễn Quốc Bảo','Quận 2 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2017-09-14 06:19:59'),(3,'Nguyễn Quốc Bảo','Quận 3 - TP.HCM','Bệnh nhân nội trú',1513056,'2016-12-31 23:14:09'),(4,'Chìu Tuấn Bình','Quận 4 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2017-11-21 06:44:50'),(5,'Đỗ Lê Duy','Quận 5 - TP.HCM','Bệnh nhân nội trú',1514444,'2015-03-04 18:33:32'),(6,'Nguyễn Văn Đức','Quận 6 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2015-07-23 18:07:15'),(7,'Trương Đình Đức','Quận 7 - TP.HCM','Bệnh nhân nội trú',1514444,'2016-03-26 09:12:28'),(8,'Nguyễn Quang Hà','Quận 8 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2017-12-18 02:33:36'),(9,'Nguyễn Đình Hào','Quận 9 - TP.HCM','Bệnh nhân nội trú',1513919,'2018-01-13 08:53:06'),(10,'Văn Minh Hào','Quận 10 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2015-08-14 23:36:05'),(11,'Trần Trung Hiếu','Quận 11 - TP.HCM','Bệnh nhân nội trú',1513056,'2016-06-10 17:40:56'),(12,'Lê Duy Hiển','Quận 12 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2015-10-09 10:42:57'),(13,'Nguyễn Văn Hùng','Quận 1 - TP.HCM','Bệnh nhân nội trú',1513056,'2017-08-19 13:50:48'),(14,'Nguyễn Ngọc Kỷ','Quận 2 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2016-08-06 07:43:00'),(15,'Hoàng Đức Linh','Quận 3 - TP.HCM','Bệnh nhân nội trú',1513919,'2015-05-05 01:28:12'),(16,'Lê Phước Lộc','Quận 4 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2016-01-24 13:08:33'),(17,'Nguyễn Hoàng Lộc','Quận 5 - TP.HCM','Bệnh nhân nội trú',1514444,'2017-01-31 15:51:49'),(18,'Trần Như Lực','Quận 6 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2015-07-18 02:57:33'),(19,'Phan Minh Nhuận','Quận 7 - TP.HCM','Bệnh nhân nội trú',1514444,'2016-06-14 09:30:12'),(20,'Trần Quốc Pháp','Quận 8 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2016-11-13 12:30:40'),(21,'Đỗ Thành Phát','Quận 9 - TP.HCM','Bệnh nhân nội trú',1513056,'2015-12-31 23:37:58'),(22,'Đỗ Hữu Phúc','Quận 10 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2016-03-14 09:49:50'),(23,'Nguyễn Thành Phương','Quận 11 - TP.HCM','Bệnh nhân nội trú',1514444,'2015-12-11 00:22:47'),(24,'Văn Hữu Quốc','Quận 12 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2016-03-08 16:52:53'),(25,'Trần Ngọc Quý','Quận 1 - TP.HCM','Bệnh nhân nội trú',1513919,'2015-08-20 06:02:07'),(26,'Nguyễn Viết Sang','Quận 2 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2015-06-20 01:23:55'),(27,'Nguyễn Văn Thành','Quận 3 - TP.HCM','Bệnh nhân nội trú',1513919,'2015-03-22 23:46:00'),(28,'Đoàn Phú Thiện','Quận 4 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2016-01-13 08:45:33'),(29,'Lê Minh Thịnh','Quận 5 - TP.HCM','Bệnh nhân nội trú',1513056,'2015-09-05 17:35:03'),(30,'Phạm Đức Thịnh','Quận 6 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2016-08-24 13:04:32'),(31,'Mai Lê Thông','Quận 7 - TP.HCM','Bệnh nhân nội trú',1514444,'2016-12-10 18:20:35'),(32,'Nguyễn Hữu Anh Tiến','Quận 8 - TP.HCM','Bệnh nhân ngoại trú',1513056,'2017-03-20 05:15:29'),(33,'Ngô Cao Trí','Quận 9 - TP.HCM','Bệnh nhân nội trú',1513056,'2016-09-22 15:25:39'),(34,'Đặng Nhật Trình','Quận 10 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2015-01-09 18:21:19'),(35,'Lê Quang Trình','Quận 11 - TP.HCM','Bệnh nhân nội trú',1514444,'2017-06-18 12:51:40'),(36,'Lê Hữu Trọng','Quận 12 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2015-01-20 16:23:32'),(37,'Phồng Quang Tuấn','Quận 1 - TP.HCM','Bệnh nhân nội trú',1514444,'2015-08-31 14:22:35'),(38,'Hoàng Lê Chánh Tú','Quận 2 - TP.HCM','Bệnh nhân ngoại trú',1513919,'2016-01-18 00:04:25'),(39,'Mai Đức Tú','Quận 3 - TP.HCM','Bệnh nhân nội trú',1513056,'2016-09-05 20:40:13'),(40,'Phạm Thế Vỹ','Quận 4 - TP.HCM','Bệnh nhân ngoại trú',1514444,'2015-12-17 18:05:49');
/*!40000 ALTER TABLE `07-patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `08-patientphone`
--

DROP TABLE IF EXISTS `08-patientphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `08-patientphone` (
  `ID` int(11) NOT NULL,
  `PhoneNum` varchar(12) NOT NULL,
  PRIMARY KEY (`ID`,`PhoneNum`),
  CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `07-patient` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `08-patientphone`
--

LOCK TABLES `08-patientphone` WRITE;
/*!40000 ALTER TABLE `08-patientphone` DISABLE KEYS */;
INSERT INTO `08-patientphone` VALUES (1,'0981864263'),(2,'0964621454'),(3,'0969510221 '),(4,'01627671431'),(5,'0986485847'),(6,'01665271621'),(7,'01658903620'),(8,'01265458526'),(9,'0935172958'),(10,'0948441310'),(11,'0971493877'),(12,'01697991504'),(13,'01234503569'),(14,'0971125811'),(15,'01658924393'),(16,'01295456852'),(17,'01626633637'),(18,'01223543841'),(19,'01632488676'),(20,'01682477933'),(21,'01652071523'),(22,'0963929455'),(23,'0963584406'),(24,'01694828385'),(25,'0984885834'),(26,'0937292905'),(27,'0969241475'),(28,'01647656116'),(29,'0961486470'),(30,'0907494137'),(31,'01265897806'),(32,'0931430970'),(33,'01277239269'),(34,'01647041117'),(35,'01674078769'),(36,'0947643174'),(37,'01694229351'),(38,'01628364469'),(39,'0944527374'),(40,'01646733934');
/*!40000 ALTER TABLE `08-patientphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `09-anamnesis`
--

DROP TABLE IF EXISTS `09-anamnesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `09-anamnesis` (
  `IDPatient` int(11) NOT NULL,
  `Anamnesis` varchar(45) NOT NULL,
  PRIMARY KEY (`IDPatient`,`Anamnesis`),
  CONSTRAINT `anaPatientID` FOREIGN KEY (`IDPatient`) REFERENCES `07-patient` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `09-anamnesis`
--

LOCK TABLES `09-anamnesis` WRITE;
/*!40000 ALTER TABLE `09-anamnesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `09-anamnesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `10-apparatus`
--

DROP TABLE IF EXISTS `10-apparatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `10-apparatus` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `RemainNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `10-apparatus`
--

LOCK TABLES `10-apparatus` WRITE;
/*!40000 ALTER TABLE `10-apparatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `10-apparatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `11-purchaseorder`
--

DROP TABLE IF EXISTS `11-purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `11-purchaseorder` (
  `ID` int(11) NOT NULL,
  `OrderedTime` timestamp NULL DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `orderStaffID` (`StaffID`),
  CONSTRAINT `orderStaffID` FOREIGN KEY (`StaffID`) REFERENCES `01-staff` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `11-purchaseorder`
--

LOCK TABLES `11-purchaseorder` WRITE;
/*!40000 ALTER TABLE `11-purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `11-purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `12-treatment`
--

DROP TABLE IF EXISTS `12-treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `12-treatment` (
  `ID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `Begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `HeartBeat` int(11) DEFAULT NULL,
  `BloodPressure` varchar(10) DEFAULT NULL,
  `BodyHeat` decimal(3,1) DEFAULT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`PatientID`),
  KEY `DoctorID_idx` (`DoctorID`),
  KEY `TreatPatientID_idx` (`PatientID`),
  CONSTRAINT `DoctorID` FOREIGN KEY (`DoctorID`) REFERENCES `03-doctor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TreatPatientID` FOREIGN KEY (`PatientID`) REFERENCES `07-patient` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `12-treatment`
--

LOCK TABLES `12-treatment` WRITE;
/*!40000 ALTER TABLE `12-treatment` DISABLE KEYS */;
/*!40000 ALTER TABLE `12-treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `13-examination`
--

DROP TABLE IF EXISTS `13-examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `13-examination` (
  `orderNum` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `NextTime` timestamp NULL DEFAULT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderNum`,`PatientID`),
  KEY `ExamPatientID_idx` (`PatientID`),
  KEY `ExamDoctorID_idx` (`DoctorID`),
  CONSTRAINT `ExamDoctorID` FOREIGN KEY (`DoctorID`) REFERENCES `03-doctor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ExamPatientID` FOREIGN KEY (`PatientID`) REFERENCES `07-patient` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `13-examination`
--

LOCK TABLES `13-examination` WRITE;
/*!40000 ALTER TABLE `13-examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `13-examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `14-surgery`
--

DROP TABLE IF EXISTS `14-surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `14-surgery` (
  `SurgeryID` int(11) NOT NULL,
  `TreatmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `Time` decimal(5,2) NOT NULL,
  `Begin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Level` int(11) DEFAULT NULL,
  PRIMARY KEY (`SurgeryID`,`TreatmentID`,`PatientID`),
  KEY `SurTreatmentID_idx` (`TreatmentID`,`PatientID`),
  CONSTRAINT `SurTreatmentID` FOREIGN KEY (`TreatmentID`, `PatientID`) REFERENCES `12-treatment` (`ID`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `14-surgery`
--

LOCK TABLES `14-surgery` WRITE;
/*!40000 ALTER TABLE `14-surgery` DISABLE KEYS */;
/*!40000 ALTER TABLE `14-surgery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `15-room`
--

DROP TABLE IF EXISTS `15-room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `15-room` (
  `ID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `Area` decimal(5,1) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`RegionID`),
  KEY `RoomRegionID_idx` (`RegionID`),
  CONSTRAINT `RoomRegionID` FOREIGN KEY (`RegionID`) REFERENCES `05-region` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `15-room`
--

LOCK TABLES `15-room` WRITE;
/*!40000 ALTER TABLE `15-room` DISABLE KEYS */;
/*!40000 ALTER TABLE `15-room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `16-roomapparatus`
--

DROP TABLE IF EXISTS `16-roomapparatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `16-roomapparatus` (
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`RoomID`,`RegionID`,`ID`),
  CONSTRAINT `RoomID` FOREIGN KEY (`RoomID`, `RegionID`) REFERENCES `15-room` (`ID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `16-roomapparatus`
--

LOCK TABLES `16-roomapparatus` WRITE;
/*!40000 ALTER TABLE `16-roomapparatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `16-roomapparatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `17-surgeryroom`
--

DROP TABLE IF EXISTS `17-surgeryroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `17-surgeryroom` (
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  PRIMARY KEY (`RoomID`,`RegionID`),
  CONSTRAINT `Room` FOREIGN KEY (`RoomID`, `RegionID`) REFERENCES `15-room` (`ID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `17-surgeryroom`
--

LOCK TABLES `17-surgeryroom` WRITE;
/*!40000 ALTER TABLE `17-surgeryroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `17-surgeryroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `18-treatmentroom`
--

DROP TABLE IF EXISTS `18-treatmentroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `18-treatmentroom` (
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `Price` decimal(7,1) DEFAULT NULL,
  `NumberofBed` int(11) NOT NULL,
  PRIMARY KEY (`RoomID`,`RegionID`),
  CONSTRAINT `TreatmentRoom` FOREIGN KEY (`RoomID`, `RegionID`) REFERENCES `15-room` (`ID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `18-treatmentroom`
--

LOCK TABLES `18-treatmentroom` WRITE;
/*!40000 ALTER TABLE `18-treatmentroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `18-treatmentroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `19-bed`
--

DROP TABLE IF EXISTS `19-bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `19-bed` (
  `ID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `PatientID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`RoomID`,`RegionID`),
  KEY `BedRoom_idx` (`RoomID`,`RegionID`),
  KEY `BedPatient_idx` (`PatientID`),
  CONSTRAINT `BedPatient` FOREIGN KEY (`PatientID`) REFERENCES `07-patient` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `BedRoom` FOREIGN KEY (`RoomID`, `RegionID`) REFERENCES `15-room` (`ID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `19-bed`
--

LOCK TABLES `19-bed` WRITE;
/*!40000 ALTER TABLE `19-bed` DISABLE KEYS */;
/*!40000 ALTER TABLE `19-bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `20-treatmentroomshift`
--

DROP TABLE IF EXISTS `20-treatmentroomshift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `20-treatmentroomshift` (
  `ShiftID` int(11) NOT NULL,
  `RoomId` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `Begin` timestamp NULL DEFAULT NULL,
  `End` timestamp NULL DEFAULT NULL,
  `DutyStaff` int(11) DEFAULT NULL,
  PRIMARY KEY (`ShiftID`,`RoomId`,`RegionID`),
  KEY `TmRoom_idx` (`RoomId`,`RegionID`),
  KEY `DutyID_idx` (`DutyStaff`),
  CONSTRAINT `DutyID` FOREIGN KEY (`DutyStaff`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TmRoom` FOREIGN KEY (`RoomId`, `RegionID`) REFERENCES `18-treatmentroom` (`RoomID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `20-treatmentroomshift`
--

LOCK TABLES `20-treatmentroomshift` WRITE;
/*!40000 ALTER TABLE `20-treatmentroomshift` DISABLE KEYS */;
/*!40000 ALTER TABLE `20-treatmentroomshift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `21-surgeryroomshift`
--

DROP TABLE IF EXISTS `21-surgeryroomshift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `21-surgeryroomshift` (
  `ShiftID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `Begin` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ShiftID`,`RoomID`,`RegionID`),
  KEY `SrsRoom_idx` (`RoomID`,`RegionID`),
  CONSTRAINT `SrsRoom` FOREIGN KEY (`RoomID`, `RegionID`) REFERENCES `17-surgeryroom` (`RoomID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `21-surgeryroomshift`
--

LOCK TABLES `21-surgeryroomshift` WRITE;
/*!40000 ALTER TABLE `21-surgeryroomshift` DISABLE KEYS */;
/*!40000 ALTER TABLE `21-surgeryroomshift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `22-inpatientprescription`
--

DROP TABLE IF EXISTS `22-inpatientprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `22-inpatientprescription` (
  `TreatmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `MedicineID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Dosage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TreatmentID`,`PatientID`,`MedicineID`),
  KEY `InMedicineID_idx` (`MedicineID`),
  CONSTRAINT `InMedicineID` FOREIGN KEY (`MedicineID`) REFERENCES `06-medicine` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `InTreatmentID` FOREIGN KEY (`TreatmentID`, `PatientID`) REFERENCES `12-treatment` (`ID`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `22-inpatientprescription`
--

LOCK TABLES `22-inpatientprescription` WRITE;
/*!40000 ALTER TABLE `22-inpatientprescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `22-inpatientprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `23-outpatientprescription`
--

DROP TABLE IF EXISTS `23-outpatientprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `23-outpatientprescription` (
  `OrderNumber` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `MedicineID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Dosage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderNumber`,`MedicineID`,`PatientID`),
  KEY `Examination_idx` (`OrderNumber`,`PatientID`),
  KEY `OutMedicine_idx` (`MedicineID`),
  CONSTRAINT `Examination` FOREIGN KEY (`OrderNumber`, `PatientID`) REFERENCES `13-examination` (`orderNum`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `OutMedicine` FOREIGN KEY (`MedicineID`) REFERENCES `06-medicine` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `23-outpatientprescription`
--

LOCK TABLES `23-outpatientprescription` WRITE;
/*!40000 ALTER TABLE `23-outpatientprescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `23-outpatientprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `24-surgeon`
--

DROP TABLE IF EXISTS `24-surgeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `24-surgeon` (
  `SurgeryID` int(11) NOT NULL,
  `TreatmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  PRIMARY KEY (`SurgeryID`,`TreatmentID`,`PatientID`,`DoctorID`),
  KEY `Doctor_idx` (`DoctorID`),
  CONSTRAINT `Doctor` FOREIGN KEY (`DoctorID`) REFERENCES `03-doctor` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Surgery` FOREIGN KEY (`SurgeryID`, `TreatmentID`, `PatientID`) REFERENCES `14-surgery` (`SurgeryID`, `TreatmentID`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `24-surgeon`
--

LOCK TABLES `24-surgeon` WRITE;
/*!40000 ALTER TABLE `24-surgeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `24-surgeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `25-nurse`
--

DROP TABLE IF EXISTS `25-nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `25-nurse` (
  `ShiftId` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  `NurseID` int(11) NOT NULL,
  PRIMARY KEY (`ShiftId`,`RoomID`,`RegionID`,`NurseID`),
  KEY `nurse_idx` (`NurseID`),
  CONSTRAINT `nurse` FOREIGN KEY (`NurseID`) REFERENCES `01-staff` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `nurseShiftID` FOREIGN KEY (`ShiftId`, `RoomID`, `RegionID`) REFERENCES `20-treatmentroomshift` (`ShiftID`, `RoomId`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `25-nurse`
--

LOCK TABLES `25-nurse` WRITE;
/*!40000 ALTER TABLE `25-nurse` DISABLE KEYS */;
/*!40000 ALTER TABLE `25-nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `26-surgerytakingplace`
--

DROP TABLE IF EXISTS `26-surgerytakingplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `26-surgerytakingplace` (
  `SurgeryID` int(11) NOT NULL,
  `TreatmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ShiftID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `RegionID` int(11) NOT NULL,
  PRIMARY KEY (`TreatmentID`,`PatientID`,`ShiftID`,`RoomID`,`RegionID`),
  KEY `SurgeryRoomShiftConstraints_idx` (`ShiftID`,`RoomID`,`RegionID`),
  KEY `SurgeryConstraints_idx` (`SurgeryID`,`TreatmentID`,`PatientID`),
  CONSTRAINT `SurgeryConstraints` FOREIGN KEY (`SurgeryID`, `TreatmentID`, `PatientID`) REFERENCES `14-surgery` (`SurgeryID`, `TreatmentID`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SurgeryRoomShiftConstraints` FOREIGN KEY (`ShiftID`, `RoomID`, `RegionID`) REFERENCES `21-surgeryroomshift` (`ShiftID`, `RoomID`, `RegionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `26-surgerytakingplace`
--

LOCK TABLES `26-surgerytakingplace` WRITE;
/*!40000 ALTER TABLE `26-surgerytakingplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `26-surgerytakingplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `27-surgeryappatarus`
--

DROP TABLE IF EXISTS `27-surgeryappatarus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `27-surgeryappatarus` (
  `SurgeryId` int(11) NOT NULL,
  `TreatmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `AppatausID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`SurgeryId`,`AppatausID`,`PatientID`,`TreatmentID`),
  KEY `SurgeryConstraint_idx` (`SurgeryId`,`TreatmentID`,`PatientID`),
  KEY `AppatarusID_idx` (`AppatausID`),
  CONSTRAINT `AppatarusID` FOREIGN KEY (`AppatausID`) REFERENCES `10-apparatus` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SurgeryConstraint` FOREIGN KEY (`SurgeryId`, `TreatmentID`, `PatientID`) REFERENCES `14-surgery` (`SurgeryID`, `TreatmentID`, `PatientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `27-surgeryappatarus`
--

LOCK TABLES `27-surgeryappatarus` WRITE;
/*!40000 ALTER TABLE `27-surgeryappatarus` DISABLE KEYS */;
/*!40000 ALTER TABLE `27-surgeryappatarus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `28-purchaseordercontaining`
--

DROP TABLE IF EXISTS `28-purchaseordercontaining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `28-purchaseordercontaining` (
  `OrderID` int(11) NOT NULL,
  `AppatarusID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`AppatarusID`),
  KEY `Constraint2_idx` (`AppatarusID`),
  CONSTRAINT `Constraint` FOREIGN KEY (`OrderID`) REFERENCES `11-purchaseorder` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Constraint2` FOREIGN KEY (`AppatarusID`) REFERENCES `10-apparatus` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `28-purchaseordercontaining`
--

LOCK TABLES `28-purchaseordercontaining` WRITE;
/*!40000 ALTER TABLE `28-purchaseordercontaining` DISABLE KEYS */;
/*!40000 ALTER TABLE `28-purchaseordercontaining` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-25  3:01:14
