-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.2.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para saspre
DROP DATABASE IF EXISTS `saspre`;
CREATE DATABASE IF NOT EXISTS `saspre` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `saspre`;

-- Volcando estructura para tabla saspre.agroinsumos
DROP TABLE IF EXISTS `agroinsumos`;
CREATE TABLE IF NOT EXISTS `agroinsumos` (
  `IDagroInsumos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(200) NOT NULL,
  `CantDeUso` varchar(5) NOT NULL,
  `Precio` varchar(5) NOT NULL,
  PRIMARY KEY (`IDagroInsumos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.agroinsumos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `agroinsumos` DISABLE KEYS */;
/*!40000 ALTER TABLE `agroinsumos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.bacterias
DROP TABLE IF EXISTS `bacterias`;
CREATE TABLE IF NOT EXISTS `bacterias` (
  `IDbacterias` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Forma` varchar(100) NOT NULL,
  PRIMARY KEY (`IDbacterias`),
  KEY `fkIdx_95` (`IDproblematica`),
  CONSTRAINT `FK_95` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.bacterias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bacterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `bacterias` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.bitacoracapitan
DROP TABLE IF EXISTS `bitacoracapitan`;
CREATE TABLE IF NOT EXISTS `bitacoracapitan` (
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

-- Volcando datos para la tabla saspre.bitacoracapitan: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bitacoracapitan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacoracapitan` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.fechasembradio
DROP TABLE IF EXISTS `fechasembradio`;
CREATE TABLE IF NOT EXISTS `fechasembradio` (
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

-- Volcando datos para la tabla saspre.fechasembradio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fechasembradio` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechasembradio` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.fechaspredicciones
DROP TABLE IF EXISTS `fechaspredicciones`;
CREATE TABLE IF NOT EXISTS `fechaspredicciones` (
  `IDFechasP` int(11) NOT NULL AUTO_INCREMENT,
  `ClaveApi` varchar(20) NOT NULL,
  `PrediccionQuince` varchar(5) NOT NULL,
  PRIMARY KEY (`IDFechasP`),
  KEY `fkIdx_67` (`ClaveApi`),
  CONSTRAINT `FK_67` FOREIGN KEY (`ClaveApi`) REFERENCES `infoapi` (`ClaveApi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.fechaspredicciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fechaspredicciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechaspredicciones` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.fertilizantes
DROP TABLE IF EXISTS `fertilizantes`;
CREATE TABLE IF NOT EXISTS `fertilizantes` (
  `IDfertilizantes` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Nutrientes` varchar(500) NOT NULL,
  PRIMARY KEY (`IDfertilizantes`),
  KEY `fkIdx_38` (`IDagroInsumos`),
  CONSTRAINT `FK_38` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.fertilizantes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `fertilizantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertilizantes` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.herbicidas
DROP TABLE IF EXISTS `herbicidas`;
CREATE TABLE IF NOT EXISTS `herbicidas` (
  `IDherbicidas` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Hormonas` varchar(500) NOT NULL,
  PRIMARY KEY (`IDherbicidas`),
  KEY `fkIdx_45` (`IDagroInsumos`),
  CONSTRAINT `FK_45` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.herbicidas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `herbicidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `herbicidas` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.hongo
DROP TABLE IF EXISTS `hongo`;
CREATE TABLE IF NOT EXISTS `hongo` (
  `IDhongo` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Textura` varchar(100) NOT NULL,
  PRIMARY KEY (`IDhongo`),
  KEY `fkIdx_103` (`IDproblematica`),
  CONSTRAINT `FK_103` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.hongo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `hongo` DISABLE KEYS */;
/*!40000 ALTER TABLE `hongo` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.infoapi
DROP TABLE IF EXISTS `infoapi`;
CREATE TABLE IF NOT EXISTS `infoapi` (
  `ClaveApi` varchar(20) NOT NULL,
  `HorasLuz` int(11) NOT NULL,
  `NivelHumedad` varchar(5) NOT NULL,
  `Temperatura` varchar(5) NOT NULL,
  `Precipitacion` varchar(5) NOT NULL,
  PRIMARY KEY (`ClaveApi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.infoapi: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `infoapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoapi` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.IniciarSesion
DROP PROCEDURE IF EXISTS `IniciarSesion`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `IniciarSesion`(
IN _nickname VARCHAR(100),
IN _contra VARCHAR(100)
)
SELECT * FROM usuario WHERE nickname = _nickname and contra = _contra//
DELIMITER ;

-- Volcando estructura para tabla saspre.insecticidapesticida
DROP TABLE IF EXISTS `insecticidapesticida`;
CREATE TABLE IF NOT EXISTS `insecticidapesticida` (
  `IDinsecPest` int(11) NOT NULL AUTO_INCREMENT,
  `IDagroInsumos` int(11) NOT NULL,
  `Quimicos` varchar(500) NOT NULL,
  PRIMARY KEY (`IDinsecPest`),
  KEY `fkIdx_52` (`IDagroInsumos`),
  CONSTRAINT `FK_52` FOREIGN KEY (`IDagroInsumos`) REFERENCES `agroinsumos` (`IDagroInsumos`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.insecticidapesticida: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `insecticidapesticida` DISABLE KEYS */;
/*!40000 ALTER TABLE `insecticidapesticida` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.plaga
DROP TABLE IF EXISTS `plaga`;
CREATE TABLE IF NOT EXISTS `plaga` (
  `IDplaga` int(11) NOT NULL AUTO_INCREMENT,
  `IDproblematica` int(11) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Clasificacion` varchar(100) NOT NULL,
  PRIMARY KEY (`IDplaga`),
  KEY `fkIdx_111` (`IDproblematica`),
  CONSTRAINT `FK_111` FOREIGN KEY (`IDproblematica`) REFERENCES `problematica` (`IDproblematica`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.plaga: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `plaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `plaga` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.planta
DROP TABLE IF EXISTS `planta`;
CREATE TABLE IF NOT EXISTS `planta` (
  `IDplanta` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComun` varchar(100) NOT NULL,
  `NombreCientifico` varchar(100) NOT NULL,
  `TipoRiego` varchar(100) NOT NULL,
  PRIMARY KEY (`IDplanta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.planta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `planta` DISABLE KEYS */;
/*!40000 ALTER TABLE `planta` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.problematica
DROP TABLE IF EXISTS `problematica`;
CREATE TABLE IF NOT EXISTS `problematica` (
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

-- Volcando datos para la tabla saspre.problematica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `problematica` DISABLE KEYS */;
/*!40000 ALTER TABLE `problematica` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.RegistrarUsuario
DROP PROCEDURE IF EXISTS `RegistrarUsuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarUsuario`(
IN _Nombre VARCHAR(100),
IN _Apellidos VARCHAR(100),
IN _Contra VARCHAR(100),
IN _Cargo VARCHAR(100),
IN _Nickname VARCHAR(100),
IN _Correo VARCHAR(100)
)
INSERT INTO usuario(Nombre,Apellidos,Contra,Cargo,Nickname,Correo) 
VALUES (_Nombre,_Apellidos,_Contra,_Cargo,_Nickname,_Correo)//
DELIMITER ;



-- Volcando estructura para tabla saspre.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `IDusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Contra` varchar(12) NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `NickName` varchar(100) NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`IDusuario`, `Nombre`, `Apellidos`, `Contra`, `Cargo`, `NickName`, `Correo`) VALUES
	(1, 'Andre', 'Ibarra Perez', '3qi2qtccj', 'Admin', 'Muski', NULL),
	(2, 'Filiberto', 'Salazar Sanchez', 'RtBYmq33cVI=', 'Usuario', 'itzfilisalsa', 'itzfilisalsa@gmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.zona
DROP TABLE IF EXISTS `zona`;
CREATE TABLE IF NOT EXISTS `zona` (
  `IDzona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `MetrosCuadrados` varchar(5) NOT NULL,
  PRIMARY KEY (`IDzona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.zona: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
