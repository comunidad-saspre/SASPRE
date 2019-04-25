-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: saspre
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agroinsumos`
--

DROP TABLE IF EXISTS `agroinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `agroinsumos` (
  `IDagroInsumos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(200) NOT NULL,
  `CantDeUso` varchar(5) NOT NULL,
  `Precio` varchar(5) NOT NULL,
  PRIMARY KEY (`IDagroInsumos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agroinsumos`
--

LOCK TABLES `agroinsumos` WRITE;
/*!40000 ALTER TABLE `agroinsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `agroinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bacterias`
--

DROP TABLE IF EXISTS `bacterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bacterias` (
  `IDbacterias` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Forma` varchar(100) NOT NULL,
  PRIMARY KEY (`IDbacterias`),
  KEY `fkIdx_95` (`IDproblematica`),
  CONSTRAINT `FK_95` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacterias`
--

LOCK TABLES `bacterias` WRITE;
/*!40000 ALTER TABLE `bacterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `bacterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoracapitan`
--

DROP TABLE IF EXISTS `bitacoracapitan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bitacoracapitan` (
  `IDBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `IDusuario` int(11) NOT NULL,
  `IDplanta` int(11) NOT NULL,
  `DescripcionPlanta` varchar(250) NOT NULL,
  `DescripcionSintomas` varchar(250) NOT NULL,
  PRIMARY KEY (`IDBitacora`),
  KEY `fkIdx_119` (`IDplanta`),
  KEY `fkIdx_74` (`IDusuario`),
  CONSTRAINT `FK_119` FOREIGN KEY (`IDplanta`) REFERENCES `planta` (`IDplanta`),
  CONSTRAINT `FK_74` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoracapitan`
--

LOCK TABLES `bitacoracapitan` WRITE;
/*!40000 ALTER TABLE `bitacoracapitan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacoracapitan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechasembradio`
--

DROP TABLE IF EXISTS `fechasembradio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fechasembradio` (
  `IDFechasS` int(11) NOT NULL AUTO_INCREMENT,
  `IDplanta` int(11) NOT NULL,
  `ClaveApi` varchar(20) NOT NULL,
  `FechaInicio` varchar(50) NOT NULL,
  `FechaContempladaCosecha` varchar(50) NOT NULL,
  PRIMARY KEY (`IDFechasS`),
  KEY `fkIdx_122` (`ClaveApi`),
  KEY `fkIdx_59` (`IDplanta`),
  CONSTRAINT `FK_122` FOREIGN KEY (`ClaveApi`) REFERENCES `infoapi` (`ClaveApi`),
  CONSTRAINT `FK_59` FOREIGN KEY (`IDplanta`) REFERENCES `planta` (`IDplanta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechasembradio`
--

LOCK TABLES `fechasembradio` WRITE;
/*!40000 ALTER TABLE `fechasembradio` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechasembradio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechaspredicciones`
--

DROP TABLE IF EXISTS `fechaspredicciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fechaspredicciones` (
  `IDFechasP` int(11) NOT NULL AUTO_INCREMENT,
  `ClaveApi` varchar(20) NOT NULL,
  `PrediccionQuince` varchar(5) NOT NULL,
  PRIMARY KEY (`IDFechasP`),
  KEY `fkIdx_67` (`ClaveApi`),
  CONSTRAINT `FK_67` FOREIGN KEY (`ClaveApi`) REFERENCES `infoapi` (`ClaveApi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechaspredicciones`
--

LOCK TABLES `fechaspredicciones` WRITE;
/*!40000 ALTER TABLE `fechaspredicciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechaspredicciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fertilizantes`
--

DROP TABLE IF EXISTS `fertilizantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fertilizantes` (
  `IDfertilizantes` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Nutrientes` varchar(500) NOT NULL,
  PRIMARY KEY (`IDfertilizantes`),
  KEY `fkIdx_38` (`IDagroInsumos`),
  CONSTRAINT `FK_38` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fertilizantes`
--

LOCK TABLES `fertilizantes` WRITE;
/*!40000 ALTER TABLE `fertilizantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertilizantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herbicidas`
--

DROP TABLE IF EXISTS `herbicidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `herbicidas` (
  `IDherbicidas` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Hormonas` varchar(500) NOT NULL,
  PRIMARY KEY (`IDherbicidas`),
  KEY `fkIdx_45` (`IDagroInsumos`),
  CONSTRAINT `FK_45` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herbicidas`
--

LOCK TABLES `herbicidas` WRITE;
/*!40000 ALTER TABLE `herbicidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `herbicidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hongo`
--

DROP TABLE IF EXISTS `hongo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hongo` (
  `IDhongo` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Textura` varchar(100) NOT NULL,
  PRIMARY KEY (`IDhongo`),
  KEY `fkIdx_103` (`IDproblematica`),
  CONSTRAINT `FK_103` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hongo`
--

LOCK TABLES `hongo` WRITE;
/*!40000 ALTER TABLE `hongo` DISABLE KEYS */;
/*!40000 ALTER TABLE `hongo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoapi`
--

DROP TABLE IF EXISTS `infoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `infoapi` (
  `ClaveApi` varchar(20) NOT NULL,
  `HorasLuz` int(11) NOT NULL,
  `NivelHumedad` varchar(5) NOT NULL,
  `Temperatura` varchar(5) NOT NULL,
  `Precipitacion` varchar(5) NOT NULL,
  PRIMARY KEY (`ClaveApi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoapi`
--

LOCK TABLES `infoapi` WRITE;
/*!40000 ALTER TABLE `infoapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insecticidapesticida`
--

DROP TABLE IF EXISTS `insecticidapesticida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insecticidapesticida` (
  `IDinsecPest` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Quimicos` varchar(500) NOT NULL,
  PRIMARY KEY (`IDinsecPest`),
  KEY `fkIdx_52` (`IDagroInsumos`),
  CONSTRAINT `FK_52` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insecticidapesticida`
--

LOCK TABLES `insecticidapesticida` WRITE;
/*!40000 ALTER TABLE `insecticidapesticida` DISABLE KEYS */;
/*!40000 ALTER TABLE `insecticidapesticida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plaga`
--

DROP TABLE IF EXISTS `plaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plaga` (
  `IDplaga` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Clasificacion` varchar(100) NOT NULL,
  PRIMARY KEY (`IDplaga`),
  KEY `fkIdx_111` (`IDproblematica`),
  CONSTRAINT `FK_111` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plaga`
--

LOCK TABLES `plaga` WRITE;
/*!40000 ALTER TABLE `plaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `plaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planta`
--

DROP TABLE IF EXISTS `planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `planta` (
  `IDplanta` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComun` varchar(100) NOT NULL,
  `NombreCientifico` varchar(100) NOT NULL,
  `TipoRiego` varchar(100) NOT NULL,
  PRIMARY KEY (`IDplanta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planta`
--

LOCK TABLES `planta` WRITE;
/*!40000 ALTER TABLE `planta` DISABLE KEYS */;
/*!40000 ALTER TABLE `planta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problematica`
--

DROP TABLE IF EXISTS `problematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problematica` (
  `IDproblematica` int(11) NOT NULL AUTO_INCREMENT,
  `IDusuario` int(11) NOT NULL,
  `IDplanta` int(11) NOT NULL,
  `IDagroInsumos` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DescripcionProblematica` varchar(300) NOT NULL,
  `Causa` varchar(300) NOT NULL,
  `Sintomas` varchar(350) NOT NULL,
  PRIMARY KEY (`IDproblematica`),
  KEY `fkIdx_127` (`IDagroInsumos`),
  KEY `fkIdx_82` (`IDusuario`),
  KEY `fkIdx_85` (`IDplanta`),
  CONSTRAINT `FK_127` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`),
  CONSTRAINT `FK_82` FOREIGN KEY (`IDusuario`) REFERENCES `usuario` (`IDusuario`),
  CONSTRAINT `FK_85` FOREIGN KEY (`IDplanta`) REFERENCES `planta` (`IDplanta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problematica`
--

LOCK TABLES `problematica` WRITE;
/*!40000 ALTER TABLE `problematica` DISABLE KEYS */;
/*!40000 ALTER TABLE `problematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `IDusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Contra` varchar(12) NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `NickName` varchar(100) NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Andre','Ibarra Perez','3qi2qtccj','Admin','Muski',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona`
--

DROP TABLE IF EXISTS `zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zona` (
  `IDzona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `MetrosCuadrados` varchar(5) NOT NULL,
  PRIMARY KEY (`IDzona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona`
--

LOCK TABLES `zona` WRITE;
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-24 20:43:56
