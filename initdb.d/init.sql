-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: AMS
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `accounttable`
--

DROP TABLE IF EXISTS `accounttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttable` (
  `Id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` text COLLATE utf8mb4_general_ci NOT NULL,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Permission` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttable`
--

LOCK TABLES `accounttable` WRITE;
/*!40000 ALTER TABLE `accounttable` DISABLE KEYS */;
INSERT INTO `accounttable` VALUES ('23110001','0000','蝮よ悽縲菴ｳ荵・,0,1),('23110002','0000','陦梧・縲逧楢ｼ・,0,1),('23110003','0000','蝟懷暑蜷阪譎ｺ邏',0,1),('23110004','0000','蟾昜ｸ翫譎ｺ荵・,0,1),('23110005','0000','螟ｧ荵・ｿ昴蟠・％',0,1),('23110006','0000','迚ｧ驥弱豁ｩ鄒・,0,1),('23110007','0000','貂｡霎ｺ縲鬚ｯ譁・,0,1),('23110008','0000','荳ｭ莠輔闥ｼ蠢・,0,1),('23110009','0000','蜚蝉ｸ九髢・,0,1),('23110010','0000','蟆剰ｷｯ縲螟ｧ譎ｺ',0,1),('23110011','0000','蠕ｷ逕ｰ縲豸ｼ荵・,0,1),('23110012','0000','騾｢貔､縲譏取ぁ',0,1),('23110013','0000','貂｡驍翫驕ｼ',0,1),('23110015','0000','螟ｪ逕ｰ縲謔逋ｻ',0,1),('23110017','0000','螟ｧ謌ｸ莠輔諷ｶ莨・,0,1),('23110018','0000','貂｡驍翫闥ｼ螢ｫ',0,1),('23110019','0000','驕謎ｸ九螟ｧ蝨ｰ',0,1),('23110020','0000','螟ｧ逡縲荳逵・,0,1),('23110021','0000','荳ｭ驥弱螟ｩ譎ｴ',0,1),('23110022','0000','驥醍伐縲鄙・,0,1),('23110024','0000','荳ｭ譚代諷郁動',0,1),('23110026','0000','莠募哨縲豬ｷ霈・,0,1),('23110027','0000','譽ｮ縲蛛･譁・,0,1),('23110031','0000','蟯｡譛ｬ縲豬ｩ逶ｴ',0,1),('23110033','0000','菴占陸縲螟ｧ蜥・,0,1),('23110034','0000','蜿ｯ蜈舌豺ｳ蝟・,0,1),('23120009','0000','螻ｱ豬ｦ縲霈疲悴蜉',0,1);
/*!40000 ALTER TABLE `accounttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_info`
--

DROP TABLE IF EXISTS `application_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_info` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  `target_date_end` date DEFAULT NULL,
  `periods` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responseDate` date DEFAULT NULL,
  `responder_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `responder_comment` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `printed_date` date DEFAULT NULL,
  `printed_by_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `course_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `student_group` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `student_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `student_no` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` int DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `student_id` (`student_id`),
  KEY `responder_id` (`responder_id`),
  KEY `printed_by_id` (`printed_by_id`),
  CONSTRAINT `application_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `accounttable` (`Id`),
  CONSTRAINT `application_info_ibfk_2` FOREIGN KEY (`responder_id`) REFERENCES `accounttable` (`Id`),
  CONSTRAINT `application_info_ibfk_3` FOREIGN KEY (`printed_by_id`) REFERENCES `accounttable` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_info`
--

LOCK TABLES `application_info` WRITE;
/*!40000 ALTER TABLE `application_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `period_all` int DEFAULT NULL,
  `period_1` int DEFAULT NULL,
  `period_2` int DEFAULT NULL,
  `period_3` int DEFAULT NULL,
  `period_4` int DEFAULT NULL,
  `period_5` int DEFAULT NULL,
  `period_6` int DEFAULT NULL,
  `period_7` int DEFAULT NULL,
  `period_8` int DEFAULT NULL,
  `period_9` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`student_id`,`date`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `accounttable` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belong`
--

DROP TABLE IF EXISTS `belong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `belong` (
  `student_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `department_id` int DEFAULT NULL,
  `grade_id` int DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  `attendance_number` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_id` (`student_id`),
  KEY `department_id` (`department_id`),
  KEY `grade_id` (`grade_id`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `belong_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `accounttable` (`Id`),
  CONSTRAINT `belong_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `belong_ibfk_3` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`),
  CONSTRAINT `belong_ibfk_4` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belong`
--

LOCK TABLES `belong` WRITE;
/*!40000 ALTER TABLE `belong` DISABLE KEYS */;
/*!40000 ALTER TABLE `belong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_timetable`
--

DROP TABLE IF EXISTS `daily_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_timetable` (
  `timetable_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `department_id` int NOT NULL,
  `grade_id` int NOT NULL,
  `major_id` int DEFAULT NULL,
  `period_1` int DEFAULT NULL,
  `period_2` int DEFAULT NULL,
  `period_3` int DEFAULT NULL,
  `period_4` int DEFAULT NULL,
  `period_5` int DEFAULT NULL,
  `period_6` int DEFAULT NULL,
  `period_7` int DEFAULT NULL,
  `period_8` int DEFAULT NULL,
  `period_9` int DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`timetable_id`),
  UNIQUE KEY `uq_daily_class` (`date`,`department_id`,`grade_id`,`major_id`),
  KEY `department_id` (`department_id`),
  KEY `grade_id` (`grade_id`),
  KEY `major_id` (`major_id`),
  KEY `period_1` (`period_1`),
  KEY `period_2` (`period_2`),
  KEY `period_3` (`period_3`),
  KEY `period_4` (`period_4`),
  KEY `period_5` (`period_5`),
  KEY `period_6` (`period_6`),
  KEY `period_7` (`period_7`),
  KEY `period_8` (`period_8`),
  KEY `period_9` (`period_9`),
  CONSTRAINT `daily_timetable_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE,
  CONSTRAINT `daily_timetable_ibfk_10` FOREIGN KEY (`period_7`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_11` FOREIGN KEY (`period_8`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_12` FOREIGN KEY (`period_9`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_2` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`) ON DELETE CASCADE,
  CONSTRAINT `daily_timetable_ibfk_3` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE,
  CONSTRAINT `daily_timetable_ibfk_4` FOREIGN KEY (`period_1`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_5` FOREIGN KEY (`period_2`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_6` FOREIGN KEY (`period_3`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_7` FOREIGN KEY (`period_4`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_8` FOREIGN KEY (`period_5`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL,
  CONSTRAINT `daily_timetable_ibfk_9` FOREIGN KEY (`period_6`) REFERENCES `subject_info` (`subject_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_timetable`
--

LOCK TABLES `daily_timetable` WRITE;
/*!40000 ALTER TABLE `daily_timetable` DISABLE KEYS */;
INSERT INTO `daily_timetable` VALUES (1,'2025-06-25',1,3,NULL,1,1,1,1,1,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `daily_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'諠・ｱ繧ｹ繝壹す繝｣繝ｪ繧ｹ繝亥ｭｦ遘・),(2,'諠・ｱ繧ｷ繧ｹ繝・Β蟄ｦ遘・),(3,'繧ｲ繝ｼ繝繝ｻVR繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ蟄ｦ遘・),(4,'CG繝・じ繧､繝ｳ蟄ｦ遘・),(5,'繝阪ャ繝医・蜍慕判繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ蟄ｦ遘・),(6,'繝・ず繧ｿ繝ｫ繝薙ず繝阪せ蟄ｦ遘・),(7,'繝帙ユ繝ｫ繝ｻ繝悶Λ繧､繝繝ｫ繝ｻ隕ｳ蜈牙ｭｦ遘・),(8,'蛹ｻ逋らｦ冗･我ｺ句漁蟄ｦ遘・),(9,'蛹ｻ逋よュ蝣ｱ繝槭ロ繧ｸ繝｡繝ｳ繝亥ｭｦ遘・),(10,'險ｺ逋よュ蝣ｱ邂｡逅・｣ｫ蟄ｦ遘・),(11,'邨悟霧繧｢繧ｷ繧ｹ繝亥ｭｦ遘・),(12,'蜈ｬ蜍吝藤邱丞粋蟄ｦ遘・),(13,'蝗ｽ髫姜T繝薙ず繝阪せ蟄ｦ遘・);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_info`
--

DROP TABLE IF EXISTS `error_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_info` (
  `error_id` int NOT NULL AUTO_INCREMENT,
  `error_date` date NOT NULL,
  `student_id` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`error_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `error_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `accounttable` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_info`
--

LOCK TABLES `error_info` WRITE;
/*!40000 ALTER TABLE `error_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int DEFAULT NULL,
  `grade_name` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`grade_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,1,'1蟷ｴ'),(2,1,'2蟷ｴ'),(3,1,'3蟷ｴ'),(4,2,'1蟷ｴ'),(5,2,'2蟷ｴ'),(6,3,'1蟷ｴ'),(7,3,'2蟷ｴ'),(8,3,'3蟷ｴ'),(9,4,'1蟷ｴ'),(10,4,'2蟷ｴ'),(11,4,'3蟷ｴ'),(12,5,'1蟷ｴ'),(13,5,'2蟷ｴ'),(14,6,'1蟷ｴ'),(15,6,'2蟷ｴ'),(16,7,'1蟷ｴ'),(17,7,'2蟷ｴ'),(18,8,'1蟷ｴ'),(19,8,'2蟷ｴ'),(20,9,'1蟷ｴ'),(21,9,'2蟷ｴ'),(22,10,'3蟷ｴ'),(23,11,'1蟷ｴ'),(24,12,'1蟷ｴ'),(25,12,'2蟷ｴ'),(26,13,'1蟷ｴ'),(27,13,'2蟷ｴ'),(28,13,'3蟷ｴ');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `major_id` int NOT NULL AUTO_INCREMENT,
  `grade_id` int DEFAULT NULL,
  `major_name` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`major_id`),
  KEY `grade_id` (`grade_id`),
  CONSTRAINT `major_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,1,'AI繝ｻIoT蟆よ判'),(2,1,'繝阪ャ繝医Ρ繝ｼ繧ｯ繝ｻ繧ｻ繧ｭ繝･繝ｪ繝・ぅ蟆よ判'),(3,2,'AI繝ｻIoT蟆よ判'),(4,2,'繝阪ャ繝医Ρ繝ｼ繧ｯ繝ｻ繧ｻ繧ｭ繝･繝ｪ繝・ぅ蟆よ判'),(5,4,'繧｢繝励Μ繧ｱ繝ｼ繧ｷ繝ｧ繝ｳ蟆よ判'),(6,4,'繧ｯ繝ｩ繧ｦ繝峨・繧､繝ｳ繝輔Λ蟆よ判'),(7,5,'繧｢繝励Μ繧ｱ繝ｼ繧ｷ繝ｧ繝ｳ蟆よ判'),(8,5,'繧ｯ繝ｩ繧ｦ繝峨・繧､繝ｳ繝輔Λ蟆よ判'),(9,6,'繧ｲ繝ｼ繝繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ繧ｳ繝ｼ繧ｹ'),(10,6,'VR繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ繧ｳ繝ｼ繧ｹ'),(11,7,'繧ｲ繝ｼ繝繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ繧ｳ繝ｼ繧ｹ'),(12,7,'VR繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ繧ｳ繝ｼ繧ｹ'),(13,8,'繧ｲ繝ｼ繝繧ｯ繝ｪ繧ｨ繧､繧ｿ繝ｼ繧ｳ繝ｼ繧ｹ'),(14,9,'3DCG繝・じ繧､繝ｳ繧ｳ繝ｼ繧ｹ'),(15,9,'繧､繝ｩ繧ｹ繝医・繝・じ繧､繝ｳ繧ｳ繝ｼ繧ｹ'),(16,10,'3DCG繝・じ繧､繝ｳ繧ｳ繝ｼ繧ｹ'),(17,10,'繧､繝ｩ繧ｹ繝医・繝・じ繧､繝ｳ繧ｳ繝ｼ繧ｹ'),(18,11,'3DCG繝・じ繧､繝ｳ繧ｳ繝ｼ繧ｹ'),(19,16,'繝帙ユ繝ｫ繝ｻ繝悶Λ繧､繝繝ｫ蟆よ判'),(20,16,'繝帙ユ繝ｫ繝ｻ隕ｳ蜈峨・隱槫ｭｦ蟆よ判'),(21,23,'鬮伜ｺｦ雉・ｼ蟆よ判'),(22,23,'蝨ｰ蝓溘う繝弱・繝ｼ繧ｷ繝ｧ繝ｳ蟆よ判');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_info`
--

DROP TABLE IF EXISTS `subject_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_info` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `grade_id` int DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  KEY `department_id` (`department_id`),
  KEY `grade_id` (`grade_id`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `subject_info_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `subject_info_ibfk_2` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`),
  CONSTRAINT `subject_info_ibfk_3` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_info`
--

LOCK TABLES `subject_info` WRITE;
/*!40000 ALTER TABLE `subject_info` DISABLE KEYS */;
INSERT INTO `subject_info` VALUES (1,'縺ゅ≠縺ゅ≠縺・,1,3,NULL);
/*!40000 ALTER TABLE `subject_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 11:08:15
