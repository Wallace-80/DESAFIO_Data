CREATE DATABASE  IF NOT EXISTS `travelspain` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `travelspain`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: travelspain
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


DROP TABLE IF EXISTS `espana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `espana` (
  `ID_PROVINCIAS` int NOT NULL,
  `PROVINCIAS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ;
INSERT INTO `espana` VALUES (01,"Almería");
INSERT INTO `espana` VALUES (02,"Cádiz");
INSERT INTO `espana` VALUES (03,"Córdoba");
INSERT INTO `espana` VALUES (04,"Granada");
INSERT INTO `espana` VALUES (05,"Huelva");
INSERT INTO `espana` VALUES (06,"Jaén");
INSERT INTO `espana` VALUES (07,"Málaga");
INSERT INTO `espana` VALUES (08,"Sevilla");
INSERT INTO `espana` VALUES (09,"Huesca");
INSERT INTO `espana` VALUES (10,"Teruel");
INSERT INTO `espana` VALUES (11,"Zaragoza");
INSERT INTO `espana` VALUES (12,"Asturias");
INSERT INTO `espana` VALUES (13,"Baleares");
INSERT INTO `espana` VALUES (14,"Las Palmas");
INSERT INTO `espana` VALUES (15,"Santa Cruz de Tenerife");
INSERT INTO `espana` VALUES (16,"Cantabria");
INSERT INTO `espana` VALUES (17,"Ávila");
INSERT INTO `espana` VALUES (18,"Burgos");
INSERT INTO `espana` VALUES (19,"León");
INSERT INTO `espana` VALUES (20,"Palencia");
INSERT INTO `espana` VALUES (21,"Salamanca");
INSERT INTO `espana` VALUES (22,"Segovia");
INSERT INTO `espana` VALUES (23,"Soria");
INSERT INTO `espana` VALUES (24,"Valladolid");
INSERT INTO `espana` VALUES (25,"Zamora");
INSERT INTO `espana` VALUES (26,"Albacete");
INSERT INTO `espana` VALUES (27,"Ciudad Real");
INSERT INTO `espana` VALUES (28,"Cuenca");
INSERT INTO `espana` VALUES (29,"Guadalajara");
INSERT INTO `espana` VALUES (30,"Toledo");
INSERT INTO `espana` VALUES (31,"Barcelona");
INSERT INTO `espana` VALUES (32,"Gerona");
INSERT INTO `espana` VALUES (33,"Lérida");
INSERT INTO `espana` VALUES (34,"Tarragona");
INSERT INTO `espana` VALUES (35,"Alicante");
INSERT INTO `espana` VALUES (36,"Castellón");
INSERT INTO `espana` VALUES (37,"Valencia");
INSERT INTO `espana` VALUES (38,"Badajoz");
INSERT INTO `espana` VALUES (39,"Cáceres");
INSERT INTO `espana` VALUES (40,"La Coruña");
INSERT INTO `espana` VALUES (41,"Lugo");
INSERT INTO `espana` VALUES (42,"Orense");
INSERT INTO `espana` VALUES (43, "Pontevedra");
INSERT INTO `espana` VALUES (44,"La Rioja");
INSERT INTO `espana` VALUES (45,"Madrid");
INSERT INTO `espana` VALUES (46,"Murcia");
INSERT INTO `espana` VALUES (47,"Navarra");
INSERT INTO `espana` VALUES (48,"Álava");
INSERT INTO `espana` VALUES (49,"Guipúzcoa");
INSERT INTO `espana` VALUES (50,"Vizcaya");
INSERT INTO `espana` VALUES (51,"Ceuta");
INSERT INTO `espana` VALUES (52,"Melilla");

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `ID_PROVINCIAS` int NOT NULL,
  `NOMBRE` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CIUDADES` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitios`
--

DROP TABLE IF EXISTS `sitios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sitios` (
  `ID_SITIOS` int NOT NULL,
  `PRECIOS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NOMBRE` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TIPO` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FK_ID_PROVINCIAS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitios`
--

LOCK TABLES `sitios` WRITE;
/*!40000 ALTER TABLE `sitios` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID_USUARIO` int NOT NULL,
  `EMAIL` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PASS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NOMBRE` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PROV_VISIT` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `BUSQUEDAS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FK_ID_PROVINCIAS` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aaa@gmail.com','saldfhsd888x','pedro martin gonzalez','malaga','111','00011cc'),(2,'bbb@hotmail.com','sasdd333tx','Pepe Ruiz Garcia','Sevilla','nosenoseno','0002bb');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 11:42:31
