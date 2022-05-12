-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: schedule
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.21.10.2

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
-- Current Database: `schedule`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `schedule` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `schedule`;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `codeCampus` varchar(8) NOT NULL,
  `nomCampus` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  PRIMARY KEY (`codeCampus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES ('camp01','campus 1','ANGE RAPHAEL'),('camp02','campus 2','NDOGBONG'),('camp03','campus 3','LOGBESSOU');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enseignant` (
  `matricule` varchar(10) NOT NULL,
  `nomEnseignant` varchar(45) NOT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enseignant`
--

LOCK TABLES `enseignant` WRITE;
/*!40000 ALTER TABLE `enseignant` DISABLE KEYS */;
INSERT INTO `enseignant` VALUES ('teach01','DR. NDJIE'),('teach02','DR MOUSKOLAI'),('teach03','DR. UM LAURENCE'),('teach04','DR. NDONFACK'),('teach05','DR. FONO'),('teach06','DR. NOUMSI'),('teach07','DR. DJEUMEN'),('teach08','DR. NDJIKEN'),('teach09','DR. FOTSING'),('teach10','DR ONANA'),('teach11','DR. PEMHA'),('teach12','DR. TSIMI');
/*!40000 ALTER TABLE `enseignant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enseignant_niveau`
--

DROP TABLE IF EXISTS `enseignant_niveau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enseignant_niveau` (
  `matricule` varchar(10) NOT NULL,
  `codeNiveau` varchar(8) NOT NULL,
  KEY `matricule` (`matricule`),
  KEY `codeNiveau` (`codeNiveau`),
  CONSTRAINT `enseignant_niveau_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `enseignant` (`matricule`),
  CONSTRAINT `enseignant_niveau_ibfk_2` FOREIGN KEY (`codeNiveau`) REFERENCES `niveau` (`codeNiveau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enseignant_niveau`
--

LOCK TABLES `enseignant_niveau` WRITE;
/*!40000 ALTER TABLE `enseignant_niveau` DISABLE KEYS */;
INSERT INTO `enseignant_niveau` VALUES ('teach01','niv-02'),('teach01','niv-03'),('teach02','niv-03'),('teach02','niv-01'),('teach03','niv-01'),('teach03','niv-02'),('teach03','niv-03'),('teach05','niv-01'),('teach06','niv-02'),('teach06','niv-03'),('teach06','niv-01');
/*!40000 ALTER TABLE `enseignant_niveau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiere` (
  `codeFiliere` varchar(25) NOT NULL,
  `nomFiliere` varchar(45) NOT NULL,
  PRIMARY KEY (`codeFiliere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiere`
--

LOCK TABLES `filiere` WRITE;
/*!40000 ALTER TABLE `filiere` DISABLE KEYS */;
INSERT INTO `filiere` VALUES ('fil-01','Informatique'),('fil-02','Mathematique'),('fil-03','Physique');
/*!40000 ALTER TABLE `filiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveau` (
  `codeNiveau` varchar(8) NOT NULL,
  `nomNiveau` varchar(45) NOT NULL,
  PRIMARY KEY (`codeNiveau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveau`
--

LOCK TABLES `niveau` WRITE;
/*!40000 ALTER TABLE `niveau` DISABLE KEYS */;
INSERT INTO `niveau` VALUES ('niv-01','LICENCE 1'),('niv-02','LICENCE 2'),('niv-03','LICENCE 3'),('niv-04','MASTER 1'),('niv-05','MASTER 2');
/*!40000 ALTER TABLE `niveau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periode`
--

DROP TABLE IF EXISTS `periode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periode` (
  `codePeriode` varchar(5) NOT NULL,
  `debut` time NOT NULL,
  `fin` time NOT NULL,
  PRIMARY KEY (`codePeriode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periode`
--

LOCK TABLES `periode` WRITE;
/*!40000 ALTER TABLE `periode` DISABLE KEYS */;
INSERT INTO `periode` VALUES ('p01','07:30:00','10:00:00'),('p02','10:00:00','12:00:00'),('p03','13:00:00','15:30:00'),('p04','15:30:00','18:30:00'),('p05','19:00:00','22:00:00');
/*!40000 ALTER TABLE `periode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle` (
  `codeSalle` varchar(10) NOT NULL,
  `nomSalle` varchar(45) NOT NULL,
  `capacite` int NOT NULL,
  `codeCampus` varchar(8) NOT NULL,
  PRIMARY KEY (`codeSalle`),
  KEY `codeCampus` (`codeCampus`),
  CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`codeCampus`) REFERENCES `campus` (`codeCampus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES ('sal-01','NLEP',400,'camp01'),('sal-02','GEORGES NGANGO',200,'camp02'),('sal-03','S.MELONE',700,'camp02'),('sal-04','102',300,'camp02'),('sal-05','A6',800,'camp03'),('sal-06','A2',1000,'camp03'),('sal-07','A5',700,'camp03');
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seance` (
  `codeUE` varchar(5) NOT NULL,
  `codeSalle` varchar(10) NOT NULL,
  `codePeriode` varchar(5) NOT NULL,
  `codeSemaine` varchar(8) NOT NULL,
  KEY `codeUE` (`codeUE`),
  KEY `codeSalle` (`codeSalle`),
  KEY `codePeriode` (`codePeriode`),
  KEY `codeSemaine` (`codeSemaine`),
  CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`codeUE`) REFERENCES `ue` (`codeUE`),
  CONSTRAINT `seance_ibfk_2` FOREIGN KEY (`codeSalle`) REFERENCES `salle` (`codeSalle`),
  CONSTRAINT `seance_ibfk_3` FOREIGN KEY (`codePeriode`) REFERENCES `periode` (`codePeriode`),
  CONSTRAINT `seance_ibfk_4` FOREIGN KEY (`codeSemaine`) REFERENCES `semaine` (`codeSemaine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES ('in181','sal-01','p01','sem01'),('sa366','sal-01','p03','sem02'),('in132','sal-01','p02','sem04'),('in234','sal-05','p01','sem03'),('in223','sal-05','p02','sem03'),('in181','sal-03','p02','sem05'),('in121','sal-06','p04','sem06');
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semaine`
--

DROP TABLE IF EXISTS `semaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semaine` (
  `codeSemaine` varchar(8) NOT NULL,
  `jour` varchar(45) NOT NULL,
  PRIMARY KEY (`codeSemaine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semaine`
--

LOCK TABLES `semaine` WRITE;
/*!40000 ALTER TABLE `semaine` DISABLE KEYS */;
INSERT INTO `semaine` VALUES ('sem01','LUNDI'),('sem02','MARDI'),('sem03','MERCREDI'),('sem04','JEUDI'),('sem05','VENDREDI'),('sem06','SAMEDI');
/*!40000 ALTER TABLE `semaine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `codeSemestre` varchar(6) NOT NULL,
  `nomSemestre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codeSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
INSERT INTO `semestre` VALUES ('smtr1','SEMESTRE 1'),('smtr10','SEMESTRE 10'),('smtr2','SEMESTRE 2'),('smtr3','SEMESTRE 3'),('smtr4','SEMESTRE 4'),('smtr5','SEMESTRE 5'),('smtr6','SEMESTRE 6'),('smtr7','SEMESTRE 7'),('smtr8','SEMESTRE 8'),('smtr9','SEMESTRE 9');
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ue`
--

DROP TABLE IF EXISTS `ue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ue` (
  `codeUE` varchar(5) NOT NULL,
  `intitule` varchar(45) NOT NULL,
  `codeFiliere` varchar(8) NOT NULL,
  `codeNiveau` varchar(8) NOT NULL,
  `codeSemestre` varchar(6) NOT NULL,
  `matricule` varchar(10) NOT NULL,
  PRIMARY KEY (`codeUE`),
  KEY `codeFiliere` (`codeFiliere`),
  KEY `codeNiveau` (`codeNiveau`),
  KEY `codeSemestre` (`codeSemestre`),
  KEY `matricule` (`matricule`),
  CONSTRAINT `ue_ibfk_1` FOREIGN KEY (`codeFiliere`) REFERENCES `filiere` (`codeFiliere`),
  CONSTRAINT `ue_ibfk_2` FOREIGN KEY (`codeNiveau`) REFERENCES `niveau` (`codeNiveau`),
  CONSTRAINT `ue_ibfk_3` FOREIGN KEY (`codeSemestre`) REFERENCES `semestre` (`codeSemestre`),
  CONSTRAINT `ue_ibfk_4` FOREIGN KEY (`matricule`) REFERENCES `enseignant` (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ue`
--

LOCK TABLES `ue` WRITE;
/*!40000 ALTER TABLE `ue` DISABLE KEYS */;
INSERT INTO `ue` VALUES ('in121','ARCHITECTURE DES ORDINATEURS','fil-01','niv-01','smtr1','teach03'),('in132','PROGRAMMATION EN C','fil-01','niv-01','smtr1','teach02'),('in181','ANALYSE DE LA DROITE REELLE','fil-01','niv-01','smtr1','teach05'),('in223','INTRODUCTION AUX BASES DE DONNEES','fil-01','niv-02','smtr1','teach01'),('in234','GENIE LOGICIEL','fil-01','niv-02','smtr4','teach07'),('sa366','SYSTEME D\'AIDE A LA DECISION','fil-01','niv-03','smtr6','teach02');
/*!40000 ALTER TABLE `ue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 17:08:01
