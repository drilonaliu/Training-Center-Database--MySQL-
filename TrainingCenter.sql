CREATE DATABASE  IF NOT EXISTS `trainingcenter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trainingcenter`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: trainingcenter
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrators` (
  `idPerson` int NOT NULL,
  `StafTypeID` int NOT NULL DEFAULT '2',
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idPerson`,`StafTypeID`),
  KEY `idPerson` (`idPerson`,`StafTypeID`),
  CONSTRAINT `administrators_ibfk_1` FOREIGN KEY (`idPerson`, `StafTypeID`) REFERENCES `staff` (`idPerson`, `StafTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (10000001,2,'Drejtoreshe'),(10000019,2,'IT'),(10000052,2,'Menaxher'),(10000053,2,'Ass. Manager'),(10000054,2,'Koordinator'),(10000055,2,'Mbikëqyrës'),(10000056,2,'IT'),(10000057,2,'Recepcion'),(10000058,2,'Zyrtar Financash'),(10000059,2,'Dizajner '),(10000060,2,'Resorset Humane'),(10000061,2,'Rrjetet Sociale'),(10000062,2,'Marketingu '),(10000063,2,'Teknike e Kontabilit'),(10000064,2,'Zyrtar në Administra'),(10000065,2,'Kontabilist'),(10000066,2,'Administratori i databazes'),(10000067,2,'Marketingu '),(10000068,2,'Database Administrat'),(10000069,2,'Koordinator'),(10000070,2,'Administratori i databazes');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `idAttendance` int NOT NULL AUTO_INCREMENT,
  `idEnrollment` int NOT NULL,
  `classDate` datetime NOT NULL,
  `attended` bit(2) DEFAULT NULL,
  PRIMARY KEY (`idAttendance`),
  KEY `fk_pjesemarja_regjistrimet1_idx` (`idEnrollment`),
  KEY `fk_pjesemarja_classes1_idx` (`classDate`),
  CONSTRAINT `fk_pjesemarja_classes1` FOREIGN KEY (`classDate`) REFERENCES `classes` (`classDate`),
  CONSTRAINT `fk_pjesemarja_regjistrimet1` FOREIGN KEY (`idEnrollment`) REFERENCES `enrollment` (`idEnrollment`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (400,10000,'2021-10-10 12:30:00',_binary ''),(401,10001,'2021-10-10 12:30:00',_binary ''),(402,10002,'2021-10-10 12:30:00',_binary ''),(403,10003,'2021-10-10 12:30:00',_binary ''),(404,10004,'2021-10-10 12:30:00',_binary ''),(405,10005,'2021-10-10 12:30:00',_binary ''),(406,10006,'2021-10-10 12:30:00',_binary ''),(407,10007,'2021-10-10 12:30:00',_binary ''),(408,10008,'2021-10-10 12:30:00',_binary ''),(409,10009,'2021-10-10 12:30:00',_binary ''),(410,10010,'2021-10-10 12:30:00',_binary ''),(411,10011,'2021-10-10 12:30:00',_binary ''),(412,10018,'2021-10-14 13:30:00',_binary ''),(413,10019,'2021-10-14 13:30:00',_binary ''),(414,10020,'2021-10-14 13:30:00',_binary ''),(415,10021,'2021-10-14 13:30:00',_binary ''),(416,10022,'2021-10-14 13:30:00',_binary ''),(417,10023,'2021-10-14 13:30:00',_binary ''),(418,10024,'2021-10-14 13:30:00',_binary ''),(419,10025,'2021-10-14 13:30:00',_binary ''),(420,10006,'2021-11-08 12:00:00',_binary ''),(421,10007,'2021-11-08 12:00:00',_binary ''),(422,10008,'2021-11-08 12:00:00',_binary ''),(423,10009,'2021-11-08 12:00:00',_binary ''),(424,10010,'2021-11-08 12:00:00',_binary ''),(425,10011,'2021-11-08 12:00:00',_binary ''),(426,10012,'2021-11-13 13:00:00',_binary '\0'),(427,10014,'2021-11-13 13:00:00',_binary ''),(428,10015,'2021-11-13 13:00:00',_binary ''),(429,10016,'2021-11-13 13:00:00',_binary ''),(430,10017,'2021-11-13 13:00:00',_binary ''),(431,10013,'2021-11-13 13:00:00',_binary '');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification` (
  `idEnrollment` int NOT NULL,
  `dateCertification` date DEFAULT NULL,
  PRIMARY KEY (`idEnrollment`),
  KEY `fk_Certifikimi_regjistrimet1_idx` (`idEnrollment`),
  CONSTRAINT `fk_certifikimi_regjistrimet1` FOREIGN KEY (`idEnrollment`) REFERENCES `enrollment` (`idEnrollment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification`
--

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;
INSERT INTO `certification` VALUES (10000,'2022-01-03'),(10001,'2022-01-05'),(10002,'2022-01-07'),(10003,'2022-01-09'),(10004,'2022-01-11'),(10005,'2022-01-12'),(10006,'2022-01-13'),(10007,'2022-01-14'),(10008,'2022-01-16'),(10009,'2022-01-16'),(10010,'2022-01-16'),(10011,'2022-01-16'),(10012,'2022-01-16'),(10013,'2022-02-02'),(10014,'2022-02-02'),(10015,'2022-02-02'),(10016,'2022-02-02'),(10017,'2022-02-02'),(10018,'2022-02-02'),(10019,'2022-02-02'),(10020,'2022-02-02'),(10021,'2022-02-02'),(10022,'2022-03-04'),(10023,'2022-03-04'),(10024,'2022-03-04'),(10025,'2022-03-04');
/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `idCourses` int NOT NULL,
  `classDate` datetime NOT NULL,
  `idClassroom` int DEFAULT NULL,
  PRIMARY KEY (`classDate`,`idCourses`),
  KEY `fk_classes_kurset1_idx` (`idCourses`),
  KEY `fk_classes_sallat1_idx` (`idClassroom`),
  CONSTRAINT `fk_classes_kurset1` FOREIGN KEY (`idCourses`) REFERENCES `courses` (`idCourses`),
  CONSTRAINT `fk_classes_sallat1` FOREIGN KEY (`idClassroom`) REFERENCES `classrooms` (`idClassroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1004,'2021-10-10 12:30:00',10),(1004,'2021-10-13 14:30:00',10),(1004,'2021-11-08 11:00:00',11),(1004,'2021-11-13 11:00:00',11),(1004,'2021-11-15 11:00:00',11),(1004,'2021-11-02 11:00:00',12),(1011,'2021-10-13 15:30:00',16),(1011,'2021-10-14 13:45:00',16),(1011,'2021-11-02 13:00:00',16),(1011,'2021-11-13 13:00:00',17),(1011,'2021-11-15 13:00:00',17),(1005,'2021-11-02 12:00:00',24),(1005,'2021-11-08 12:00:00',24),(1005,'2021-10-10 12:30:00',25),(1005,'2021-10-13 15:30:00',25),(1005,'2021-11-13 12:00:00',25),(1005,'2021-11-15 12:00:00',25),(1024,'2021-10-14 13:30:00',28),(1024,'2021-10-16 18:30:00',28),(1024,'2021-11-02 14:00:00',28),(1024,'2021-11-08 14:00:00',29),(1024,'2021-11-13 14:00:00',29),(1024,'2021-11-15 14:00:00',29),(1024,'2022-01-08 03:30:00',29);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `idClassroom` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pc` int DEFAULT NULL,
  `chairs` int DEFAULT NULL,
  `m_2` int DEFAULT NULL,
  `tv` int DEFAULT NULL,
  `projector` int DEFAULT NULL,
  PRIMARY KEY (`idClassroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (10,'Informatika-1',30,30,60,0,1),(11,'Informatika-2',30,30,70,0,1),(12,'Informatika-3',30,30,80,0,1),(13,'Fizike-1',20,30,80,0,1),(14,'Fizike-2',1,30,80,0,1),(15,'Fizike-3',1,30,80,0,1),(16,'Ixhinieri-1',1,20,100,0,1),(17,'Inxhinieri-2',1,20,100,0,1),(18,'Inxhinieri-3',1,20,100,0,1),(19,'Art-1',10,20,60,0,1),(20,'Art-2',1,20,60,0,1),(21,'Art-3 ',1,20,60,1,1),(22,'Shoqerore-1',1,40,60,1,1),(23,'Shoqerore-2',1,40,70,1,1),(24,'Shoqerore-3',1,40,70,0,1),(25,'Mjekesia-1',1,50,90,0,1),(26,'Mjekesia-2',1,50,90,0,1),(27,'Mjekesia-3',1,50,90,0,1),(28,'Matematika-1',NULL,NULL,NULL,NULL,NULL),(29,'Matematika-2',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `idPerson` int NOT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `experienceYears` int DEFAULT NULL,
  PRIMARY KEY (`idPerson`),
  CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `person` (`idPerson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (10000002,'Programer',2),(10000005,'Programer',4),(10000008,'Mjek',8),(10000009,'Farmaceutike',4),(10000010,'Mjek',4),(10000013,'Robotike',6),(10000014,'Programer',5),(10000015,'Programer',8),(10000016,'Robotike',3),(10000020,'Matematikan ',5),(10000022,'Matematikan ',5),(10000023,'Matematikan',5),(10000024,'Matematikan',5),(10000025,'Matematikan',5),(10000026,'Fizike',3),(10000033,'Muzikant',4),(10000034,'Inxhinier',5),(10000035,'Muzikant',6),(10000036,'Inxhinier',2),(10000037,'Inxhinier',5),(10000038,'Piktor',7),(10000039,'Piktor',5),(10000040,'Inxhinier',4),(10000041,'Filozof',3),(10000042,'Piktor',3),(10000043,'Muzikant',4),(10000055,'Kontablist',3);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `idCourses` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `durationHours` int DEFAULT NULL,
  `isDeleted` bit(1) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `idLevel` int DEFAULT NULL,
  `idProgram` int DEFAULT NULL,
  `idPerson` int DEFAULT NULL,
  PRIMARY KEY (`idCourses`),
  KEY `fk_kurset_trajneret1_idx` (`idPerson`),
  KEY `fk_kurset_programi_idx` (`idProgram`),
  KEY `fk_kurset_niveli1_idx` (`idLevel`),
  CONSTRAINT `fk_kurset_niveli1` FOREIGN KEY (`idLevel`) REFERENCES `level` (`idLevel`),
  CONSTRAINT `fk_kurset_programi1` FOREIGN KEY (`idProgram`) REFERENCES `program` (`idProgram`),
  CONSTRAINT `fk_kurset_trajneret1` FOREIGN KEY (`idPerson`) REFERENCES `trainers` (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1000,'Python for Data Science, AI & Development',20,46,_binary '\0',250,3,10,10000017),(1001,'Metodologjia e Data Science',25,48,_binary '\0',250,4,10,10000003),(1002,'Databaza dhe SQL per Data Science me Python',20,56,_binary '\0',300,3,10,10000012),(1003,'Kriptografia II',20,30,_binary '\0',350,3,12,10000003),(1004,'Augumented reality dhe ARCore',25,20,_binary '\0',350,3,12,10000017),(1005,'Specializimi i Menaxhimit të Produkteve për Zhvillimin e Barnave',30,35,_binary '\0',400,3,15,10000006),(1007,'Neuroshkenca Mjekësore',20,35,_binary '\0',450,2,15,10000006),(1008,'Anatomia e gjoksit, qafës, barkut dhe legenit',20,28,_binary '\0',500,4,15,10000006),(1009,'Negocimi i suksesshëm: Strategjitë dhe aftësitë thelbësore',40,15,_binary '\0',500,1,16,10000032),(1010,'Specializimi i Makinave Vetëdrejtuese',20,17,_binary '\0',350,3,17,10000030),(1011,'Robotika moderne: Specializimi i Mekanikës, Planifikimit dhe Kontrollit',15,15,_binary '\0',350,2,17,10000029),(1012,'Termodinamika Molekulare Statistikore',25,15,_binary '\0',350,2,17,10000029),(1013,'Astrobiologjia: Eksplorimi i botëve të tjera',30,15,_binary '\0',200,2,17,10000029),(1014,'Kuptimi i Ajnshtajnit: Teoria Speciale e Relativitetit',30,17,_binary '\0',200,3,17,10000029),(1015,'Specializimi i Artit dhe Dizajnit Modern dhe Bashkëkohor',40,10,_binary '\0',250,4,17,10000031),(1016,'Termodinamika Molekulare Statistikore',40,16,_binary '\0',300,4,17,10000030),(1017,'Bazat e fotografisë dhe më gjerë: Nga telefoni në DSLR',40,18,_binary '\0',300,1,19,10000031),(1018,'Mekanika e Lëngjeve Llogaritëse - Rrjedha e ajrit rreth një spoileri',30,16,_binary '\0',350,2,17,10000030),(1019,'Prezantimi i Automatës celulare',20,18,_binary '\0',350,2,17,10000030),(1020,'Analizimi i proceseve termodinamike meWolfram',30,16,_binary '\0',120,2,17,10000030),(1021,'Disa veti gjeometrike të N(λ,p)-hapësirave',20,25,_binary '\0',120,4,20,10000028),(1022,'Një klasë e re sekuencash të lidhura me hapësirat lp të përcaktuara nga sekuencat e funksioneve Orli',20,20,_binary '\0',200,4,20,10000027),(1023,'Kombinatorika enumerative',30,25,_binary '\0',350,3,20,10000027),(1024,'Vetitë e konveksitetit dhe pabarazitë për një funksion gama të përgjithësuar',20,26,_binary '\0',350,4,20,10000028),(1025,'Filozofia e mendjës dhe religjionit',50,10,_binary '\0',120,1,18,10000011);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `idEnrollment` int NOT NULL AUTO_INCREMENT,
  `idClient` int NOT NULL,
  `idCourses` int NOT NULL,
  `dateEnrollment` date DEFAULT NULL,
  PRIMARY KEY (`idEnrollment`,`idClient`,`idCourses`),
  KEY `fk_regjistrimet_klientet_idx` (`idClient`),
  KEY `fk_regjistrimet_kurset_idx` (`idCourses`),
  CONSTRAINT `fk_regjistrimet_klientet1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idPerson`),
  CONSTRAINT `fk_regjistrimet_kurset1` FOREIGN KEY (`idCourses`) REFERENCES `courses` (`idCourses`)
) ENGINE=InnoDB AUTO_INCREMENT=10027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (10000,10000002,1004,'2020-01-14'),(10001,10000005,1004,'2020-01-14'),(10002,10000008,1004,'2020-01-14'),(10003,10000009,1004,'2020-01-14'),(10004,10000010,1004,'2020-01-14'),(10005,10000013,1004,'2020-01-14'),(10006,10000014,1005,'2020-04-23'),(10007,10000015,1005,'2020-04-23'),(10008,10000016,1005,'2020-04-23'),(10009,10000020,1005,'2020-04-23'),(10010,10000022,1005,'2020-04-23'),(10011,10000023,1005,'2020-04-23'),(10012,10000024,1011,'2020-06-22'),(10013,10000025,1011,'2020-06-22'),(10014,10000026,1011,'2020-06-22'),(10015,10000033,1011,'2020-06-22'),(10016,10000034,1011,'2020-06-22'),(10017,10000035,1011,'2020-06-22'),(10018,10000036,1024,'2020-07-28'),(10019,10000037,1024,'2020-07-28'),(10020,10000038,1024,'2020-07-28'),(10021,10000039,1024,'2020-07-28'),(10022,10000040,1024,'2020-07-28'),(10023,10000041,1024,'2020-07-28'),(10024,10000042,1024,'2020-07-28'),(10025,10000043,1024,'2020-07-28'),(10026,10000055,1009,'2020-05-28');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `idLevel` int NOT NULL AUTO_INCREMENT,
  `level_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idLevel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1,'Per persona fillestare qe kan njohuri bazike per temen'),(2,'Per persona qe kane njohuri gjenerale per temen'),(3,'Per persona qe kane te avancuara njohurite e temes'),(4,'Per persona profesioniste lidhur me temen'),(5,'Per persona te specializuar per temen');
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `idPayment` int NOT NULL AUTO_INCREMENT,
  `idEnrollment` int DEFAULT NULL,
  `datePayment` date DEFAULT NULL,
  `bankAccount` int DEFAULT NULL,
  `paymentBank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPayment`),
  KEY `fk_pagesat_regjistrimet1_idx` (`idEnrollment`),
  CONSTRAINT `fk_pagesat_regjistrimet1` FOREIGN KEY (`idEnrollment`) REFERENCES `enrollment` (`idEnrollment`)
) ENGINE=InnoDB AUTO_INCREMENT=3023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (3000,10000,'2020-02-13',71956918,'ProCreditBank'),(3001,10001,'2020-03-25',44433590,'RaifaisenBank'),(3002,10002,'2020-03-30',93276156,'ProCreditBank'),(3003,10003,'2020-04-03',39933506,'RaifaisenBank'),(3004,10004,'2020-04-15',58652228,'ProCreditBank'),(3005,10005,'2020-01-23',62638886,'TEB'),(3006,10006,'2020-01-24',68168089,'RaifaisenBank'),(3007,10007,'2020-01-28',45817540,'RaifaisenBank'),(3008,10008,'2020-02-07',77019483,'TEB'),(3009,10009,'2020-02-10',25512094,'ProCreditBank'),(3010,10010,'2020-02-11',94067523,'TEB'),(3011,10011,'2020-02-13',60955721,'RaifaisenBank'),(3012,10012,'2020-02-17',96705850,'BPB'),(3013,10013,'2020-02-20',85099051,'ProCreditBank'),(3014,10014,'2020-02-21',73810587,'TEB'),(3015,10015,'2020-02-24',69467928,'ProCreditBank'),(3016,10016,'2020-02-25',49339575,'TEB'),(3017,10017,'2020-02-27',60349300,'ProCreditBank'),(3018,10018,'2020-03-03',12201986,'BPB'),(3019,10019,'2020-03-06',39461056,'TEB'),(3020,10020,'2020-03-11',22422429,'RaifaisenBank'),(3021,10021,'2020-03-12',64651535,'ProCreditBank'),(3022,10022,'2020-03-17',24113196,'ProCreditBank');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `idPerson` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  `p_surname` varchar(20) DEFAULT NULL,
  `p_gender` varchar(1) DEFAULT NULL,
  `p_birthday` date DEFAULT NULL,
  `p_city` varchar(45) DEFAULT NULL,
  `p_state` varchar(15) DEFAULT NULL,
  `p_phone` varchar(45) DEFAULT NULL,
  `p_email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=10000071 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (10000000,'Alban','Hyseni','M','1982-01-08','Prishtine','Kosove','043-321-425','alban.hyseni@hotmail.com'),(10000001,'Albana ','Hyseni','F','2000-05-25','Gjilan','Kosove','045-156-179','albana.hyseni@gmail.com'),(10000002,'Arsim','Maloku','M','1992-12-17','Prishtine','Kosove','043-789-858','arsim.maloku@gmail.com'),(10000003,'Artan','Berisha','M','2002-06-12','Prishtine','Kosove','044-485-959','artan.berisha@gmail.com'),(10000004,'Astrit','Ferizi','M','1998-06-23','Prizren','Kosove','045-858-932','astrit.ferizi@gmail.com'),(10000005,'Jeton','Halili','M','1999-05-09','Prishtine','Kosove','044-865-758','jeton.halili@yahoo.com'),(10000006,'Kaltrina','Jusufi','F','1994-08-03','Prishtine','Kosove','043-454-858','jusufi.kaltrina@outlook.com'),(10000007,'Miribane','Sopjani','F','1994-10-31','Prishtine','Kosove','043-869-758','miribanesopjani93@outlook.com'),(10000008,'Vjollca','Berisha','F','1999-02-05','Gjakove','Kosove','043-957-864','berisha.vjollca@gmail.com'),(10000009,'Aron','Hoxha','M','2002-05-19','Prishtine','Kosove','045-777-777','roni.hoxha@gmail.com'),(10000010,'Andi','Sejdiu','M','2002-06-19','Prizren','Kosove','045-687-981','sejdiu.andi@gmail.com'),(10000011,'Kajtaz','Bllaca','M','1995-08-04','Prishtine','Kosove','045-365-894','kajtaz.bllaca@gmail.com'),(10000012,'Edmond','Aliaga','M','1989-01-17','Prishtine','Kosove','043-793-854','aliga.edmond@outlook.com'),(10000013,'Bekim','Gashi','M','1971-04-26','Lipjan','Kosove','043-936-174','gashi.bekim@yahoo.com'),(10000014,'Arleta','Nixha','F','1983-04-24','Prishtine','Kosove','043-784-265','nixha.arleta@gmail.com'),(10000015,'Arnis ','Lushtaku','M','1983-06-09','Prishtine','Kosove','045-361-147','lushtaku.arnis@gmail.com'),(10000016,'Lindrit','Murati','M','1975-02-28','Presheve','Kosove','045-235-652','lindrit.murati@gmail.com'),(10000017,'Faton','Berisha','M','1973-09-14','Prishtine','Kosove','045-365-524','berisha.faton@outlook.com'),(10000018,'Abdullah','Zejnullahu','M','2001-03-26','Prishtine','Kosove','043-524-973','zejnullahu.abdullah@yahoo.com'),(10000019,'Artan','Alidema','M','1991-05-24','Prishtine','Kosove','044-969-731','alidema.artan@gmail.com'),(10000020,'Anita ','Gjukaj','F','1971-11-09','Gjilan','Kosove','044-937-825','anitagjukaj@yahoo.com'),(10000021,'Burbuqe','Shatri','F','1977-01-03','Gjilan','Kosove','045-936-612','burbuqe.shatri@gmail.com'),(10000022,'Arber','Rashiti','M','1987-07-18','Gjakove','Kosove','045-256-346','rashiti_arber@gmail.com'),(10000023,'Blerta','Kamberi','F','1964-08-22','Ferizaj','Kosove','043-279-187','kamberi.blerta@outlook.com'),(10000024,'Drin','Doda','M','1978-12-30','Ferizaj','Kosove','044-453-614','drindoda@outlook.com'),(10000025,'Lirika','Maliqi','F','1965-10-08','Prishtine','Kosove','043-415-741','lirika.Maliqi@outlook.com'),(10000026,'Mergim','Rama','M','1985-02-15','Skenderaj','Kosove','043-714-522','ramamergim@yahoo.com'),(10000027,'Muhib','Lohaj','M','1989-01-10','Ferizaj','Kosove','044-178-634','lohaj.muhib@gmail.com'),(10000028,'Armend','Shabani','M','1980-07-01','Presheve','Kosove','044-192-148','armend.shabani@gmail.com'),(10000029,'Lyra','Hoxha','F','2002-02-25','Prishtine','Kosove','044-123-145','lyra.hoxha@gmail.com'),(10000030,'Shukri','Klinaku','M','1967-05-16','Pejë','Kosove','044-174-346','shukri.klinaku@yahoo.com'),(10000031,'Shkodran','Hajdini','M','1990-07-05','Prishtine','Kosove','044-123-192','hajdini.shkodran12@gmail.com'),(10000032,'Baton','Haxhiu','M','1967-04-20','Prishtine','Kosove','044-624-345','baton.haxhiu@gmail.com'),(10000033,'Abdullah','Sylejmani','M','1991-03-21','	Suharekë','Kosove','045-485-645','abdullah.sylejmani42@yahoo.com'),(10000034,'Adelina','Krasniqi','F','1993-02-05','	Suharekë','Kosove','045-965-758','adelinakras@gmail.com'),(10000035,'Albana','Syla','F','1993-03-04','Mitrovicë','Kosove','045-565-935','albana.syla@yahoo.com'),(10000036,'Arbenita','Rushiti','F','1995-11-22','	Pejë','Kosove','043-263-957','rushiti.arbenita@gmail.com'),(10000037,'Besarta','Breznica','M','1997-06-05','	Klinë','Kosove','044-235-985','besarta.breznica12@yahoo.com'),(10000038,'Fatjon','Haklaj','M','1999-11-15','Mitrovicë','Kosove','044-395-796','fatjon.haklaj@outlook.com'),(10000039,'Jehona','Kryeziu','F','1999-11-15','	Drenas','Kosove','045-312-564','kryeziu.jehona@yahoo.com'),(10000040,'Leonarda','Durmishi','F','2002-02-11','	Drenas','Kosove','043-914-2571','durmishi.leonarda@outlook.com'),(10000041,'Petrit','Avdylaj','M','2000-03-20','	Klinë','Kosove','045-634-714','avdylaj.petrit@gmail.com'),(10000042,'Valdrin','Fazliu','M','1989-11-20','Mitrovicë','Kosove','044-644-835','valdrin.fazliu11@yahoo.com'),(10000043,'Vera','Jerliu','M','1993-03-04','Suharekë','Kosove','049-934-865','jerliu.vlera@gmail.com'),(10000044,'Visar','Kuci','M','1993-03-04','Prishtine','Kosove','044-625-431','visar.kuci@gmail.com'),(10000045,'Afërdita ','Daka','F','1973-03-13','Gjilan','Kosove','045-345-627','daka.aferdita@gmail.com'),(10000046,'Gloria ','Staka','F','1980-03-12','Prishtine','Kosove','044-365-627','staka.gloria@gmail.com'),(10000047,'Agnes','Nokshiqi','F','1983-02-05','Prishtine ','Kosove','044-132-431','agnes.nokshiqi@gmail.com'),(10000048,'Ilire ','Vinca','F','1973-02-05','Prishtine','Kosove ','044-214-231','ilire.vinca@gmail.com'),(10000049,'Luan','Jaha','M','1955-04-03','Ferizaj','Kosove','044-314-231','jahaluan92@gmail.com'),(10000050,'Drita ','Begolli','F','1965-07-07','Prishtine','Kosove','044-290-290','begolli.drita@gmail.com'),(10000051,'Engjell','Berisha','M','1985-06-17','Prishtine','Kosove','044-426-614','engjull3erisha@gmail.com'),(10000052,'Alban','Berisha','M','1980-07-11','Suharekë','Kosove','045-368-574','albian.berisha@gmail.com'),(10000053,'Albian','Dragusha','M','1981-09-10','Prishtine','Kosove','045-275-623','albian.dragusha@gmail.com'),(10000054,'Ariana','Arifaj','F','1983-09-19','Suharekë','Kosove','045-134-852','ariana.arifaj21@gmail.com'),(10000055,'Blend','Tahiri','M','1984-01-10','Suharekë','Kosove','045-375-285','blendturicii@gmail.com'),(10000056,'Elona','Kuci','F','1984-05-01','Prishtine','Kosove','045-365-275','kuci.elona@outlook.com'),(10000057,'Lum','Dermaku','M','1984-05-01','Suharekë','Kosove','044-445-685','dermakulumi@gmail.com'),(10000058,'Qendrim','Demiraj','M','1986-09-24','Ferizaj','Kosove','044-424-2531','qendrimdermiaj@gmail.com'),(10000059,'Rinor','Kodraliu','M','1988-02-29','Prishtine','Kosove','045-375-425','rinorodraliu@gmail.com'),(10000060,'Urata','Sadiku','F','1988-12-21','Ferizaj','Kosove','045-363-424','uratasadiku14@outlook.com'),(10000061,'Vedat','Imeri','M','1989-06-14','Ferizaj','Kosove','045-353-624','imerivedat1989@gmail.com'),(10000062,'Andrin','Miftari','M','1989-10-18','Prishtine','Kosove','045-654-185','miftariandrti89@gmail.com'),(10000063,'Ardi','Krasniqi','M','1990-01-11','Ferizaj','Kosove','045-938-965','krasniqiardi@yahoo.com'),(10000064,'Ariana','Arifaj','F','1991-03-18','Ferizaj','Kosove','045-375-938','arifajariana@yahoo.com'),(10000065,'Atlantik','Limani','M','1992-10-29','Prishtine','Kosove','044-265-558','limaniatlantik@gmail.com'),(10000066,'Avenir','Maxhuni','M','1993-11-10','Suharekë','Kosove','045-175-683','avenir.maxhuni@outlook.com'),(10000067,'Blend','Tahiri','M','1994-01-21','Prishtine','Kosove','045-673-358','tahiri.blend@yahoo.com'),(10000068,'Gresa','Nuredini','F','1994-04-25','Prishtine','Kosove','045-361-195','gresa.nuredini@yahoo.com'),(10000069,'Larton','Lohaj','M','1994-08-19','Ferizaj','Kosove','045-192-156','lohaj.larton@yahoo.com'),(10000070,'Qendresa','Osmani','F','1994-08-23','Prishtine','Kosove','045-365-854','osmani.qendresa@gmail.com');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `idProgram` int NOT NULL AUTO_INCREMENT,
  `nameProgram` varchar(50) DEFAULT NULL,
  `durationMonth_from` int DEFAULT NULL,
  `durationMonth_to` int DEFAULT NULL,
  PRIMARY KEY (`idProgram`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (10,'Data Science',3,6),(11,'Biznes',2,5),(12,'Shkenca Kompjuterike',5,10),(13,'Teknologji Informative',3,4),(14,'Gjuhe',2,4),(15,'Shendetesi',8,12),(16,'Zhvillim Personal',2,3),(17,'Shkenca fizike dhe Inxhinieri',5,9),(18,'Shkenca Sociale',2,3),(19,'Art',4,5),(20,'Matematike',9,12);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `idPerson` int NOT NULL,
  `bank` varchar(40) DEFAULT NULL,
  `bankAccount` int DEFAULT NULL,
  `employmentDate` date DEFAULT NULL,
  `wage` int DEFAULT NULL,
  `title` varchar(7) DEFAULT NULL,
  `fkDrejtimi` varchar(50) DEFAULT NULL,
  `StafTypeID` int DEFAULT NULL,
  PRIMARY KEY (`idPerson`),
  UNIQUE KEY `Staf_AltPk` (`idPerson`,`StafTypeID`),
  KEY `StafTypeID` (`StafTypeID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `person` (`idPerson`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`StafTypeID`) REFERENCES `stafftype` (`StaffTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (10000001,'ProcreditBank',2147483647,'2019-10-10',750,'Dr','Matematike',2),(10000003,'ProcreditBank',56931121,'2019-10-03',1000,'Maste','Kriptografi',1),(10000006,'TEB',37766055,'2019-10-03',1000,'Dr','Matematike',1),(10000011,'RaifaisenBank',4271886,'2019-05-05',1000,'Dr','Matematike',1),(10000012,'RaifaisenBank',91439444,'2021-04-03',1000,'Dr','Matematike',1),(10000017,'RaifaisenBank',44307476,'2019-10-03',1000,'Dr','Shkence Kompjuterike',1),(10000018,'ProcreditBank',32366498,'2019-10-03',1000,'Dr','Matematike',1),(10000019,'ProcreditBank',78824871,'2019-10-04',1000,'Bache','Matematike',2),(10000027,'TEB',81438950,'2019-10-04',1000,'Dr','Matematike',1),(10000028,'BBP',61895529,'0000-00-00',1000,'Dr','Matematike',1),(10000029,'ProcreditBank',58077659,'2019-10-04',5000,'Master','Fizike',1),(10000030,'TEB',10572289,'2019-10-03',1000,'Dr','Fizike',1),(10000031,'BKK',27040487,'2020-10-10',750,'Bachelo','Dizajn Grafik',1),(10000032,'TEB',34314430,'2020-11-05',750,'Master','Politike',1),(10000044,'BKK',44829837,'2020-11-06',1000,'Master','Muzike',1),(10000045,'BKK',35538297,'2020-11-06',1250,'Master','Regji',1),(10000046,'TEB',17400989,'2020-11-06',750,'Master','Aktrim',1),(10000047,'TEB',47331844,'2020-11-08',850,'Master','Regji',1),(10000048,'ProcreditBank',41089907,'2020-11-08',950,'Master','Aktrim',1),(10000049,'TEB',78166394,'2020-11-08',1000,'Master','Akrim',1),(10000050,'TEB',47892873,'2020-11-08',1000,'Master','Aktrim',1),(10000051,'ProcreditBank',10953928,'2020-11-10',1000,'Master','Aktrim',1),(10000052,'RaifaisenBank',43658289,'2020-11-10',700,'Bachelo','Kontabilitet',2),(10000053,'ProcreditBank',63073914,'2020-11-10',650,'Bachelo','Banka dhe Financa',2),(10000054,'RaifaisenBank',60935348,'2020-11-10',750,'Bachelo','Kontabilitet',2),(10000055,'ProcreditBank',21081312,'2020-11-10',750,'Bachelo','Kontabilitet',2),(10000056,'ProcreditBank',24847171,'2020-11-10',750,'Bachelo','Ekonomi',2),(10000057,'RaifaisenBank',20744609,'2020-11-10',750,'Bachelo','Kontabilitet',2),(10000058,'ProcreditBank',34603650,'2020-11-10',800,'Bachelo','Kontabilitet',2),(10000059,'ProcreditBank',34664851,'2020-11-10',800,'Bachelo','Ekonomi',2),(10000060,'ProcreditBank',22465735,'2020-11-10',800,'Bachelo','Ekonomi',2),(10000061,'TEB',77353811,'2021-01-01',800,'Bachelo','Banka dhe Financa',2),(10000062,'ProcreditBank',44709382,'2021-01-11',800,'Bachelo','Banka dhe Financa',2),(10000063,'TEB',21135016,'2021-01-11',750,'Bachelo','Kontabilitet',2),(10000064,'ProcreditBank',72975961,'2021-01-11',750,'Bachelo','Ekonomi',2),(10000065,'TEB',77529205,'2021-01-12',750,'Bachelo','Menaxhment',2),(10000066,'ProcreditBank',61215984,'2021-01-12',750,'Bachelo','Banka dhe Financa',2),(10000067,'RaifaisenBank',50361302,'2021-01-12',750,'Bachelo','Menaxhment',2),(10000068,'ProcreditBank',36744753,'2021-01-12',750,'Bachelo','Kontabilitet',2),(10000069,'RaifaisenBank',38584758,'2021-01-12',650,'Bachelo','Menaxhment',2),(10000070,'ProcreditBank',14610829,'2021-01-12',620,'Bachelo','Kontabilitet',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stafftype`
--

DROP TABLE IF EXISTS `stafftype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stafftype` (
  `StaffTypeID` int NOT NULL,
  `staffType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StaffTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stafftype`
--

LOCK TABLES `stafftype` WRITE;
/*!40000 ALTER TABLE `stafftype` DISABLE KEYS */;
INSERT INTO `stafftype` VALUES (1,'Trajner'),(2,'Administratore');
/*!40000 ALTER TABLE `stafftype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers` (
  `idPerson` int NOT NULL,
  `StaffTypeID` int NOT NULL DEFAULT '1',
  `profession` varchar(45) DEFAULT NULL,
  `workAt` varchar(20) DEFAULT NULL,
  `pozitionWork` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idPerson`,`StaffTypeID`),
  CONSTRAINT `trainers_ibfk_1` FOREIGN KEY (`idPerson`, `StaffTypeID`) REFERENCES `staff` (`idPerson`, `StafTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (10000003,1,'Matematikan','UP','profesor'),(10000006,1,'Biologe','LNA','laborator'),(10000011,1,'Matematikan','UP','profesor'),(10000012,1,'Matematikan','UP','profesor'),(10000017,1,'Computer Scientist','UP','profesor'),(10000018,1,'Matematikan','UP','profesor'),(10000027,1,'Matematikan','UP','profesor'),(10000028,1,'Matematikan','Up','Researcher'),(10000029,1,'Fizikante','LNP','Researcher'),(10000030,1,'Fizikante','UP','Researcher'),(10000031,1,'Fotograf','2bStudio','Fotgraf'),(10000032,1,'Politikan','KlanKosova','Drejtor '),(10000044,1,'Muzikant','Filharmoni','Violinist'),(10000045,1,'Aktor ','Teatri Kom','Aktor'),(10000046,1,'Regjisore','Teatri Kom','Aktor'),(10000047,1,'Aktor','Teatri Kom','Aktor'),(10000048,1,'Aktor','UP','Profesor'),(10000049,1,'Aktor','Teatri Kom','Aktor'),(10000050,1,'Aktor','UP','Profesor'),(10000051,1,'Piktor','Galeria Ar','Piktor');
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wages`
--

DROP TABLE IF EXISTS `wages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wages` (
  `idWages` int NOT NULL AUTO_INCREMENT,
  `idPerson` int DEFAULT NULL,
  `datePayment` date DEFAULT NULL,
  PRIMARY KEY (`idWages`),
  KEY `fk_personID1_idx` (`idPerson`),
  CONSTRAINT `fk_personID1` FOREIGN KEY (`idPerson`) REFERENCES `staff` (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wages`
--

LOCK TABLES `wages` WRITE;
/*!40000 ALTER TABLE `wages` DISABLE KEYS */;
INSERT INTO `wages` VALUES (1,10000001,'2021-12-31'),(2,10000003,'2021-12-31'),(3,10000006,'2021-12-31'),(4,10000011,'2021-12-31'),(5,10000012,'2021-12-31'),(6,10000017,'2021-12-31'),(7,10000018,'2021-12-31'),(8,10000019,'2021-12-31'),(9,10000027,'2021-12-31'),(10,10000028,'2021-12-31'),(11,10000029,'2021-12-31'),(12,10000030,'2021-12-31'),(13,10000031,'2021-12-31'),(14,10000032,'2021-12-31'),(15,10000044,'2021-12-31'),(16,10000045,'2021-12-31'),(17,10000046,'2021-12-31'),(18,10000047,'2021-12-31'),(19,10000048,'2021-12-31'),(20,10000049,'2021-12-31'),(21,10000050,'2021-12-31'),(22,10000051,'2021-12-31'),(23,10000052,'2021-12-31'),(24,10000053,'2021-12-31'),(25,10000054,'2021-12-31'),(26,10000055,'2021-12-31'),(27,10000056,'2021-12-31'),(28,10000057,'2021-12-31'),(29,10000058,'2021-12-31'),(30,10000059,'2021-12-31'),(31,10000060,'2021-12-31'),(32,10000061,'2021-12-31'),(33,10000062,'2021-12-31'),(34,10000063,'2021-12-31'),(35,10000064,'2021-12-31'),(36,10000065,'2021-12-31'),(37,10000066,'2021-12-31'),(38,10000067,'2021-12-31'),(39,10000068,'2021-12-31'),(40,10000069,'2021-12-31'),(41,10000070,'2021-12-31');
/*!40000 ALTER TABLE `wages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trainingcenter'
--

--
-- Dumping routines for database 'trainingcenter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 23:08:14
