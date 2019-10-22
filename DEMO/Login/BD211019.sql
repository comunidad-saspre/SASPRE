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
CREATE DATABASE IF NOT EXISTS `saspre` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `saspre`;

-- Volcando estructura para procedimiento saspre.AgregarCalendario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCalendario`(
IN `nombre_usuario` VARCHAR(100),
IN `nombre_actividad` VARCHAR(300),
IN `descripcion_act` VARCHAR(300),
IN `fecha_inicio` DATE,
IN `fecha_fin` DATE
)
INSERT INTO calendarioact(Usuario_Calendario,Nombre,Descripcion,FechaInicio,FechaFin)
VALUES(nombre_usuario,nombre_actividad,descripcion_act,fecha_inicio,fecha_fin)//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.AgregarCosechas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCosechas`(
IN `_Usuario_Cultivo` VARCHAR(100),
IN `_Cultivo` VARCHAR(100),
IN `_Fecha_Plantado` DATE,
IN `_Fecha_Cosecha` DATE,
IN `_Cantidad` INT,
IN `_Estado` VARCHAR(300)
)
INSERT INTO Cosechas (Usuario_Cultivo,Cultivo,Fecha_Plantado,Fecha_Cosecha,Cantidad,Estado)
VALUES(_Usuario_Cultivo,_Cultivo,_Fecha_Plantado,_Fecha_Cosecha,_Cantidad,_Estado)//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.AgregarCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCultivos`(
IN `_Usuario_Cultivo` VARCHAR(100),
IN `_Cultivo` VARCHAR(100),
IN `_Fecha_Plantado` DATE,
IN `_Fecha_Cosecha` DATE,
IN `_Cantidad` INT,
IN `_Estado` VARCHAR(100)
)
INSERT INTO Cultivos (Usuario_Cultivo,Cultivo,Fecha_Plantado,Fecha_Cosecha,Cantidad,Estado)
VALUES(_Usuario_Cultivo,_Cultivo,_Fecha_Plantado,_Fecha_Cosecha,_Cantidad,_Estado)//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.agregardiarios
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregardiarios`(
IN `_Fecha` DATE
)
INSERT INTO datosatmosfericosdiarios(fecha) VALUES(_Fecha)//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.AgregarPlaga
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPlaga`(
	IN `_Cultivo` VARCHAR(100),
	IN `_Nombre_Plaga` VARCHAR(500),
	IN `_FechaEncontrada` DATE

)
INSERT INTO plaga (Cultivo,Plaga,FechaEncontrada) VALUES(_Cultivo,_Nombre_Plaga,_FechaEncontrada)//
DELIMITER ;

-- Volcando estructura para tabla saspre.agroinsumos
CREATE TABLE IF NOT EXISTS `agroinsumos` (
  `IDagroinsumo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `CantUso` varchar(100) NOT NULL,
  `Precio` varchar(12) NOT NULL,
  `Quimicos` varchar(500) NOT NULL,
  `Hormonas` varchar(500) NOT NULL,
  `Nutrientes` varchar(500) NOT NULL,
  PRIMARY KEY (`IDagroinsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.agroinsumos: ~41 rows (aproximadamente)
/*!40000 ALTER TABLE `agroinsumos` DISABLE KEYS */;
REPLACE INTO `agroinsumos` (`IDagroinsumo`, `Nombre`, `Marca`, `CantUso`, `Precio`, `Quimicos`, `Hormonas`, `Nutrientes`) VALUES
	(1, 'Maíz', 'Blazer', '1.5 Kg por  hectárea', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(2, 'Maíz', 'Faena', '2.0 Lts por hectárea', '$260', 'Dual (Metacloro) o Lasso (Ataclor)', 'Ninguno', 'Ninguno'),
	(3, 'Maíz', 'Sifatec', '2.0 Lts por hectárea', '$388', 'Prowl 500 (Pendimetalin)', 'Ninguno', 'Ninguno'),
	(4, 'Maíz', 'Syngenta', '6.7E, 3.5 a 4.5 Lts', '$2025', 'Primagram Gold', 'Ninguno', 'Ninguno'),
	(5, 'Maíz', 'Desmonte A 480 SCA', '1 Lts por hectárea', '$120', '2-4D', 'Ninguno', 'Ninguno'),
	(6, 'Maíz', 'Blazer', '1.5 Kg por  hectárea', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(7, 'Maíz', 'Faena', '2.0 Lts por hectárea', '$260', 'Dual (Metacloro) o Lasso (Ataclor)', 'Ninguno', 'Ninguno'),
	(8, 'Maíz', 'Sifatec', '2.0 Lts por hectárea', '$388', 'Prowl 500 (Pendimetalin)', 'Ninguno', 'Ninguno'),
	(9, 'Maíz', 'Syngenta', '6.7E, 3.5 a 4.5 Lts', '$2025', 'Primagram Gold', 'Ninguno', 'Ninguno'),
	(10, 'Maíz', 'Desmonte A 480 SCA', '1 Lts por hectárea', '$120', '2-4D', 'Ninguno', 'Ninguno'),
	(11, 'Caña', 'Fórmula comercial 9-23-30+46-0-0', '900 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(12, 'Maíz', 'Blazer', '1.5 Kg por  hectárea', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(13, 'Maíz', 'Faena', '2.0 Lts por hectárea', '$260', 'Dual (Metacloro) o Lasso (Ataclor)', 'Ninguno', 'Ninguno'),
	(14, 'Maíz', 'Sifatec', '2.0 Lts por hectárea', '$388', 'Prowl 500 (Pendimetalin)', 'Ninguno', 'Ninguno'),
	(15, 'Maíz', 'Syngenta', '6.7E, 3.5 a 4.5 Lts', '$2025', 'Primagram Gold', 'Ninguno', 'Ninguno'),
	(16, 'Maíz', 'Desmonte A 480 SCA', '1 Lts por hectárea', '$120', '2-4D', 'Ninguno', 'Ninguno'),
	(17, 'Caña', 'Fórmula comercial 9-23-30+46-0-0', '900 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(18, 'Caña', 'Mi huerto', '500 kg/ha de la fórmula 22-11-11-6 en el fondo del surco más 150 kg', '$230', 'Sulfato de Amonio', 'Ninguno', 'Ninguno'),
	(19, 'Caña', 'Fórmula comercial 9-23-30 + 46-0-0.', '1,050 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(20, 'Caña', 'Fórmula comercial 7-19-29-4-2 + 46-0-0 por Dosis', '1,200 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(21, 'Sorgo', 'FAENA', '2.4 L/ha, 136 cc/bomba de 17 L', '$130', 'Glufosinato de Amonio', 'Ninguno', 'Ninguno'),
	(22, 'Sorgo', 'Sedgehammer', '100-140 g/ha, 10 g por bomba de 17 L', '$198.38', 'Halosulfuron Metil', 'Ninguno', 'Ninguno'),
	(23, 'Sorgo', 'LAFAM', '2.8-4.3 Lha-1 (2 a 3 L/mz)', '$1455', 'Glifosato', 'Ninguno', 'Ninguno'),
	(24, 'Sorgo', '2-4-D Amina', '1.43-2.14 Lha-1 (1 a 1.5 L/mz)', '$120', '2-4-D Amina', 'Ninguno', 'Ninguno'),
	(25, 'Sorgo', 'Blazer', '2.8 -4.3 kgha-1 (2-3 kg/mz)', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(26, 'Sorgo', 'Fósforo', '40 kg por hectárea', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(27, 'Maíz', 'Blazer', '1.5 Kg por  hectárea', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(28, 'Maíz', 'Faena', '2.0 Lts por hectárea', '$260', 'Dual (Metacloro) o Lasso (Ataclor)', 'Ninguno', 'Ninguno'),
	(29, 'Maíz', 'Sifatec', '2.0 Lts por hectárea', '$388', 'Prowl 500 (Pendimetalin)', 'Ninguno', 'Ninguno'),
	(30, 'Maíz', 'Syngenta', '6.7E, 3.5 a 4.5 Lts', '$2025', 'Primagram Gold', 'Ninguno', 'Ninguno'),
	(31, 'Maíz', 'Desmonte A 480 SCA', '1 Lts por hectárea', '$120', '2-4D', 'Ninguno', 'Ninguno'),
	(32, 'Caña', 'Fórmula comercial 9-23-30+46-0-0', '900 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(33, 'Caña', 'Mi huerto', '500 kg/ha de la fórmula 22-11-11-6 en el fondo del surco más 150 kg', '$230', 'Sulfato de Amonio', 'Ninguno', 'Ninguno'),
	(34, 'Caña', 'Fórmula comercial 9-23-30 + 46-0-0.', '1,050 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(35, 'Caña', 'Fórmula comercial 7-19-29-4-2 + 46-0-0 por Dosis', '1,200 Kg', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(36, 'Sorgo', 'FAENA', '2.4 L/ha, 136 cc/bomba de 17 L', '$130', 'Glufosinato de Amonio', 'Ninguno', 'Ninguno'),
	(37, 'Sorgo', 'Sedgehammer', '100-140 g/ha, 10 g por bomba de 17 L', '$198.38', 'Halosulfuron Metil', 'Ninguno', 'Ninguno'),
	(38, 'Sorgo', 'LAFAM', '2.8-4.3 Lha-1 (2 a 3 L/mz)', '$1455', 'Glifosato', 'Ninguno', 'Ninguno'),
	(39, 'Sorgo', '2-4-D Amina', '1.43-2.14 Lha-1 (1 a 1.5 L/mz)', '$120', '2-4-D Amina', 'Ninguno', 'Ninguno'),
	(40, 'Sorgo', 'Blazer', '2.8 -4.3 kgha-1 (2-3 kg/mz)', '$176', 'Atrazina', 'Ninguno', 'Ninguno'),
	(41, 'Sorgo', 'Fósforo', '40 kg por hectárea', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno');
/*!40000 ALTER TABLE `agroinsumos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.alarmascultivos
CREATE TABLE IF NOT EXISTS `alarmascultivos` (
  `IDalarma` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAlarma` varchar(100) NOT NULL,
  `nombrePlanta` varchar(100) NOT NULL,
  `tempMaxAlarma` float NOT NULL,
  `tempMinAlarma` float DEFAULT NULL,
  `lapsoDias` int(2) DEFAULT NULL,
  PRIMARY KEY (`IDalarma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.alarmascultivos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `alarmascultivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alarmascultivos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.almacen
CREATE TABLE IF NOT EXISTS `almacen` (
  `IDalmacen` int(11) NOT NULL AUTO_INCREMENT,
  `tipoObjeto` varchar(30) DEFAULT NULL,
  `nombreObjeto` varchar(100) DEFAULT NULL,
  `cantidadObjeto` int(11) DEFAULT NULL,
  `tipoSiembra` varchar(20) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `usuarioAlmacen` varchar(100) NOT NULL,
  PRIMARY KEY (`IDalmacen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.almacen: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `almacen` DISABLE KEYS */;
REPLACE INTO `almacen` (`IDalmacen`, `tipoObjeto`, `nombreObjeto`, `cantidadObjeto`, `tipoSiembra`, `precio`, `fechaIngreso`, `usuarioAlmacen`) VALUES
	(2, 'Cultivo', 'Maíz', 500, 'a', 500, '2019-10-01', 'Emiliano'),
	(4, 'Fertilizante', 'a', 500, '', 500, '2019-10-18', 'Emiliano');
/*!40000 ALTER TABLE `almacen` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.altaAlarmaCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaAlarmaCultivos`(
	in _nombreAlarma VARCHAR(100),
	in _nombrePlanta  VARCHAR (100),
	in _tempMaxAlarma FLOAT ,
	in _tempMinAlarma FLOAT ,
	in _lapsoDias INT(2)
)
BEGIN 

	INSERT INTO AlarmasCultivos (`nombreAlarma`,`nombrePlanta`,`tempMaxAlarma`,`tempMinAlarma`,`lapsoDias`)
	VALUES (
		`_nombreAlarma`,
		`_nombrePlanta`,
		`_tempMaxAlarma`,
		`_tempMinAlarma`,
		`_lapsoDias`
	);
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaAlmacen
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaAlmacen`(
	IN `_tipoObjeto` varchar(30),
	IN `_nombreObjeto` varchar(100),
	IN `_cantidadObjeto` int,
	IN `_tipoSiembra` varchar(20),
	IN `_precio` double,
	IN `_fechaIngreso` date,
	IN `_usuarioAlmacen` VARCHAR(100)
        
)
begin
            insert into almacen(tipoObjeto, nombreObjeto, cantidadObjeto, tipoSiembra, precio, fechaIngreso,usuarioAlmacen)
            values(
                _tipoObjeto,
                _nombreObjeto,
                _cantidadObjeto,
                _tipoSiembra,
                _precio,
                _fechaIngreso,
                _usuarioAlmacen
            );
        end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaBitacoraAlertas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaBitacoraAlertas`(
    in `_descripcion` varchar(100),
    in `_fecha` date
)
begin
    insert into bitacoraAlertas (descripcion, fecha)
    values(
        _descripcion,
        _fecha
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaCalendarioAct
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaCalendarioAct`(
    in `_descripcion` varchar(100),
    in `_fechaIngreso` date,
    in `_fechaRealizacion` date
)
begin
    insert into calendarioAct(descripcion, fechaIngreso, fechaRealizacion)
    values(
        _descripcion,
        _fechaIngreso,
        _fechaRealizacion
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaGastos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaGastos`(
    in `_fechaCompra` date,
    in `_descripcionCompra` varchar(100)
)
begin
    insert into gastos(fechaCompra, descripcionCompra)
    values(
        _fechaCompra,
        _descripcionCompra
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaGrafico
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaGrafico`(    
    in `_nombreTerreno` varchar(20),
    in `_nombreCultivo` varchar(50),
    in `_fechaPlantado` date,
    in `_fechaTentativa` date,
    in `_cantidad` int,
    in `_estado` varchar(200),
    in `_locacion` varchar(100),
    in `_nombreImagen` varchar(100)
)
begin
    insert into grafico(nombreTerreno, nombreCultivo, fechaPlantado, fechaTentativa, cantidad, estado, locacion, nombreImagen)
    values(
        _nombreTerreno,
        _nombreCultivo,
        _fechaPlantado,
        _fechaTentativa,
        _cantidad,
        _estado,
        _locacion,
        _nombreImagen
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaMovimientos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaMovimientos`(
    in `_fecha` date,
    in `_diferencia` double
)
begin
    insert into movimientos(fecha, diferencia)
    values(
        _fecha,
        _diferencia
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.altaSaldo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `altaSaldo`(
    in `_ingresoMensual` double,
    in `_gastoPrevisto` double
)
begin
    insert into saldo(ingresoMensual, gastoPrevisto)
    values(
        _ingresoMensual,
        _gastoPrevisto
    );
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaAlarmaCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaAlarmaCultivos`(
	in _nombreAlarma VARCHAR (100)
)
BEGIN
	DELETE FROM AlarmasCultivos 
	WHERE nombreAlarma=_nombreAlarma;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaAlmacen
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaAlmacen`(
    in `_IDalmacen` int
)
begin
    delete from almacen
    where IDalmacen = _IDalmacen;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaBitacoraAlertas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaBitacoraAlertas`(
    in `_IDbitacoraAlertas` int
)
begin
    delete from bitacoraAlertas
    where IDbitacoraAlertas = _IDbitacoraAlertas;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaCalendarioAct
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaCalendarioAct`(
    in `_IDbajaCalendarioAct` int
)
begin
    delete from calendarioAct
    where IDbajaCalendarioAct = _IDbajaCalendarioAct;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaGastos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaGastos`(
    in `_IDgastos` int
)
begin
    delete from gastos
    where IDgastos = _IDgastos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaGrafico
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaGrafico`(
    in `_IDgrafico` int
)
begin
    delete from grafico
    where IDGrafico = _IDGrafico;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaMovimientos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaMovimientos`(            
    in `_IDmovimientos` double 
)
begin
    delete from movimientos
    where IDmovimientos = _IDmovimientos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaSaldo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaSaldo`(
    in `_IDsaldo` int
)
begin
    delete from saldo
    where IDsaldo = _IDsaldo;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.bajaVentas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaVentas`(
    in `_IDventas` int
)
begin
    delete from ventas
    where IDventas = _IDventas;
end//
DELIMITER ;

-- Volcando estructura para tabla saspre.bitacoraalertas
CREATE TABLE IF NOT EXISTS `bitacoraalertas` (
  `IDbitacoraAlertas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IDbitacoraAlertas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.bitacoraalertas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bitacoraalertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacoraalertas` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.buscarAlmacen
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarAlmacen`(
    in `_IDalmacen` int
)
begin
    select * from almacen
    where IDalmacen = _IDalmacen;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarBitacoraAlertas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarBitacoraAlertas`(
    in `_IDbitacoraAlertas` int
)
begin
    select * from bitacoraAlertas
    where IDbitacoraAlertas = _IDbitacoraAlertas;    
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarCalendarioAct
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarCalendarioAct`(
    in `_IDCalendarioAct` int
)
begin
    select * from calendarioAct
    where IDCalendarioAct = _IDCalendarioAct;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarGastos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarGastos`(
    in `_IDgastos` int
)
begin
    select * from gastos
    where IDgastos = _IDgastos;   
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarGrafico
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarGrafico`(
    in `_IDgrafico` int
)
begin
    select * from grafico
    where IDgrafico = _IDgrafico;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarMovimientos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarMovimientos`(
    in `_IDmovimientos` int
)
begin
    select * from movimientos
    where IDmovimientos = _IDmovimientos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarSaldo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarSaldo`(
    in `_IDsaldo` int
)
begin
    select * from saldo
    where IDsaldo = _IDsaldo;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.buscarVentas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarVentas`(
    in `_IDventas` int
)
begin
    select * from ventas
    where IDventas = _IDventas;    
end//
DELIMITER ;

-- Volcando estructura para tabla saspre.calendarioact
CREATE TABLE IF NOT EXISTS `calendarioact` (
  `idCalendario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Calendario` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  PRIMARY KEY (`idCalendario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.calendarioact: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `calendarioact` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarioact` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.cambioAlarmaCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioAlarmaCultivos`(
	in _nombreAlarma VARCHAR(100),
	in _nombrePlanta  VARCHAR (100),
	in _tempMaxAlarma FLOAT ,
	in _tempMinAlarma FLOAT ,
	in _lapsoDias INT(2)
)
BEGIN 
	
	UPDATE AlarmasCultivos SET 
		nombrePlanta=_nombrePlanta,
		tempMaxAlarma=_tempMaxAlarma,
		tempMinAlarma=_tempMinAlarma,
		lapsoDias=_lapsoDias
	WHERE
		nombreAlarma=_nombreAlarma;
	
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioAlmacen
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioAlmacen`(
    in `_IDalmacen` int,
    in `_tipoObjeto` varchar(30),
    in `_nombreObjeto` varchar(100),
    in `_cantidadObjeto` int,
    in `_tipoSiembra` varchar(20),
    in `_precio` double,
    in `_fechaIngreso` date
)
begin
    update almacen set 
        tipoObjeto = _tipoObjeto,
        nombreObjeto = _nombreObjeto,
        cantidadObjeto = _cantidadObjeto,
        tipoSiembra = _tipoSiembra,
        precio = _precio,
        fechaIngreso = _fechaIngreso
    where 
        IDalmacen = _IDalmacen;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioBitacoraAlertas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioBitacoraAlertas`(
    in `_IDbitacoraAlertas` int,
    in `_descripcion` varchar(100),
    in `_fecha` date
)
begin
    update bitacoraAlertas set 
        descripcion = _descripcion,
        fecha = _fecha
    where 
        IDbitacoraAlertas = _IDbitacoraAlertas;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioCalendarioAct
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioCalendarioAct`(
    in `_IDbajaCalendarioAct` int,
    in `_descripcion` varchar(100),
    in `_fechaIngreso` date,
    in `_fechaRealizacion` date
)
begin
    update calendarioAct set 
        descripcion = _descripcion,
        fechaIngreso = _fechaIngreso,
        fechaRealizacion = _fechaRealizacion      
    where                 
        IDbajaCalendarioAct = _IDbajaCalendarioAct;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioGastos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioGastos`(
    in `_IDgastos` int,
    in `_fechaCompra` date,
    in `_descripcionCompra` varchar(100)
)
begin
    update gastos set 
        fechaCompra = _fechaCompra,
        fechaCompra = _descripcionCompra
    where 
        IDgastos = _IDgastos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioGrafico
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioGrafico`(
    in `_IDgrafico` int,
    in `_nombreTerreno` varchar(20),
    in `_nombreCultivo` varchar(50),
    in `_fechaPlantado` date,
    in `_fechaTentativa` date,
    in `_cantidad` int,
    in `_estado` varchar(200),
    in `_locacion` varchar(100),
    in `_nombreImagen` varchar(100)
)
begin 
    update grafico set
        nombreTerreno = _nombreTerreno,
        nombreCultivo = _nombreCultivo,
        fechaPlantado = _fechaPlantado,
        fechaTentativa = _fechaTentativa,
        cantidad = _cantidad,
        estado = _estado,
        locacion = _locacion,
        nombreImagen = _nombreImagen
    where 
        IDgrafico = _IDGrafico;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioMovimientos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioMovimientos`(
    in `_IDmovimientos` int,
    in `_fecha` date,
    in `_diferencia` double
)
begin
    update movimientos set 
        fecha = _fecha,
        diferencia = _diferencia
    where 
        IDmovimientos = _IDmovimientos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.cambioSaldo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambioSaldo`(
    in `_IDsaldo` int,
    in `_ingresoMensual` double,
    in `_gastoPrevisto` double
)
begin
    update almacen set 
        ingresoMensual = _ingresoMensual,
        gastoPrevisto = _gastoPrevisto
    where 
        IDgasto = _IDgasto;
end//
DELIMITER ;

-- Volcando estructura para tabla saspre.controlplaga
CREATE TABLE IF NOT EXISTS `controlplaga` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cultivo` varchar(200) DEFAULT NULL,
  `Plaga` varchar(200) DEFAULT NULL,
  `Insecticida` varchar(100) DEFAULT NULL,
  `Dosis` varchar(50) DEFAULT NULL,
  `NombreComercial` varchar(100) DEFAULT NULL,
  `DosisComercial` varchar(50) DEFAULT NULL,
  `EpocaControl` text DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.controlplaga: ~93 rows (aproximadamente)
/*!40000 ALTER TABLE `controlplaga` DISABLE KEYS */;
REPLACE INTO `controlplaga` (`Id`, `Cultivo`, `Plaga`, `Insecticida`, `Dosis`, `NombreComercial`, `DosisComercial`, `EpocaControl`) VALUES
	(1, 'Sorgo', 'Gusano cogollero Spodoptera frugiperda', 'Clorpirifos Etil ', '360', 'Lorsban 480 EM', '0.75 L ', 'Cuando se tenga 20% de plantas dañadas.'),
	(2, 'Sorgo', 'Gusano de la panoja/Celama sorghiella', 'Meditatión', '416.00', 'Supracid 40 E', '1.0', 'Cuando se encuentre de dos a tres gusanos por panoja'),
	(3, 'Sorgo', 'Mosca midge o mosca de la panoja / Contarinia sorghicola', 'Clorpirifos Etil', '240', 'Lorsban 480 EM', '0.5 L', 'Cuando haya una o más mosquitas por panoja'),
	(4, 'Sorgo', 'Mosca midge o mosca de la panoja / Contarinia sorghicola', 'Metidatión', '416', 'EM Supracid 40 E', '1.0 L', 'Cuando haya una o más mosquitas por panoja'),
	(5, 'Sorgo', 'Mosca midge o mosca de la panoja / Contarinia sorghicola', 'Deltametrina ', '6.25', 'Decis EC 2.5 ', '0.25 L ', 'Cuando haya una o más mosquitas por panoja'),
	(6, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Oxidemeton Metil', '125', 'Metasystox-R-25', '0.5 L ', 'Al notar que los cogollos presenten un aspecto “enmielado”'),
	(7, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Ometoato', '500', 'Folimat 1000E', '0.5 L ', 'Al notar que los cogollos presenten un aspecto “enmielado”'),
	(8, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Citlalli 350', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(9, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Comando 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(10, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Confial', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(11, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Confidor 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(12, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Confol 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(13, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Dinastia 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(14, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Helmfidor', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(15, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Imi 350', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(16, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Kohinor 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(17, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Mos Blanc 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(18, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Singular', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(19, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Citlalli 350', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(20, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Velfidor 350 SC', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(21, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Imidacloprid', '105', 'Picador 70 PH', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(22, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Ergofos 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(23, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Ergofos 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(24, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Lucamet 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(25, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Metafos 600 C. E.', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(26, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Metamidofos 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(27, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Mortero 600 F', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(28, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Sagamet', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(29, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Tramofos 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(30, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Velsor 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(31, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Metamidofos', '900', 'Warrior 600', '1.5 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(32, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Spirotetramad', '45', 'Movento 150 OD', '0.3 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(33, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Sulfoxaflor', '12', 'Toretto', '0.05 L ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(34, 'Sorgo', 'Pulgón del cogollo Rhopalosiphum maidis', 'Spirotetramad', '125', 'Actara 25 WG', '0.5 Kg ', 'Esta lista deberá ser avalada por SENASICA – SAGARPA.\r\nEl control químico es la última opción para el control del pulgón amarillo una vez que se ha alcanzado \r\nel umbral económico (50 pulgones por planta en promedio) y al no observar enemigos naturales. En el caso \r\nde la aplicación de insecticidas es indispensable el uso de un dispersante y volúmenes de agua de 200 a \r\n250 L/ha en aplicación terrestre. Nota: las aplicaciones aéreas no son recomendables en virtud del bajo \r\nvolumen de agua que se aplica; en tal caso no se garantiza el control. '),
	(35, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Novalurón', '100', 'Rimmon', '0.1 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(36, 'Caña', 'Mosca pinta Aeneolamia postica', 'Endosulfan 35', '35 – 52', 'Thiodan Thionex, etc. ', '1 – 15 L', 'Durante la época de lluvias primavera- verano (marzo a  agosto). En las primeras horas de la mañana. '),
	(37, 'Caña', 'Mosca pinta Aeneolamia postica', 'Malation 1000', '35 – 52', 'Malation 1000, Lucation, etc.', '1.0 L', 'Durante la época de lluvias primavera- verano (marzo a  agosto). En las primeras horas de la mañana. '),
	(38, 'Caña', 'Mosca pinta Aeneolamia postica', 'Clorpirifos', '45 – 65', 'Knocker-480', '1 – 1.5 L', 'Durante la época de lluvias primavera- verano (marzo a  agosto). En las primeras horas de la mañana. '),
	(39, 'Caña', 'Mosca pinta Aeneolamia postica', 'Metarhizium', '45 – 65', 'Lorsban 480 EM.', '20 kg/ha arroz micosado', 'Durante la época de lluvias primavera- verano (marzo a  agosto). En las primeras horas de la mañana. '),
	(40, 'Caña', 'Gusano barrenador', 'Trichograma spp.', '2” /ha de huevecillos', '', '3 pulgadas/mes ó 12 a 15 mil huevecillos/ha ', 'Mensualmente'),
	(41, 'Caña', 'Rata', 'Cebos envenenados (Warfarina Sulfato de Talio)', '', '', '2 kg/ha', 'Habiendo incidencia generalmente en invierno (Ene. Feb.).'),
	(42, 'Caña', 'Chinche de encaje', 'Malation', '', 'Malation 1000, Lucation, etc.', '1 L/ha', 'Aplicar al detectar la presencia de la plaga.'),
	(43, 'Maiz', 'Gusano cogollero Spodoptera frugiperda', 'Spinetoram', '4.5', 'Palgus', '75 ml', 'Cuando se encuentre más de 20% de plantas dañadas.'),
	(44, 'Maiz', 'Gusano cogollero Spodoptera frugiperda', 'Benzoato de emamectina', '1.9', 'Denim', '100 mL', 'Cuando se encuentre más de 20% de plantas dañadas.'),
	(45, 'Maiz', 'Gusano cogollero Spodoptera frugiperda', 'Clorpirifos', '480', 'Lorsban 480 E', '1.5 L', 'Cuando se encuentre más de 20% de plantas dañadas.'),
	(46, 'Maiz', 'Gusano cogollero Spodoptera frugiperda', 'Metomyl', '360', 'Lannate 90', '0.4', 'Cuando se encuentre más de 20% de plantas dañadas.'),
	(47, 'Maiz', 'Araña roja Polyphagotarsonemus', 'Abamectina', '9.0', 'Agrimec.', '0.5', 'Cuando el 25% de las hojas estén infestadas.'),
	(48, 'Maiz', 'Araña roja Polyphagotarsonemus', 'Azinfós Etílico', '750', 'Gusatión Etílico Rogor', '1.0', 'Cuando el 25% de las hojas estén infestadas.'),
	(49, 'Maiz', 'Araña roja Polyphagotarsonemus', 'Dimetoato', '400', 'Perfekthion', '1.0', 'Cuando el 25% de las hojas estén infestadas.'),
	(50, 'Maiz', 'Gusano elotero Heliothis zea Bodie', 'Spinetoram', '4.5', 'Palgus', '75 ml', 'Cuando más del 20% los estigmas (pelos de elote) tengan larvas pequeñas.'),
	(51, 'Maiz', 'Gusano elotero Heliothis zea Bodie', 'Benzoato de emamectina', '1.9', 'Denim', '100 mL', 'Cuando más del 20% los estigmas (pelos de elote) tengan larvas pequeñas.'),
	(52, 'Maiz', 'Gusano elotero Heliothis zea Bodie', 'Metomyl', '360', 'Lannate 90', '0.4', 'Cuando más del 20% los estigmas (pelos de elote) tengan larvas pequeñas.'),
	(53, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Novalurón', '100', 'Rimmon', '0.1 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(54, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Cypermetrina', '80', 'Arrivo 200 CE', '0.4 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(55, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Cypermetrina', '80', 'Ripcord 200', '0.4 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(56, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Cypermetrina', '80', 'Sherpa 200 CE', '0.4 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(57, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Cypermetrina', '80', 'Combat 20', '0.4 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(58, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Cypermetrina', '80', 'Cypervel 200', '0.4 L ', 'De floración al llenado de grano cuando se tengan de 10 a 20 \r\nlarvas mayores a 1.5 cm y de un 15 a 30% de defoliación. '),
	(59, 'Soya', 'Gusano terciopelo (Anticarisa gemmatalis Hübner) ', 'Nucleopoliedrovirus de Anticarsia gemmatalis (agNPV)', '20', 'Baculovirus anticarsia', '0.020 L ', 'Cuando se tenga de 5 a 10 larvas pequeñas por metro lineal.'),
	(60, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Metomilo', '300', 'Lannate 90', '0.3 Kg', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(61, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Metomilo', '300', 'Methomyl 190 PS', '0.3 Kg', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(62, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Metomilo', '300', 'Metox 900 PS', '0.3 Kg', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(63, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Metomilo', '300', 'Nudrín 90', '0.3 Kg', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(64, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Permetrina', '136', 'Ambush 34', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(65, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Permetrina', '136', 'Ambush 50', '0.3 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(66, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Permetrina', '136', 'Pounce 500 CE', '0.3 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(67, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Permetrina', '136', 'Talcord 340', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(68, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Cypermetrina', '80', 'Arrivo 200 CE', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(69, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Cypermetrina', '80', 'Ripcord 200', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(70, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Cypermetrina', '80', 'Sherpa 200 CE', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(71, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Cypermetrina', '80', 'Combat 20', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(72, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Cypermetrina', '80', 'Cypervel 200', '0.4 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.'),
	(73, 'Soya', 'Falso medidor de la soya (Pseudoplusia Includens Walker)/Falso medidor de la col (Trichoplusia ni Hübner)', 'Nuclepoliedrovirus de anticarsia gemmatalis (AgNPV)', '20', 'Baculovirus anticarsia', '0.020 Kg', 'Aunque el porcentaje de control es bajo, los organismos benéficos \r\nnaturales protegidos por el control biológico realizan la totalidad del control.'),
	(74, 'Soya', 'Chinche verde (Nezara viridula Linn.)', 'Fipronil', '3', 'Regent 200 SC', '0.015 L', 'En llenado y madurez de grano cuando se tengan dos adultos por metro lineal.'),
	(75, 'Soya', 'Burrita o botijón rayado(Epicauta vittata Fabricius)', 'Cypermetrina', '80', 'Arrivo 200 CE', '0.4 L', 'Sobre los manchones donde se presenta este insecto.'),
	(76, 'Soya', 'Burrita o botijón rayado(Epicauta vittata Fabricius)', 'Cypermetrina', '80', 'Ripcord 200', '0.4 L', 'Sobre los manchones donde se presenta este insecto.'),
	(77, 'Soya', 'Burrita o botijón rayado(Epicauta vittata Fabricius)', 'Cypermetrina', '80', 'Sherpa 200 CE', '0.4 L', 'Sobre los manchones donde se presenta este insecto.'),
	(78, 'Soya', 'Burrita o botijón rayado(Epicauta vittata Fabricius)', 'Cypermetrina', '80', 'Combat 2', '0.4 L', 'Sobre los manchones donde se presenta este insecto.'),
	(79, 'Soya', 'Burrita o botijón rayado(Epicauta vittata Fabricius)', 'Cypermetrina', '80', 'Cypervel 200', '0.4 L', 'Sobre los manchones donde se presenta este insecto.'),
	(80, 'Soya', 'Diabróticas (Diabrotica balteata LeConte) (Diabrotica variegata Jacoby)', 'Cypermetrina', '80', 'Arrivo 200 CE', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.'),
	(81, 'Soya', 'Diabróticas (Diabrotica balteata LeConte) (Diabrotica variegata Jacoby)', 'Cypermetrina', '80', 'Ripcord 200', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.'),
	(82, 'Soya', 'Diabróticas (Diabrotica balteata LeConte) (Diabrotica variegata Jacoby)', 'Cypermetrina', '80', 'Sherpa 200 CE', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.'),
	(83, 'Soya', 'Diabróticas (Diabrotica balteata LeConte) (Diabrotica variegata Jacoby)', 'Cypermetrina', '80', 'Combat 2', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.'),
	(84, 'Soya', 'Diabróticas (Diabrotica balteata LeConte) (Diabrotica variegata Jacoby)', 'Cypermetrina', '80', 'Cypervel 200', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.'),
	(85, 'Soya', 'Mosca blanca (Bemisia tabaco Genn.)', 'Novalurón', '100', 'Rimmon', '0.1 L', 'Cuando se tengan tres adultos por planta. Cuando se tengan cinco ninfas por hoja. Cuidar todo el ciclo de cultivo. '),
	(86, 'Soya', 'Mosca blanca (Bemisia tabaco Genn.)', 'Beauveria bassiana Paecilomyces fumosoraseus', '-', 'Bea-Sin', '2.0 L', 'Cuando se tengan tres adultos por planta. Cuando se tengan cinco ninfas por hoja. Cuidar todo el ciclo de cultivo. '),
	(87, 'Soya', 'Mosca blanca (Bemisia tabaco Genn.)', 'Beauveria bassiana Paecilomyces fumosoraseus', '-', 'Pae-Sin', '2.0 L', 'Cuando se tengan tres adultos por planta. Cuando se tengan cinco ninfas por hoja. Cuidar todo el ciclo de cultivo. '),
	(88, 'Cebolla', 'Trips Frankliniella sp. ', 'Diazinón 1 l/ha', '230-3456', '-', '-', 'Cuando se tenga un insecto por planta. Lo importante es aplicar con mucha agua, \r\narriba de 400 l/ha. Sembrar en el mes de septiembre para evitar que la época seca \r\nque favorece la plaga alcance al cultivo todavía en desarrollo.'),
	(89, 'Cebolla', 'Trips Frankliniella sp. ', 'Mezcla de aceites vegetales(Sanger)', '1 l/ha', '-', '-', 'Cuando se tenga un insecto por planta. Lo importante es aplicar con mucha agua, \r\narriba de 400 l/ha. Sembrar en el mes de septiembre para evitar que la época seca \r\nque favorece la plaga alcance al cultivo todavía en desarrollo.'),
	(90, 'Cebolla', 'Gusano soldado Spodoptera exigua', 'Bacillus thuringiensis', '75', '-', '-', 'Se recomienda que en aplicaciones aéreas \r\nse apliquen con 30 o 40 l de agua/ha y se utilice un dispersanteadherente; \r\nmuestrear periódicamente para realizar las aplicaciones en la \r\nprimera etapa de desarrollo de las larvas '),
	(91, 'Cebolla', 'Gusano soldado Spodoptera exigua', 'Tebufenozide', '80', '-', '-', 'Se recomienda que en aplicaciones aéreas \r\nse apliquen con 30 o 40 l de agua/ha y se utilice un dispersanteadherente; \r\nmuestrear periódicamente para realizar las aplicaciones en la \r\nprimera etapa de desarrollo de las larvas '),
	(92, 'Cebolla', 'Minador de la hoja Liriomyza trifolii', 'Abamectina', '9', '-', '-', 'Cuando se tenga dos plantas dañadas por cada 10 plantas'),
	(93, 'Cebolla', 'Minador de la hoja Liriomyza trifolii', 'Cyromazina', '75', '-', '-', 'Cuando se tenga dos plantas dañadas por cada 10 plantas');
/*!40000 ALTER TABLE `controlplaga` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.cosechas
CREATE TABLE IF NOT EXISTS `cosechas` (
  `IDCultivo` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Cultivo` varchar(100) NOT NULL,
  `Cultivo` varchar(100) NOT NULL,
  `Fecha_Plantado` date NOT NULL,
  `Fecha_Cosecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Estado` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`IDCultivo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.cosechas: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `cosechas` DISABLE KEYS */;
REPLACE INTO `cosechas` (`IDCultivo`, `Usuario_Cultivo`, `Cultivo`, `Fecha_Plantado`, `Fecha_Cosecha`, `Cantidad`, `Estado`) VALUES
	(1, 'muski', 'Maíz', '2019-06-01', '2019-06-01', 10, NULL),
	(2, 'muski', 'Maíz', '2019-06-11', '2019-07-06', 15, NULL),
	(3, 'muski', 'Maíz', '2019-05-28', '2019-06-04', 10, NULL),
	(4, 'muski', 'Caña', '2019-06-04', '2019-06-04', 21, NULL),
	(5, 'muski', 'Maíz', '2019-06-01', '2019-06-04', 10, NULL),
	(6, 'muski', 'Soya', '2019-06-04', '2019-06-04', 50, NULL),
	(7, 'muski', 'Maíz', '2019-06-02', '2019-06-04', 5, NULL),
	(8, 'muski', 'Maíz', '2019-06-04', '2019-06-04', 1, NULL),
	(9, 'a', 'Maíz', '2019-06-04', '2019-06-04', 34, NULL),
	(10, 'a', 'Maíz', '2019-06-05', '2019-06-09', 1, NULL),
	(11, 'a', 'Caña', '2019-06-11', '2019-06-11', 14, NULL),
	(12, 'b', 'Sorgo', '2019-06-11', '2019-06-11', 142, NULL),
	(13, 'b', 'Maíz', '2019-06-11', '2019-06-11', 10, NULL),
	(14, 'a', 'Caña', '2019-06-10', '2019-06-18', 1, NULL),
	(15, 'a', 'Sorgo', '2019-06-15', '2019-06-18', 10, NULL),
	(16, 'a', 'Caña', '2019-06-03', '2019-06-18', 1, NULL);
/*!40000 ALTER TABLE `cosechas` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.cosechas_log
CREATE TABLE IF NOT EXISTS `cosechas_log` (
  `IDLog` int(11) NOT NULL AUTO_INCREMENT,
  `IDCultivo_log` int(11) NOT NULL,
  `Usuario_Cultivo_log` varchar(100) NOT NULL,
  `Cultivo_log` varchar(100) NOT NULL,
  `Fecha_Plantado_log` date NOT NULL,
  `Cantidad_log` int(11) NOT NULL,
  `Estado_log` varchar(300) DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `tiempo_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IDLog`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.cosechas_log: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `cosechas_log` DISABLE KEYS */;
REPLACE INTO `cosechas_log` (`IDLog`, `IDCultivo_log`, `Usuario_Cultivo_log`, `Cultivo_log`, `Fecha_Plantado_log`, `Cantidad_log`, `Estado_log`, `accion`, `tiempo_log`) VALUES
	(1, 10, 'a', 'Maíz', '2019-06-05', 1, NULL, 'insert', '2019-06-09 17:05:00'),
	(2, 11, 'a', 'Caña', '2019-06-11', 14, NULL, 'insert', '2019-06-11 21:54:20'),
	(3, 12, 'b', 'Sorgo', '2019-06-11', 142, NULL, 'insert', '2019-06-11 21:55:57'),
	(4, 13, 'b', 'Maíz', '2019-06-11', 10, NULL, 'insert', '2019-06-11 21:56:57'),
	(5, 0, 'a', 'Caña', '2019-06-10', 1, NULL, 'insert', '2019-06-18 13:07:40'),
	(6, 0, 'a', 'Sorgo', '2019-06-15', 10, 'Probabilidad de Presencia Gusano de la Panoja', 'insert', '2019-06-18 13:10:10'),
	(7, 15, 'a', 'Sorgo', '2019-06-15', 10, NULL, 'update', '2019-06-18 13:55:24'),
	(8, 15, 'a', 'Sorgo', '2019-06-15', 10, NULL, 'update', '2019-06-18 13:58:19'),
	(9, 0, 'a', 'Caña', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'insert', '2019-06-18 14:01:15'),
	(10, 16, 'a', 'Caña', '2019-06-03', 1, NULL, 'update', '2019-06-18 14:01:25');
/*!40000 ALTER TABLE `cosechas_log` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.cultivos
CREATE TABLE IF NOT EXISTS `cultivos` (
  `IDcultivo` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_Cultivo` varchar(100) NOT NULL,
  `Cultivo` varchar(100) NOT NULL,
  `Fecha_Plantado` date NOT NULL,
  `Fecha_Cosecha` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Estado` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IDcultivo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.cultivos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cultivos` DISABLE KEYS */;
REPLACE INTO `cultivos` (`IDcultivo`, `Usuario_Cultivo`, `Cultivo`, `Fecha_Plantado`, `Fecha_Cosecha`, `Cantidad`, `Estado`) VALUES
	(21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado'),
	(22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gallina ciega'),
	(23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata'),
	(27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado');
/*!40000 ALTER TABLE `cultivos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.cultivos_log
CREATE TABLE IF NOT EXISTS `cultivos_log` (
  `IDLog` int(11) NOT NULL AUTO_INCREMENT,
  `IDCultivoCosecha_log` int(11) NOT NULL,
  `Usuario_Cultivo_log` varchar(100) NOT NULL,
  `Cultivo_log` varchar(100) NOT NULL,
  `Fecha_Plantado_log` date NOT NULL,
  `Fecha_Cosecha_log` date NOT NULL,
  `Cantidad_log` int(11) NOT NULL,
  `Estado_log` varchar(300) DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `tiempo_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IDLog`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.cultivos_log: ~88 rows (aproximadamente)
/*!40000 ALTER TABLE `cultivos_log` DISABLE KEYS */;
REPLACE INTO `cultivos_log` (`IDLog`, `IDCultivoCosecha_log`, `Usuario_Cultivo_log`, `Cultivo_log`, `Fecha_Plantado_log`, `Fecha_Cosecha_log`, `Cantidad_log`, `Estado_log`, `accion`, `tiempo_log`) VALUES
	(1, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-17 16:56:24'),
	(2, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-17 16:56:24'),
	(3, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-17 16:56:24'),
	(4, 25, 'a', 'Caña', '2019-06-03', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-17 16:56:24'),
	(5, 26, 'a', 'Caña', '2019-06-10', '2019-06-10', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-17 16:56:24'),
	(6, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-17 16:56:24'),
	(7, 28, 'a', 'Sorgo', '2019-06-15', '2019-06-15', 50, 'Probabilidad de Presencia Gusano de la Panoja', 'update', '2019-06-17 16:56:24'),
	(8, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 13:07:31'),
	(9, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 13:07:31'),
	(10, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 13:07:31'),
	(11, 25, 'a', 'Caña', '2019-06-03', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 13:07:31'),
	(12, 26, 'a', 'Caña', '2019-06-10', '2019-06-10', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 13:07:31'),
	(13, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 13:07:31'),
	(14, 28, 'a', 'Sorgo', '2019-06-15', '2019-06-15', 50, 'Probabilidad de Presencia Gusano de la Panoja', 'update', '2019-06-18 13:07:32'),
	(15, 26, 'a', 'Caña', '2019-06-10', '2019-06-10', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'delete', '2019-06-18 13:07:40'),
	(16, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 13:10:03'),
	(17, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 13:10:03'),
	(18, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 13:10:03'),
	(19, 25, 'a', 'Caña', '2019-06-03', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 13:10:03'),
	(20, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 13:10:03'),
	(21, 28, 'a', 'Sorgo', '2019-06-15', '2019-06-15', 50, 'Probabilidad de Presencia Gusano de la Panoja', 'update', '2019-06-18 13:10:03'),
	(22, 28, 'a', 'Sorgo', '2019-06-15', '2019-06-15', 50, 'Probabilidad de Presencia Gusano de la Panoja', 'delete', '2019-06-18 13:10:10'),
	(23, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 14:01:03'),
	(24, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 14:01:03'),
	(25, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 14:01:03'),
	(26, 25, 'a', 'Caña', '2019-06-03', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 14:01:04'),
	(27, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 14:01:04'),
	(28, 25, 'a', 'Caña', '2019-06-03', '2019-06-03', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'delete', '2019-06-18 14:01:15'),
	(29, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 14:40:46'),
	(30, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 14:40:47'),
	(31, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 14:40:47'),
	(32, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 14:40:47'),
	(33, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:12:33'),
	(34, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:12:33'),
	(35, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:12:33'),
	(36, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:12:34'),
	(37, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:23:50'),
	(38, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:23:50'),
	(39, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:23:51'),
	(40, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:23:51'),
	(41, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:25:30'),
	(42, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:25:31'),
	(43, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:25:31'),
	(44, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:25:31'),
	(45, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:26:21'),
	(46, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:26:21'),
	(47, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:26:21'),
	(48, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:26:21'),
	(49, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:28:47'),
	(50, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:28:47'),
	(51, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:28:47'),
	(52, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:28:48'),
	(53, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:30:43'),
	(54, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:30:43'),
	(55, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:30:43'),
	(56, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:30:43'),
	(57, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:35:40'),
	(58, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:35:40'),
	(59, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:35:41'),
	(60, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:35:41'),
	(61, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 15:37:08'),
	(62, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 15:37:08'),
	(63, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 15:37:09'),
	(64, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 15:37:09'),
	(65, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 21:11:30'),
	(66, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 21:11:30'),
	(67, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 21:11:30'),
	(68, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 21:11:30'),
	(69, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 21:11:45'),
	(70, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 21:11:45'),
	(71, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 21:11:45'),
	(72, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 21:11:45'),
	(73, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 21:17:57'),
	(74, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 21:17:57'),
	(75, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 21:17:57'),
	(76, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 21:17:57'),
	(77, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 21:18:47'),
	(78, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 21:18:47'),
	(79, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 21:18:47'),
	(80, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 21:18:47'),
	(81, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 21:35:36'),
	(82, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 21:35:36'),
	(83, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 21:35:36'),
	(84, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 21:35:36'),
	(85, 21, 'a', 'Soya', '2019-04-23', '2019-06-13', 13, 'Sin estado', 'update', '2019-06-18 23:32:40'),
	(86, 22, 'a', 'Maíz', '2019-03-27', '2019-06-14', 15, 'Probabilidad de Gusano cogollero, Gusano elotero, 30% gallina ciega', 'update', '2019-06-18 23:32:41'),
	(87, 23, 'a', 'Caña', '2019-04-23', '2019-06-14', 1, 'Probabilidad de Gusano Barrenador, Rata, Piojo harinoso de la vid', 'update', '2019-06-18 23:32:41'),
	(88, 27, 'a', 'Soya', '2019-06-15', '2019-06-15', 14, 'Sin estado', 'update', '2019-06-18 23:32:41');
/*!40000 ALTER TABLE `cultivos_log` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.datosatmosfericosdiarios
CREATE TABLE IF NOT EXISTS `datosatmosfericosdiarios` (
  `fecha` date NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.datosatmosfericosdiarios: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `datosatmosfericosdiarios` DISABLE KEYS */;
REPLACE INTO `datosatmosfericosdiarios` (`fecha`, `num`) VALUES
	('2019-06-17', NULL),
	('2019-06-18', NULL),
	('2019-06-19', NULL),
	('2019-09-09', NULL),
	('2019-09-10', NULL),
	('2019-10-16', NULL),
	('2019-10-17', NULL),
	('2019-10-18', NULL),
	('2019-10-20', NULL);
/*!40000 ALTER TABLE `datosatmosfericosdiarios` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.datosclimames
CREATE TABLE IF NOT EXISTS `datosclimames` (
  `Estacion` varchar(50) DEFAULT NULL,
  `Fecha_Local` date DEFAULT NULL,
  `Fecha_UTC` date DEFAULT NULL,
  `Direccion_del_Viento` float DEFAULT NULL,
  `Direccion_de_Rafaga` float DEFAULT NULL,
  `Rapidez_de_Viento` float DEFAULT NULL,
  `Rapidez_de_Rafaga` float DEFAULT NULL,
  `Temperatura` float DEFAULT NULL,
  `Humedad_Relativa` int(11) DEFAULT NULL,
  `Presion_Atmosferica` float DEFAULT NULL,
  `Precipitacion` float DEFAULT NULL,
  `Radiacion_Solar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.datosclimames: ~2,299 rows (aproximadamente)
/*!40000 ALTER TABLE `datosclimames` DISABLE KEYS */;
REPLACE INTO `datosclimames` (`Estacion`, `Fecha_Local`, `Fecha_UTC`, `Direccion_del_Viento`, `Direccion_de_Rafaga`, `Rapidez_de_Viento`, `Rapidez_de_Rafaga`, `Temperatura`, `Humedad_Relativa`, `Presion_Atmosferica`, `Precipitacion`, `Radiacion_Solar`) VALUES
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-15', 101, 92, 8.9, 20.5, 28.1, 76, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-15', 110, 115, 10.2, 20.9, 28.9, 68, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-15', 117, 127, 11.6, 24.1, 30.1, 64, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-15', 101, 120, 8.3, 19.4, 33.4, 46, 1001.5, 0, 17),
	('CIUDADMANTE', '2019-06-14', '2019-06-15', 85, 40, 5.4, 12.6, 35.1, 36, 1001.2, 0, 178),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 88, 84, 6.4, 18.4, 36.5, 32, 1001.2, 0, 399),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 79, 61, 7.5, 17.3, 36.4, 34, 1001.9, 0, 619),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 91, 86, 8.9, 22.7, 36.1, 39, 1003, 0, 796),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 94, 171, 7.4, 20.9, 34.9, 43, 1004, 0, 934),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 102, 184, 7.2, 22.3, 34.5, 48, 1005.1, 0, 997),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 113, 100, 5.8, 15.5, 33.6, 50, 1006.4, 0, 1013),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 139, 123, 5, 15.1, 32.6, 52, 1007.2, 0, 947),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 115, 132, 2.9, 6.8, 31.6, 56, 1007.3, 0, 777),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 272, 348, 3.4, 6.8, 29.5, 66, 1007.7, 0, 153),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 218, 347, 3.4, 6.5, 26.1, 77, 1007.9, 0, 415),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 277, 2, 2, 5.8, 24.3, 86, 1007.6, 0, 182),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 145, 151, 2.9, 4.3, 23.1, 93, 1007.3, 0, 7),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 286, 262, 1.7, 3.2, 23.1, 92, 1006.9, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 274, 342, 3.4, 6.5, 23.5, 90, 1007, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 297, 352, 2.2, 6.8, 24.1, 91, 1007.1, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 279, 328, 3.2, 10.4, 23.9, 90, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 270, 270, 3.6, 9.7, 23.7, 89, 1008.2, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 323, 337, 3.9, 8.3, 25.3, 83, 1008.8, 0, 0),
	('CIUDADMANTE', '2019-06-14', '2019-06-14', 124, 118, 8.1, 19.4, 26.6, 84, 1008.7, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-14', 121, 114, 6.6, 14, 27.7, 76, 1008.5, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-14', 122, 137, 11.9, 24.5, 28.2, 72, 1007.2, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-14', 127, 89, 10, 21.6, 29.1, 66, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-14', 103, 107, 6, 17.3, 30.5, 62, 1005.5, 0, 21),
	('CIUDADMANTE', '2019-06-13', '2019-06-14', 124, 128, 9.1, 28.8, 31.8, 56, 1004.4, 0, 178),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 111, 120, 8.2, 17.6, 33.3, 49, 1004.1, 0, 399),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 86, 88, 9.5, 28.8, 32.9, 50, 1005.3, 0, 654),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 122, 114, 6.4, 12.6, 34.3, 48, 1005.2, 0, 496),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 130, 112, 6.1, 12.6, 34.9, 47, 1006, 0, 838),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 96, 106, 4.5, 9.7, 33.9, 48, 1006.8, 0, 1039),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 179, 154, 4.7, 9.7, 33.1, 50, 1007.7, 0, 1057),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 155, 217, 3.4, 6.8, 32.2, 55, 1008.4, 0, 734),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 189, 337, 3.7, 8.6, 31.2, 59, 1008.6, 0, 603),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 280, 264, 2.5, 10.1, 29.6, 66, 1008.9, 0, 279),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 279, 264, 3.5, 8.3, 27.3, 74, 1008.7, 0, 438),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 275, 255, 2.3, 5.8, 24.7, 89, 1007.9, 0, 131),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 217, 205, 2.3, 4.3, 23.8, 94, 1007.5, 0, 4),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 281, 252, 2.1, 5.4, 23.6, 94, 1006.6, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 267, 243, 3.8, 6.8, 23.9, 92, 1006.2, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 309, 354, 4.9, 9, 24.3, 91, 1006.3, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 306, 333, 5.1, 9, 24.5, 92, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 286, 343, 2, 10.1, 24.9, 93, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 295, 274, 1.5, 4, 24.8, 93, 1007.2, 0, 0),
	('CIUDADMANTE', '2019-06-13', '2019-06-13', 287, 17, 1.7, 4, 24.9, 92, 1007.5, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-13', 55, 42, 1.7, 3.6, 24.2, 93, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-13', 177, 179, 6.6, 13.3, 24.8, 93, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-13', 174, 230, 4.3, 6.5, 24.9, 93, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-13', 177, 266, 1.5, 6.1, 25, 90, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-13', 260, 259, 4.5, 11.2, 26, 85, 1004.2, 0, 9),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 125, 51, 4.7, 14.8, 28.1, 71, 1003.6, 0, 79),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 123, 112, 7.1, 19.1, 27.4, 74, 1003.3, 0, 590),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 146, 85, 7.5, 42.1, 32.9, 57, 1003, 0, 242),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 258, 275, 3.6, 9.4, 33.3, 53, 1002.9, 0, 746),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 292, 340, 3.6, 11.2, 33.3, 53, 1003.7, 0, 580),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 131, 122, 3.6, 11.9, 32.4, 59, 1004.4, 0, 982),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 66, 59, 4.8, 11.2, 31.7, 59, 1004.8, 0, 924),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 73, 47, 3.8, 13, 30.3, 63, 1005, 0, 822),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 170, 297, 1.8, 5, 28.2, 73, 1013.2, 0, 321),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 290, 348, 2.5, 4.7, 23.9, 94, 1006.1, 0, 145),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 239, 248, 2.5, 8.3, 23, 96, 1005.6, 0, 85),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 167, 152, 6.1, 9.4, 23.5, 96, 1004.8, 0.75, 1),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 163, 174, 11.3, 16.6, 24.2, 94, 1005.5, 17, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 79, 74, 3.8, 9, 26.7, 86, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 100, 108, 4.5, 11.2, 26.9, 84, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 99, 93, 4.1, 11.5, 27.2, 82, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 94, 92, 5.2, 11.2, 27.4, 81, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 121, 134, 6.4, 13.3, 27.7, 75, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-12', '2019-06-12', 169, 168, 4.5, 7.2, 27.3, 76, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-12', 262, 264, 2.1, 3.6, 27, 76, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-12', 270, 336, 1.9, 9.4, 27.4, 73, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-12', 316, 347, 3.7, 10.4, 28.9, 66, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-12', 83, 78, 6.8, 18.4, 30.5, 63, 1003.3, 0, 46),
	('CIUDADMANTE', '2019-06-11', '2019-06-12', 107, 106, 8.5, 20.9, 31.6, 56, 1003.1, 0, 59),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 97, 117, 8.5, 22, 34, 47, 1003, 0, 162),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 73, 82, 12, 29.5, 36, 43, 1002.7, 0, 596),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 101, 35, 3.9, 14.4, 36.6, 35, 1003.5, 0, 770),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 131, 122, 4.5, 13.3, 36.6, 36, 1004.7, 0, 891),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 70, 47, 8.2, 14, 35.5, 40, 1006, 0, 969),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 108, 349, 5.2, 14.8, 34.5, 44, 1007.3, 0, 970),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 138, 26, 5.8, 14, 33.3, 49, 1008.3, 0, 924),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 132, 37, 4.5, 9.7, 32.7, 52, 1009.1, 0, 840),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 265, 257, 4.6, 8.6, 31.5, 55, 1009.6, 0, 250),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 68, 10, 3.5, 7.9, 29.4, 63, 1009.9, 0, 407),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 260, 265, 1.9, 3.6, 26.5, 80, 1009.6, 0, 147),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 256, 255, 2.4, 4.7, 24.9, 87, 1009.3, 0, 6),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 187, 175, 3.6, 6.1, 25.1, 86, 1009, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 133, 209, 0.5, 2.2, 25.4, 84, 1009.1, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 285, 348, 3.9, 7.6, 26.2, 78, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 241, 350, 3.8, 6.5, 27, 74, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 230, 220, 1.9, 3.2, 26.5, 80, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 174, 183, 3.1, 6.5, 26.6, 79, 1010.3, 0, 0),
	('CIUDADMANTE', '2019-06-11', '2019-06-11', 68, 28, 2.5, 7.2, 27.2, 74, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-11', 157, 175, 3.2, 6.8, 26.8, 79, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-11', 87, 51, 3, 9.4, 27.7, 71, 1009.5, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-11', 148, 356, 5.4, 12.2, 28.1, 68, 1009, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-11', 303, 354, 5.8, 14.8, 27.8, 77, 1008.3, 0, 24),
	('CIUDADMANTE', '2019-06-10', '2019-06-11', 179, 172, 7, 11.5, 27.3, 81, 1007, 0.25, 108),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 150, 109, 9, 15.5, 30.7, 67, 1006.3, 0, 365),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 165, 156, 11, 20.2, 28.2, 75, 1006.4, 0, 268),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 113, 108, 12.7, 27, 27, 82, 1007.1, 0, 125),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 113, 145, 9.8, 25.9, 32.5, 52, 1006.9, 0, 105),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 174, 8, 14.6, 34.6, 36.5, 40, 1006.9, 0, 710),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 168, 12, 17.5, 33.1, 35.8, 44, 1008.1, 0, 1023),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 109, 10, 10.1, 23.8, 34.4, 54, 1008.6, 0, 923),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 197, 82, 6.3, 16.6, 33.1, 59, 1009, 0, 546),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 95, 341, 5.5, 10.8, 31.4, 67, 1008.7, 0, 315),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 155, 4, 8.1, 16.2, 29.1, 81, 1008.4, 0, 101),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 121, 92, 3.2, 7.9, 28.8, 81, 1006.7, 0, 115),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 91, 179, 2.7, 7.6, 28, 86, 1006, 0, 4),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 162, 156, 4.3, 7.6, 28.3, 85, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 102, 104, 5.4, 9, 28.6, 82, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 81, 92, 3.7, 8.6, 28.7, 83, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 115, 139, 5.7, 11.2, 28.8, 84, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 133, 134, 4.4, 10.4, 28.7, 84, 1004.7, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 93, 128, 8.3, 16.9, 29.3, 81, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-06-10', '2019-06-10', 102, 143, 4.1, 10.1, 29.7, 79, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-10', 96, 95, 3.7, 11.9, 30.9, 74, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-10', 119, 142, 7.5, 19.8, 31.6, 71, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-10', 112, 114, 11.5, 26.3, 33.3, 63, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-10', 107, 95, 13.7, 29.2, 35.9, 55, 1000.1, 0, 19),
	('CIUDADMANTE', '2019-06-09', '2019-06-10', 66, 33, 5.6, 14.8, 41, 19, 999.4, 0, 159),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 61, 24, 7.9, 15.8, 42.6, 11, 999.1, 0, 389),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 108, 106, 6.4, 16.2, 42.5, 18, 999.2, 0, 609),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 78, 64, 6.2, 13.3, 42.1, 24, 999.4, 0, 796),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 104, 35, 6.2, 19.4, 41, 31, 1000, 0, 940),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 50, 40, 8.1, 17.6, 38.8, 44, 1000.9, 0, 1005),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 95, 110, 4.4, 10.8, 37.3, 50, 1001.5, 0, 1004),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 107, 186, 3.9, 13, 35.8, 56, 1002, 0, 960),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 181, 83, 4.9, 11.5, 34.1, 61, 1002.2, 0, 814),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 186, 178, 1.9, 8.6, 31.9, 67, 1002.4, 0, 237),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 76, 351, 2.5, 6.8, 29.4, 78, 1002.3, 0, 293),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 151, 159, 1.7, 3.6, 27.9, 85, 1001.9, 0, 63),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 196, 205, 3.3, 5.4, 27.7, 89, 1001.7, 0, 4),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 133, 110, 2.4, 5.8, 27.8, 88, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 122, 24, 2.1, 6.8, 28.1, 87, 1001, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 94, 145, 2.1, 5.8, 28, 86, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 127, 167, 2.1, 5.4, 28.2, 87, 1001.2, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 113, 113, 6.7, 15.1, 28.5, 85, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 119, 120, 5.9, 13, 28.9, 80, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-09', '2019-06-09', 109, 97, 6.6, 16.6, 30.2, 73, 1001, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-09', 116, 165, 7.2, 15.5, 31.9, 68, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-09', 110, 115, 8.3, 18, 33.5, 63, 998.9, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-09', 99, 98, 8.2, 19.8, 35.5, 55, 997.7, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-09', 100, 91, 8.8, 16.2, 38, 34, 996.8, 0, 14),
	('CIUDADMANTE', '2019-06-08', '2019-06-09', 106, 93, 8.4, 17.6, 40.2, 31, 996, 0, 163),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 72, 71, 6.8, 19.1, 42.2, 21, 996, 0, 390),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 105, 107, 5.8, 19.8, 42, 23, 996.3, 0, 613),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 89, 91, 7, 16.2, 40.9, 31, 996.8, 0, 785),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 78, 120, 6, 17.6, 39.5, 40, 997.6, 0, 908),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 90, 148, 4.6, 12.2, 38.5, 44, 998.5, 0, 992),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 135, 102, 5.5, 10.8, 36.6, 53, 999.2, 0, 987),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 159, 68, 2.5, 10.4, 35.1, 59, 999.8, 0, 919),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 153, 41, 2.9, 6.8, 32.6, 66, 1000, 0, 761),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 106, 185, 3.8, 10.8, 31.1, 72, 1000.1, 0, 459),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 155, 169, 2.5, 5, 28.4, 85, 1000.2, 0, 104),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 161, 169, 5.2, 8.3, 27.8, 89, 999.8, 0, 38),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 144, 173, 4.5, 9, 27.6, 89, 999.3, 0, 3),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 125, 94, 1.6, 4, 27.6, 89, 998.9, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 188, 206, 2.2, 2.9, 27.1, 89, 998.6, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 75, 79, 1.7, 4.7, 27.8, 88, 998.6, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 47, 72, 3.4, 7.9, 28.2, 85, 998.6, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 313, 344, 3.8, 6.5, 28.3, 85, 998.9, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 77, 73, 2.8, 7.9, 29, 83, 999.5, 0, 0),
	('CIUDADMANTE', '2019-06-08', '2019-06-08', 100, 62, 2.9, 7.6, 29.4, 80, 999.4, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-08', 111, 99, 7.6, 15.1, 30.2, 75, 998.9, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-08', 131, 162, 10.3, 20.9, 31.3, 68, 998.3, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-08', 120, 129, 9.4, 22, 32.7, 60, 996.9, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-08', 100, 125, 10.2, 24.8, 35.5, 52, 995.6, 0, 32),
	('CIUDADMANTE', '2019-06-07', '2019-06-08', 123, 134, 4.3, 9, 37.6, 37, 994.8, 0, 133),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 103, 106, 4.3, 9.4, 38.4, 37, 994.9, 0, 209),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 60, 30, 4.7, 13, 38.8, 34, 995, 0, 289),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 87, 72, 4.7, 15.1, 40.5, 34, 995.4, 0, 851),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 73, 63, 6.1, 18.4, 38.9, 44, 996.4, 0, 881),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 143, 146, 5.2, 12.6, 38.3, 45, 997.2, 0, 962),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 136, 48, 4.8, 11.2, 36.5, 49, 998.1, 0, 977),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 148, 160, 4.2, 14, 34.5, 58, 998.8, 0, 900),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 146, 112, 3.6, 9.4, 33.2, 63, 999.6, 0, 799),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 213, 171, 1.4, 6.5, 29.7, 78, 1000.1, 0, 259),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 143, 168, 5, 11.5, 29.1, 82, 1000.2, 0, 264),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 134, 135, 5.6, 9.7, 27.7, 87, 999.8, 0, 141),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 276, 5, 2.4, 4.7, 26.3, 91, 999.1, 0, 4),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 197, 195, 3.4, 5, 26.5, 89, 998.6, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 248, 107, 1.1, 3.2, 27.2, 88, 998.7, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 71, 30, 2.5, 5, 27.7, 84, 998.5, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 97, 98, 3.7, 7.6, 27.9, 83, 999, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 86, 82, 2.8, 8.6, 28.6, 79, 999.5, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 96, 62, 2.8, 8.3, 29.1, 75, 999.6, 0, 0),
	('CIUDADMANTE', '2019-06-07', '2019-06-07', 90, 85, 3.7, 9.7, 29.6, 71, 999.8, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-07', 92, 98, 4.6, 9.7, 30.5, 68, 999.2, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-07', 116, 139, 4.6, 11.9, 31.2, 66, 998.9, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-07', 111, 112, 9, 24.5, 32.2, 61, 997.8, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-07', 94, 77, 4.8, 15.5, 33.6, 49, 996.5, 0, 22),
	('CIUDADMANTE', '2019-06-06', '2019-06-07', 101, 97, 9.1, 19.1, 35.3, 44, 995.8, 0, 114),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 69, 74, 12.7, 28.4, 38.7, 40, 995.7, 0, 442),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 74, 17, 6.7, 15.1, 38.7, 37, 995.3, 0, 595),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 100, 97, 5.2, 14.8, 37.4, 42, 996, 0, 822),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 77, 116, 6, 15.1, 36.6, 48, 996.9, 0, 964),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 277, 20, 3.4, 10.4, 34.8, 52, 997.5, 0, 895),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 98, 358, 6.9, 15.8, 33.8, 58, 998.4, 0, 801),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 268, 337, 3.7, 10.8, 33.6, 61, 998.8, 0, 755),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 98, 26, 4.5, 10.1, 31.5, 71, 999.2, 0, 899),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 122, 110, 3.9, 9, 29.4, 80, 999, 0, 181),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 95, 99, 6, 13.7, 27.9, 87, 998.5, 0, 123),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 158, 166, 8.6, 13.7, 27.4, 89, 998.5, 0, 40),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 88, 92, 2.9, 8.3, 26.9, 91, 998.1, 0, 3),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 111, 162, 2.9, 8.6, 27.7, 85, 996.9, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 152, 153, 4.8, 10.1, 27.8, 84, 997.2, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 152, 166, 7, 11.2, 27.6, 90, 998.1, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 287, 347, 1.4, 6.1, 27.9, 87, 999.1, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 274, 332, 2.2, 6.5, 27.8, 87, 1000, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 302, 343, 4.1, 9.4, 28.2, 85, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-06-06', '2019-06-06', 152, 117, 1, 3.2, 28.9, 80, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-06', 111, 104, 7.8, 18.4, 29.1, 79, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-06', 121, 114, 9.5, 25.6, 29.5, 76, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-06', 100, 103, 8.1, 25.9, 30.6, 70, 998.2, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-06', 65, 64, 5.4, 15.5, 32.5, 60, 997.4, 0, 10),
	('CIUDADMANTE', '2019-06-05', '2019-06-06', 307, 341, 4.3, 6.8, 32.8, 60, 996.8, 0, 91),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 122, 337, 5.2, 10.4, 33, 59, 996.8, 0, 101),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 262, 350, 9.3, 16.2, 33.5, 57, 996.9, 0, 283),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 195, 1, 9.1, 19.8, 34.3, 55, 997.2, 0, 588),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 245, 340, 7.2, 14.4, 33.3, 60, 998.1, 0, 455),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 122, 7, 9.1, 18.4, 33.2, 60, 999, 0, 452),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 124, 330, 8, 17.3, 34, 57, 999, 0, 719),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 120, 102, 3.6, 11.2, 33.6, 57, 999.6, 0, 895),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 121, 115, 4.1, 11.5, 31.6, 63, 1000.6, 0, 329),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 161, 177, 5.8, 11.2, 29.2, 74, 1001, 0, 319),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 148, 171, 6, 10.8, 27.2, 86, 1001.4, 0, 157),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 118, 123, 4.2, 7.2, 26.6, 88, 1001.1, 0, 75),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 114, 113, 1.9, 4, 26, 91, 1000.3, 0, 4),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 106, 117, 4.3, 7.6, 25.9, 91, 1000, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 92, 93, 3.3, 6.1, 26.3, 90, 999.9, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 123, 77, 3.3, 6.8, 26.3, 88, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 56, 25, 3.8, 6.8, 26.6, 87, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 92, 104, 4.1, 10.1, 26.9, 87, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 46, 19, 4.1, 7.9, 27.3, 85, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-06-05', '2019-06-05', 119, 100, 2.6, 10.4, 27.8, 81, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-05', 102, 120, 8.4, 15.5, 28.4, 77, 1001, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-05', 111, 99, 6, 14.8, 28.6, 78, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-05', 103, 114, 10.1, 22.7, 29.3, 73, 999.5, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-05', 103, 80, 10.8, 22.3, 30.8, 64, 998.2, 0, 12),
	('CIUDADMANTE', '2019-06-04', '2019-06-05', 116, 116, 8.9, 19.8, 32.8, 57, 997.5, 0, 160),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 103, 114, 9.1, 20.5, 34.5, 51, 997.6, 0, 381),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 96, 99, 6.4, 22.3, 35, 51, 998.1, 0, 615),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 87, 81, 7.8, 23.4, 35.6, 48, 998.5, 0, 702),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 99, 117, 5.8, 17.3, 34.9, 50, 999.3, 0, 777),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 212, 30, 5.6, 12.2, 33.9, 52, 1000.1, 0, 1052),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 174, 136, 5.1, 11.5, 33.2, 56, 1001.3, 0, 1020),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 129, 47, 5.5, 10.4, 32.3, 59, 1001.8, 0, 1044),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 238, 350, 1.9, 8.3, 30.7, 66, 1002.4, 0, 626),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 274, 348, 2.8, 9.4, 30.1, 68, 1002.6, 0, 325),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 284, 19, 2.7, 6.8, 28.3, 73, 1002.3, 0, 379),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 287, 344, 2.9, 5.4, 26.6, 82, 1002, 0, 235),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 272, 271, 2.3, 5.8, 24.9, 91, 1001.9, 0, 7),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 250, 240, 2.2, 5, 25.1, 92, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 227, 275, 1.3, 4, 25.2, 91, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 227, 348, 3.6, 7.6, 25.6, 86, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 193, 349, 1.5, 5, 25.6, 86, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 92, 26, 1.7, 4, 25.6, 84, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 58, 40, 4.7, 10.8, 26, 82, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-06-04', '2019-06-04', 236, 339, 4.4, 10.1, 26.4, 80, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-04', 319, 343, 5.8, 15.5, 26.6, 81, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-04', 301, 342, 3.7, 10.8, 27, 80, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-04', 243, 327, 3.8, 9.4, 27.2, 80, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-04', 248, 353, 5.7, 15.5, 28.4, 77, 1003.4, 0, 28),
	('CIUDADMANTE', '2019-06-03', '2019-06-04', 91, 36, 4.1, 8.3, 28.6, 80, 1004.6, 0, 101),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 83, 57, 2.6, 7.2, 28.4, 81, 1002.6, 0, 320),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 148, 180, 1.8, 6.1, 25.7, 94, 1001.9, 0.25, 315),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 282, 266, 2.8, 8.6, 24.7, 94, 1002.4, 0, 63),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 65, 55, 7.5, 24.5, 25.5, 93, 1003.2, 2, 29),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 88, 117, 16.1, 43.2, 29.2, 72, 1002.6, 1.75, 22),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 274, 345, 4.2, 13.3, 31.7, 66, 1002.6, 0, 693),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 302, 345, 5.5, 12.6, 28.5, 78, 1003.5, 0, 704),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 188, 8, 8.2, 16.6, 26, 88, 1004.1, 0, 137),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 171, 342, 4.4, 10.4, 26.5, 85, 1003.5, 0, 96),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 267, 273, 2.8, 6.1, 26.6, 85, 1003, 0, 269),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 149, 357, 5.2, 10.8, 25.3, 89, 1002.6, 0, 30),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 268, 342, 4.1, 7.9, 25.3, 92, 1001.7, 0, 4),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 230, 219, 1.9, 3.6, 25.2, 92, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 268, 341, 1, 3.2, 25.7, 90, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 297, 329, 1.4, 3.6, 26, 90, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 248, 244, 2.2, 4.7, 25.3, 91, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 16, 353, 3.2, 6.1, 25.7, 97, 1008.9, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 257, 259, 2.4, 4.3, 25.4, 92, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-06-03', '2019-06-03', 188, 250, 1.3, 4, 26.1, 90, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-03', 308, 341, 2.1, 5.4, 26.2, 89, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-03', 175, 7, 2.4, 4, 25.8, 90, 1003, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-03', 161, 262, 3.9, 7.2, 25.8, 87, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-03', 158, 347, 3.1, 6.1, 26, 85, 1001.2, 0, 48),
	('CIUDADMANTE', '2019-06-02', '2019-06-03', 294, 319, 2.4, 6.5, 25.2, 91, 1000.8, 0, 102),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 278, 279, 5.4, 11.9, 24.7, 89, 1000.6, 0, 25),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 90, 97, 8.9, 25.9, 24.8, 85, 1000.5, 0.5, 36),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 62, 360, 12.4, 33.5, 32.9, 56, 999.7, 0, 218),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 78, 47, 7.9, 14.8, 36.6, 41, 999.4, 0, 809),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 181, 356, 5.3, 16.2, 36.4, 44, 1000.5, 0, 967),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 117, 353, 8.2, 17.6, 35.3, 43, 1001.6, 0, 1022),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 87, 80, 5.8, 14.4, 34.6, 48, 1002.4, 0, 952),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 75, 24, 6.2, 13, 33.2, 55, 1002.5, 0, 843),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 107, 52, 2.7, 5.8, 32.1, 61, 1002.7, 0, 486),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 140, 160, 2.9, 5.8, 29.5, 75, 1002.7, 0, 469),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 296, 345, 2.6, 5.4, 27.2, 85, 1001.7, 0, 202),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 166, 249, 2.5, 6.1, 26.1, 90, 1001.2, 0, 7),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 249, 343, 1.6, 3.6, 26, 89, 1001.3, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 299, 349, 1.1, 2.9, 26.3, 87, 1001, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 194, 184, 2.3, 5.4, 26.9, 85, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 195, 207, 4.9, 8.6, 27.1, 85, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 119, 117, 3.5, 8.3, 27.6, 84, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 123, 118, 4.6, 10.4, 27.4, 85, 1003.5, 0, 0),
	('CIUDADMANTE', '2019-06-02', '2019-06-02', 126, 157, 6.6, 14.4, 29.1, 73, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-02', 97, 97, 7.9, 19.1, 29.2, 70, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-02', 120, 99, 10, 27.7, 30.1, 65, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-02', 95, 100, 13.5, 33.1, 31, 61, 1000.8, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-02', 110, 89, 16.2, 34.6, 32.9, 54, 999.1, 0, 14),
	('CIUDADMANTE', '2019-06-01', '2019-06-02', 92, 63, 13.4, 29.2, 35.7, 44, 998.3, 0, 159),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 93, 148, 7.9, 22.7, 37.6, 36, 998.1, 0, 218),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 316, 344, 4.7, 15.5, 38.5, 29, 998.7, 0, 604),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 132, 35, 9.3, 18, 38, 30, 999.6, 0, 778),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 129, 25, 7.4, 19.1, 37.5, 32, 1001, 0, 906),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 125, 17, 6.9, 20.2, 36.1, 37, 1002.3, 0, 989),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 227, 360, 3.8, 8.6, 35.6, 43, 1003.1, 0, 1017),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 63, 25, 5.7, 10.8, 34.4, 47, 1003.4, 0, 978),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 120, 107, 3.8, 11.2, 33.5, 52, 1003.7, 0, 830),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 110, 86, 2.4, 12.2, 31.6, 59, 1003.7, 0, 438),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 92, 97, 3.3, 7.6, 29.7, 72, 1003.1, 0, 423),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 162, 158, 2.1, 5, 27.1, 85, 1002.3, 0, 179),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 196, 186, 3.5, 6.1, 25.9, 90, 1002, 0, 6),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 255, 254, 2.4, 4.7, 25.6, 90, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 291, 344, 1.5, 4.7, 26.3, 88, 1002, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 266, 270, 3.6, 7.2, 26.7, 87, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 169, 182, 4.1, 9, 27.1, 85, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 90, 94, 5.6, 11.9, 27.6, 82, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 101, 130, 6.2, 15.1, 27.9, 79, 1004.9, 0, 0),
	('CIUDADMANTE', '2019-06-01', '2019-06-01', 117, 96, 8.8, 17.6, 28.4, 76, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-06-01', 112, 87, 7.7, 18, 29, 74, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-06-01', 116, 123, 12.3, 29.2, 29.6, 69, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-06-01', 109, 105, 10.4, 33.1, 31.1, 62, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-06-01', 94, 115, 13.9, 33.1, 33.1, 54, 999.3, 0, 14),
	('CIUDADMANTE', '2019-05-31', '2019-06-01', 111, 80, 6.5, 20.2, 36.1, 42, 998.4, 0, 141),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 109, 100, 8.1, 16.9, 37.4, 38, 998, 0, 354),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 131, 155, 5.7, 14, 37.4, 40, 998.8, 0, 563),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 110, 122, 8.9, 18.4, 37.1, 41, 999.9, 0, 761),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 88, 65, 9.3, 25.9, 35.4, 49, 1000.8, 0, 443),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 140, 79, 4.9, 13.7, 36.8, 42, 1001.6, 0, 1045),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 153, 34, 4.5, 11.5, 35.2, 45, 1002.6, 0, 950),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 68, 18, 6, 12.2, 34.2, 48, 1003.6, 0, 877),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 97, 5, 4, 9, 33.1, 53, 1004.3, 0, 706),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 154, 129, 3.4, 7.2, 31.5, 63, 1004.1, 0, 472),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 289, 343, 1.8, 6.1, 28.3, 80, 1003.9, 0, 137),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 275, 246, 1.2, 3.6, 27.2, 84, 1003.3, 0, 95),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 271, 300, 1.2, 2.9, 26.8, 87, 1003.1, 0, 5),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 105, 26, 2.2, 4.7, 27.3, 83, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 34, 350, 2.1, 5, 27, 84, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 249, 357, 3.5, 5.4, 27.2, 83, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 285, 348, 1.4, 5.4, 27.6, 81, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 253, 259, 2.8, 5, 28, 78, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 146, 98, 3.7, 6.8, 28.5, 77, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-05-31', '2019-05-31', 153, 147, 8.1, 15.5, 28.7, 76, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-31', 124, 137, 6.3, 16.2, 29.2, 74, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-31', 136, 127, 7.4, 15.5, 30, 68, 1001.2, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-31', 121, 110, 7.7, 20.2, 31, 62, 999.7, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-31', 96, 84, 9.6, 26.3, 32.5, 57, 998.1, 0, 9),
	('CIUDADMANTE', '2019-05-30', '2019-05-31', 109, 90, 12.3, 28.8, 34.4, 49, 997.2, 0, 88),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 95, 109, 10.6, 24.8, 36.8, 41, 997.2, 0, 303),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 88, 83, 9.2, 24.1, 36.6, 44, 997.1, 0, 433),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 177, 351, 7.4, 18.4, 37.3, 42, 997.8, 0, 521),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 217, 345, 6, 16.2, 36.4, 46, 998.5, 0, 894),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 269, 18, 2.9, 7.2, 35.3, 49, 999.6, 0, 918),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 266, 343, 4.1, 12.6, 34.9, 54, 1000.5, 0, 951),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 125, 12, 4.9, 11.2, 31, 66, 1000.8, 0, 213),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 175, 162, 4.9, 8.6, 30, 70, 1000.7, 0, 205),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 145, 140, 5.7, 10.8, 29.2, 75, 1000.4, 0, 189),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 116, 144, 6.8, 14, 28.7, 79, 999.9, 0, 299),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 113, 106, 2.1, 8.3, 27, 84, 999.4, 0, 43),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 64, 52, 3.4, 11.5, 26.7, 86, 998.7, 0, 6),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 211, 354, 3.5, 6.1, 26.4, 88, 998.4, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 314, 349, 2, 4.7, 26.2, 88, 997.8, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 288, 354, 1.8, 5.4, 26.5, 87, 997.9, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 238, 13, 3.3, 9.7, 27.2, 84, 998.1, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 56, 44, 4.8, 11.2, 27.8, 81, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 74, 72, 4.9, 10.1, 28, 80, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-30', '2019-05-30', 89, 101, 3.9, 10.4, 28.6, 74, 998.3, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-30', 113, 114, 7.6, 19.1, 28.9, 73, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-30', 125, 170, 7.6, 15.8, 29.6, 71, 996.6, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-30', 120, 111, 8.8, 22, 30.3, 70, 995.5, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-30', 99, 71, 9.4, 23, 32.3, 60, 994.4, 0, 15),
	('CIUDADMANTE', '2019-05-29', '2019-05-30', 82, 104, 9.6, 22, 34, 51, 993.5, 0, 51),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 94, 95, 10.8, 23, 35.3, 48, 993, 0, 200),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 111, 110, 11.4, 27, 37.2, 43, 992.7, 0, 573),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 115, 104, 12.5, 26.3, 37, 38, 993, 0, 566),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 103, 75, 6.7, 22, 37.3, 39, 993.6, 0, 853),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 150, 176, 8.5, 17.3, 36.5, 41, 994.7, 0, 884),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 136, 79, 9.4, 19.8, 35, 45, 996, 0, 822),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 136, 117, 9.4, 19.1, 34.3, 48, 997, 0, 927),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 147, 131, 6.7, 14.8, 32.5, 54, 997.7, 0, 746),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 157, 157, 6.5, 11.9, 29.6, 71, 998.1, 0, 491),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 138, 112, 4.7, 9.7, 28.3, 78, 998.1, 0, 319),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 118, 106, 3.9, 8.3, 26.8, 84, 997.6, 0, 142),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 134, 113, 2.5, 4.7, 25.8, 87, 997.3, 0, 6),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 175, 174, 3.4, 5.8, 25.9, 86, 997, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 180, 188, 3.2, 5, 26.2, 85, 997.2, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 184, 172, 2.6, 4.7, 26.6, 83, 997.3, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 79, 71, 4, 9, 26.9, 81, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 87, 77, 3.6, 11.2, 27.1, 80, 998.2, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 108, 110, 3.3, 7.2, 27.3, 78, 998.7, 0, 0),
	('CIUDADMANTE', '2019-05-29', '2019-05-29', 87, 89, 3.2, 10.1, 27.9, 75, 998.9, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-29', 81, 84, 6.8, 15.1, 28.4, 71, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-29', 112, 114, 11.1, 25.2, 28.8, 68, 997.5, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-29', 118, 115, 13.1, 32.4, 29.9, 55, 996.6, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-29', 105, 108, 14.6, 33.1, 31.5, 54, 995.2, 0, 15),
	('CIUDADMANTE', '2019-05-28', '2019-05-29', 93, 134, 14, 37.1, 34.3, 49, 994.3, 0, 141),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 107, 100, 12.2, 32, 36.4, 43, 993.8, 0, 348),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 117, 102, 10, 25.6, 37.6, 33, 993.9, 0, 577),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 147, 168, 11.5, 26.3, 37.4, 34, 994.4, 0, 776),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 139, 138, 11.8, 26.3, 37.2, 34, 995.2, 0, 912),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 128, 156, 8.5, 24.8, 36.4, 37, 996.5, 0, 1007),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 116, 109, 9.7, 21.2, 35.2, 40, 998, 0, 1026),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 138, 171, 8.1, 16.9, 33.8, 45, 999.1, 0, 973),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 158, 164, 5.8, 15.8, 32.5, 49, 1000.2, 0, 852),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 159, 228, 4.6, 10.8, 31, 57, 1000.8, 0, 652),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 144, 165, 6.1, 13.3, 27.8, 75, 1001.2, 0, 430),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 158, 185, 4.3, 9, 25.2, 83, 1001, 0, 179),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 211, 192, 2.2, 4, 23.9, 83, 1000.7, 0, 7),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 195, 186, 3.9, 5.8, 24.2, 85, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 125, 141, 2.9, 6.1, 25, 82, 1000.8, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 228, 247, 2, 4.7, 24.8, 80, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 195, 191, 4.3, 7.2, 25.1, 78, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 150, 157, 3.8, 17.3, 25.8, 75, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 89, 96, 6.9, 15.1, 26.5, 75, 1002, 0, 0),
	('CIUDADMANTE', '2019-05-28', '2019-05-28', 107, 99, 5.3, 11.2, 27.2, 71, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-28', 81, 122, 5.4, 12.6, 27.7, 68, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-28', 96, 84, 8.6, 20.5, 28.6, 63, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-28', 107, 107, 10.8, 26.6, 29.7, 60, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-28', 99, 89, 12.2, 28.4, 30.9, 56, 999.1, 0, 6),
	('CIUDADMANTE', '2019-05-27', '2019-05-28', 114, 89, 13.5, 32, 33.5, 50, 998.5, 0, 146),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 114, 106, 11, 31, 36, 40, 997.9, 0, 331),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 99, 118, 10.8, 25.9, 37.4, 28, 998.1, 0, 602),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 102, 115, 11.8, 27.7, 37.5, 30, 998.7, 0, 783),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 144, 138, 12.2, 25.2, 37, 31, 999.5, 0, 934),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 98, 99, 6.6, 17.3, 36.7, 34, 1000.6, 0, 1011),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 113, 169, 8, 21.6, 35.6, 39, 1002, 0, 1027),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 127, 70, 5.4, 15.1, 34.5, 42, 1003.2, 0, 966),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 151, 76, 4, 10.4, 32.7, 47, 1004.2, 0, 846),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 170, 165, 3, 11.2, 31.2, 54, 1004.9, 0, 648),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 160, 141, 3.9, 9.7, 27.7, 77, 1004.9, 0, 439),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 142, 147, 5.1, 9.7, 25.3, 88, 1004.9, 0, 198),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 232, 224, 2.2, 6.8, 24.3, 91, 1004.8, 0, 8),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 215, 194, 1.9, 5, 24.4, 89, 1004.4, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 265, 263, 4, 8.3, 25, 88, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 153, 165, 3.4, 8.6, 25.6, 84, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 156, 167, 5, 12.2, 26.4, 79, 1004.7, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 136, 179, 4, 10.1, 26.1, 82, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 118, 128, 5.1, 10.8, 26.3, 80, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-05-27', '2019-05-27', 108, 108, 3.2, 7.9, 27, 77, 1006.1, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-27', 105, 113, 6.8, 16.6, 27.3, 74, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-27', 127, 161, 8.7, 20.2, 28, 68, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-27', 125, 121, 9.8, 28.1, 29.4, 61, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-27', 111, 115, 12.4, 28.1, 31.2, 55, 1002.3, 0, 13),
	('CIUDADMANTE', '2019-05-26', '2019-05-27', 106, 79, 10.7, 27.7, 33.8, 48, 1001.4, 0, 142),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 104, 113, 8.2, 22, 35.7, 43, 1001.2, 0, 352),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 76, 123, 8.2, 19.8, 36.1, 41, 1001.6, 0, 595),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 126, 99, 8.3, 20.2, 35.6, 43, 1002.4, 0, 613),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 105, 29, 6.4, 13.7, 35.4, 45, 1003.4, 0, 992),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 141, 101, 8.2, 22, 35.3, 42, 1004.1, 0, 757),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 175, 184, 5.4, 13.3, 34.1, 49, 1005.3, 0, 1039),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 165, 175, 4.9, 14.4, 32.9, 54, 1006.3, 0, 955),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 137, 154, 5.9, 16.2, 30.9, 65, 1006.9, 0, 844),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 143, 152, 6.8, 14, 29.1, 76, 1007.1, 0, 631),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 128, 109, 5.4, 10.4, 26.1, 91, 1006.9, 0, 231),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 132, 131, 4, 9.4, 25.1, 95, 1006, 0, 94),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 139, 181, 0.8, 1.8, 24.3, 95, 1005.3, 0, 6),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 113, 113, 1.7, 3.2, 24.4, 95, 1004.9, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 219, 211, 5, 15.1, 25.2, 95, 1004.7, 0.25, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 267, 37, 2.7, 6.1, 25.3, 93, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 278, 266, 3.3, 10.1, 26.7, 84, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 221, 268, 2.9, 6.1, 27, 83, 1005.9, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 131, 134, 4, 7.2, 27.4, 80, 1006.6, 0, 0),
	('CIUDADMANTE', '2019-05-26', '2019-05-26', 103, 128, 6.8, 18.4, 27.8, 77, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-26', 102, 100, 6.5, 16.6, 28, 76, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-26', 108, 102, 8.2, 16.9, 28.8, 68, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-26', 100, 88, 8.4, 26.6, 30.2, 56, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-26', 99, 114, 8.7, 24.5, 32.4, 48, 1002.7, 0, 12),
	('CIUDADMANTE', '2019-05-25', '2019-05-26', 96, 84, 9, 26.3, 34.6, 42, 1001.9, 0, 151),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 89, 48, 14.7, 31, 36, 40, 1001.3, 0, 371),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 73, 95, 10.8, 30.6, 37.3, 35, 1001.4, 0, 601),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 128, 72, 4.6, 21.2, 37.7, 34, 1001.8, 0, 789),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 119, 63, 7.3, 19.1, 36.5, 35, 1002.8, 0, 911),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 158, 105, 10, 24.1, 36.6, 32, 1003.6, 0, 1053),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 127, 138, 10.1, 22, 35.4, 35, 1004.7, 0, 938),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 143, 139, 9.2, 18, 34, 43, 1005.5, 0, 971),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 110, 86, 7.3, 21.6, 33.1, 48, 1006, 0, 853),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 143, 180, 6.4, 19.1, 31.1, 57, 1006.3, 0, 657),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 175, 215, 3.6, 10.4, 28.5, 74, 1006.5, 0, 100),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 147, 151, 6, 13.3, 26.7, 85, 1005.9, 0, 170),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 136, 144, 4.9, 13.3, 26, 88, 1005, 0, 4),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 122, 101, 2.5, 5.4, 26, 88, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 135, 127, 4, 7.2, 26.1, 87, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 151, 153, 5.2, 10.4, 26.5, 85, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 115, 106, 6.3, 11.5, 27, 83, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 114, 127, 5, 10.1, 27.2, 81, 1004.7, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 109, 120, 5.1, 10.4, 27.8, 77, 1005.3, 0, 0),
	('CIUDADMANTE', '2019-05-25', '2019-05-25', 117, 85, 7.5, 13.3, 28.2, 78, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-25', 126, 99, 6.4, 13.7, 28.4, 75, 1005, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-25', 101, 114, 9.9, 24.1, 29, 75, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-25', 120, 138, 10.3, 27.7, 30.4, 64, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-25', 121, 104, 13.1, 28.1, 32.5, 52, 1000.9, 0, 12),
	('CIUDADMANTE', '2019-05-24', '2019-05-25', 119, 101, 12.7, 27.4, 34.5, 47, 999.9, 0, 126),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 107, 110, 10.4, 27, 36.1, 41, 999.6, 0, 296),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 95, 105, 10.9, 29.2, 37, 39, 999.8, 0, 469),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 121, 115, 10.4, 24.5, 37.2, 37, 1000.2, 0, 700),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 130, 68, 10.5, 31.3, 36.9, 40, 1001.2, 0, 961),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 98, 90, 9.5, 24.5, 36.3, 41, 1002, 0, 935),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 84, 26, 6.4, 18, 35.6, 44, 1003.1, 0, 880),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 94, 122, 6.8, 21.6, 34.7, 46, 1003.9, 0, 826),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 100, 128, 6.7, 14, 32.6, 56, 1004.5, 0, 821),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 125, 113, 5.6, 14.4, 30.8, 66, 1004.9, 0, 634),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 174, 155, 5.5, 10.8, 28.4, 77, 1005, 0, 316),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 128, 154, 2.3, 5, 27.2, 83, 1004.6, 0, 93),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 113, 30, 2, 6.8, 26.3, 86, 1003.9, 0, 5),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 92, 76, 3.6, 7.9, 26.8, 83, 1003.3, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 93, 81, 5.2, 11.5, 27.1, 81, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 122, 165, 2.4, 6.1, 27.1, 81, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 117, 126, 4.1, 6.8, 27.9, 78, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 101, 101, 6.8, 14, 28.1, 78, 1004, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 93, 114, 4.8, 14, 28.1, 79, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-05-24', '2019-05-24', 113, 84, 7.9, 16.9, 28.8, 75, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-24', 122, 107, 7.5, 20.2, 29.1, 75, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-24', 105, 117, 12, 27.4, 29.7, 72, 1002.6, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-24', 103, 113, 13.3, 30.6, 30.4, 69, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-24', 97, 115, 12.2, 32.4, 31.7, 62, 1000, 0, 9),
	('CIUDADMANTE', '2019-05-23', '2019-05-24', 93, 120, 11.1, 28.4, 34.6, 54, 998.9, 0, 164),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 86, 77, 13.9, 37.1, 37.3, 41, 998, 0, 320),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 101, 67, 8.4, 19.4, 38.4, 35, 998, 0, 578),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 103, 105, 8.9, 25.9, 38.2, 36, 998.5, 0, 622),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 127, 147, 9.3, 20.9, 37.4, 41, 999.5, 0, 837),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 102, 109, 5.7, 15.1, 36.4, 44, 1000.6, 0, 1010),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 74, 25, 5.2, 16.6, 35.6, 48, 1001.6, 0, 893),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 116, 134, 4.8, 11.5, 34.2, 50, 1002.2, 0, 931),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 95, 92, 5.8, 11.5, 32.6, 58, 1002.7, 0, 624),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 134, 117, 5.3, 13.3, 31.1, 66, 1002.8, 0, 376),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 119, 152, 6.3, 14, 28.9, 77, 1002.9, 0, 308),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 102, 106, 5.5, 12.2, 27.5, 83, 1002.5, 0, 84),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 112, 101, 4.5, 8.6, 27, 86, 1002.1, 0, 3),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 102, 112, 3, 9, 27, 86, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 112, 114, 3.6, 9, 27, 86, 1001.3, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 317, 345, 2.4, 6.5, 27.1, 86, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 125, 350, 1.9, 5, 26.8, 87, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 93, 24, 4.3, 7.2, 27.6, 83, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 60, 46, 3.3, 8.3, 27.8, 82, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-23', '2019-05-23', 90, 80, 3.5, 9.7, 28.3, 80, 1001.3, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-23', 86, 98, 5.9, 15.1, 28.9, 78, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-23', 75, 62, 6.7, 15.1, 29.8, 74, 999, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-23', 97, 68, 6.7, 19.1, 30.8, 69, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-23', 101, 104, 7.1, 24.1, 32.3, 62, 996.4, 0, 11),
	('CIUDADMANTE', '2019-05-22', '2019-05-23', 74, 61, 8.3, 20.2, 34.8, 51, 995.6, 0, 120),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 91, 113, 10.1, 25.6, 36.6, 47, 994.7, 0, 304),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 85, 77, 7.5, 23.8, 37.5, 45, 994.7, 0, 509),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 112, 97, 10.6, 23.8, 37.5, 45, 995, 0, 697),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 119, 99, 10.8, 29.5, 37, 46, 995.4, 0, 787),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 90, 356, 5.8, 16.2, 35.4, 54, 996, 0, 895),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 270, 346, 2.7, 6.8, 33.9, 58, 997, 0, 713),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 105, 16, 3.9, 8.6, 33.4, 58, 997.6, 0, 785),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 135, 111, 6.9, 12.2, 30.6, 71, 998.1, 0, 436),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 117, 82, 5, 10.8, 29.2, 76, 998, 0, 148),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 114, 103, 5.4, 12.2, 28.3, 81, 997.6, 0, 136),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 108, 109, 3.7, 6.1, 27.5, 83, 997.1, 0, 38),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 87, 76, 3.7, 8.6, 27, 85, 996.5, 0, 2),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 90, 74, 3.8, 9.7, 26.7, 86, 996, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 280, 346, 4.3, 9.4, 27.2, 85, 995.9, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 307, 343, 1.8, 4, 27.4, 84, 996.4, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 53, 29, 5.6, 12.6, 28.3, 79, 996.6, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 74, 23, 3.8, 9.7, 28.5, 78, 997.1, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 102, 105, 3.9, 10.1, 28.6, 77, 997.3, 0, 0),
	('CIUDADMANTE', '2019-05-22', '2019-05-22', 91, 31, 3.4, 12.6, 28.9, 76, 997.1, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-22', 91, 99, 4.2, 18, 29, 76, 996.5, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-22', 115, 105, 5.6, 24.8, 29.2, 74, 995.2, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-22', 114, 97, 9.7, 30.6, 31, 68, 993.5, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-22', 77, 69, 9, 23.4, 33.7, 58, 991.9, 0, 11),
	('CIUDADMANTE', '2019-05-21', '2019-05-22', 89, 94, 10.3, 25.9, 36.4, 50, 991, 0, 111),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 98, 13, 2.8, 12.6, 38.4, 38, 990.7, 0, 297),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 90, 10, 11.7, 24.1, 38.1, 41, 991, 0, 527),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 62, 37, 11.8, 23.8, 37.7, 41, 991.5, 0, 726),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 72, 5, 7.5, 18.7, 37.5, 43, 992.1, 0, 857),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 67, 21, 9.9, 22.3, 35.6, 47, 993.3, 0, 941),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 61, 19, 7.9, 15.5, 34.6, 50, 994.4, 0, 936),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 153, 147, 6.3, 13.7, 33.9, 52, 995.3, 0, 908),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 101, 94, 6.7, 18.7, 32, 59, 996, 0, 558),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 124, 112, 7.6, 16.9, 30.3, 67, 996.1, 0, 482),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 150, 156, 9.2, 18.4, 27.5, 82, 996.1, 0, 330),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 202, 222, 3, 6.1, 25.5, 89, 995.8, 0, 107),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 150, 144, 4, 7.9, 24.8, 92, 995.5, 0, 3),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 165, 151, 5.4, 12.6, 25.3, 89, 995.5, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 138, 111, 6.5, 11.9, 25.9, 89, 995.7, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 141, 124, 5.9, 12.6, 26.3, 87, 996.6, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 133, 153, 7.8, 18.4, 27, 84, 996.9, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 130, 148, 6.8, 18.7, 27.3, 82, 997.4, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 129, 109, 7.6, 15.5, 27.9, 82, 998.1, 0, 0),
	('CIUDADMANTE', '2019-05-21', '2019-05-21', 115, 107, 7.8, 17.3, 28.2, 81, 998.2, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-21', 120, 100, 7.2, 16.6, 28.7, 79, 997.4, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-21', 115, 94, 10.1, 20.2, 29.4, 74, 997, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-21', 90, 71, 7.9, 20.2, 30.6, 67, 996.4, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-21', 96, 135, 7.8, 19.1, 32.1, 60, 995.3, 0, 14),
	('CIUDADMANTE', '2019-05-20', '2019-05-21', 108, 95, 8.8, 23, 34.8, 53, 994.9, 0, 136),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 106, 105, 8.6, 31, 36.5, 46, 995.1, 0, 328),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 98, 73, 10.8, 25.9, 36.9, 45, 995.3, 0, 524),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 94, 88, 8.3, 21.6, 37.3, 44, 995.9, 0, 728),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 88, 32, 7, 17.6, 35.1, 51, 998.2, 0, 834),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 128, 118, 6.1, 16.9, 35.2, 50, 999.3, 0, 1100),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 66, 12, 8.3, 16.2, 33.8, 57, 1000.4, 0, 927),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 104, 90, 6.3, 16.2, 33.2, 60, 1001, 0, 843),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 104, 90, 3.7, 10.1, 30.1, 72, 1001.2, 0, 295),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 88, 53, 3.9, 8.3, 28.6, 80, 1001.2, 0, 263),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 147, 175, 2.3, 6.5, 27.4, 85, 1000.8, 0, 26),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 122, 116, 4.2, 8.6, 27.3, 85, 1000.5, 0, 1),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 126, 43, 2.4, 7.9, 27.3, 85, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 82, 44, 3.1, 8.3, 27.5, 84, 1000, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 77, 48, 3.2, 9.7, 27.7, 82, 1000, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 82, 80, 4.3, 10.8, 28.1, 80, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 78, 60, 4, 9.7, 28.6, 78, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 249, 348, 4.4, 9.7, 28.6, 79, 1000.4, 0, 0),
	('CIUDADMANTE', '2019-05-20', '2019-05-20', 43, 12, 5.6, 9.7, 29.3, 74, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-20', 85, 109, 5.1, 14.4, 29.5, 72, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-20', 113, 77, 5.8, 15.1, 29.7, 74, 999, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-20', 114, 110, 12.1, 26.3, 30.5, 70, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-20', 111, 107, 13.5, 31.7, 32.5, 62, 996.2, 0, 11),
	('CIUDADMANTE', '2019-05-19', '2019-05-20', 97, 100, 11.6, 27.7, 35.5, 50, 995.1, 0, 123),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 88, 56, 3.3, 9, 37.8, 46, 994.5, 0, 314),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 301, 344, 5.1, 17.3, 37.3, 47, 995.1, 0, 543),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 274, 341, 4.5, 12.6, 36.6, 49, 995.6, 0, 733),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 151, 10, 6.1, 14, 35.3, 52, 996.8, 0, 875),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 115, 347, 5.2, 12.2, 34.4, 54, 997.6, 0, 934),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 212, 335, 4.7, 13, 33, 58, 998.4, 0, 881),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 265, 273, 2.7, 7.6, 31.3, 69, 998.9, 0, 619),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 285, 345, 3, 8.3, 29.2, 76, 998.9, 0, 205),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 79, 13, 3.7, 9, 28.2, 81, 998.8, 0, 127),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 275, 265, 2.4, 6.5, 27.5, 84, 998.6, 0, 60),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 139, 112, 2.9, 5, 27.3, 84, 998, 0, 28),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 284, 342, 2, 4.7, 26.7, 87, 997.3, 0, 2),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 305, 350, 2.4, 7.9, 26.6, 87, 996.7, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 68, 18, 4.6, 9, 27.1, 84, 996.4, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 93, 76, 4.8, 11.5, 26.9, 85, 996.3, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 97, 108, 4.8, 13.3, 27, 83, 996.3, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 98, 94, 5.7, 13.7, 27.8, 81, 996.3, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 44, 27, 5.1, 11.2, 29.1, 73, 996.3, 0, 0),
	('CIUDADMANTE', '2019-05-19', '2019-05-19', 99, 117, 6.6, 13, 29.4, 71, 996.6, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-19', 60, 10, 5.9, 15.1, 30.4, 66, 996, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-19', 96, 111, 6.9, 16.9, 30.9, 65, 994.9, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-19', 119, 156, 11.5, 24.8, 31.8, 64, 993.9, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-19', 111, 96, 11.9, 23.8, 33.7, 56, 992.3, 0, 11),
	('CIUDADMANTE', '2019-05-18', '2019-05-19', 91, 76, 11.1, 27.7, 36.4, 50, 991, 0, 116),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 88, 86, 4.9, 14, 39.7, 35, 990.2, 0, 328),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 50, 30, 10.3, 21.2, 39.6, 35, 990.8, 0, 549),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 62, 91, 7.8, 20.9, 39.5, 38, 991.6, 0, 742),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 54, 14, 10.2, 25.6, 37.9, 43, 992.4, 0, 892),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 76, 98, 8.5, 20.2, 37.2, 48, 993.5, 0, 960),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 98, 79, 8.2, 22.3, 35.6, 54, 994.9, 0, 972),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 88, 111, 8.5, 20.5, 34.6, 53, 996.3, 0, 937),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 140, 138, 6.8, 16.2, 32.7, 61, 997.1, 0, 791),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 120, 144, 7.8, 18.4, 30.8, 69, 997.7, 0, 273),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 148, 120, 8.1, 15.5, 28.8, 79, 998.1, 0, 326),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 162, 155, 5.8, 11.2, 27.3, 87, 997.7, 0, 76),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 64, 350, 1.2, 3.2, 26.8, 89, 997.7, 0, 3),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 256, 263, 2.5, 5.4, 27.2, 87, 997.7, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 150, 106, 2.3, 5.8, 27.2, 87, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 101, 101, 3.7, 6.5, 27.4, 85, 997.9, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 66, 43, 2.7, 9, 27.6, 84, 998.3, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 98, 141, 2.9, 8.3, 27.7, 82, 998.9, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 87, 102, 4.4, 10.8, 27.7, 82, 999, 0, 0),
	('CIUDADMANTE', '2019-05-18', '2019-05-18', 87, 69, 4.4, 10.8, 28.1, 78, 998.9, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-18', 87, 106, 6.1, 15.1, 28.6, 74, 998.4, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-18', 108, 105, 6.7, 17.6, 29, 73, 997.5, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-18', 117, 114, 13.1, 28.1, 30, 69, 996.8, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-18', 96, 113, 8.3, 34.2, 32.4, 59, 995.5, 0, 9),
	('CIUDADMANTE', '2019-05-17', '2019-05-18', 96, 97, 12.5, 28.8, 34.4, 53, 994.4, 0, 73),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 95, 75, 12.4, 27, 36.5, 47, 993.7, 0, 322),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 114, 102, 9.7, 24.8, 37.4, 42, 993.8, 0, 544),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 121, 105, 8.9, 22.3, 37.8, 41, 994.6, 0, 724),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 116, 133, 8.7, 21.6, 37.3, 42, 995.7, 0, 830),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 138, 114, 10.6, 22, 36, 47, 997.1, 0, 944),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 128, 156, 11.2, 25.6, 34.9, 50, 998.4, 0, 993),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 131, 122, 10.4, 20.5, 33.5, 53, 999.6, 0, 946),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 116, 153, 12.9, 22.3, 31.6, 60, 1000.7, 0, 764),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 147, 152, 10.2, 21.2, 30, 65, 1001.2, 0, 249),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 133, 115, 7.7, 15.5, 27.8, 79, 1001.2, 0, 344),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 142, 152, 7.1, 13.7, 25.7, 88, 1001, 0, 90),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 149, 139, 5.6, 11.2, 25.3, 89, 1000.5, 0, 3),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 141, 165, 3.9, 6.8, 25.1, 88, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 119, 119, 3.3, 6.1, 25.7, 86, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 132, 123, 3.8, 7.2, 26, 85, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 180, 149, 2.5, 4.3, 26.3, 82, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 135, 114, 5.6, 13.3, 26.8, 79, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 92, 100, 5.1, 11.9, 27.4, 74, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-05-17', '2019-05-17', 119, 139, 4.5, 12.2, 27.8, 71, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-17', 128, 105, 8.1, 20.5, 28.4, 66, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-17', 103, 104, 9.2, 22.7, 29, 64, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-17', 100, 111, 11.1, 26.3, 30.2, 59, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-17', 101, 121, 10.6, 25.2, 31.8, 56, 1000.1, 0, 13),
	('CIUDADMANTE', '2019-05-16', '2019-05-17', 111, 92, 7.3, 21.6, 33.1, 54, 999.5, 0, 119),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 107, 91, 9.7, 28.1, 34.5, 49, 999.4, 0, 157),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 70, 30, 8, 16.6, 35.5, 43, 999.9, 0, 522),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 83, 46, 10.4, 24.8, 35.2, 45, 1000.7, 0, 771),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 79, 113, 5.2, 13.3, 35, 46, 1001.8, 0, 822),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 139, 170, 7.4, 15.5, 33.5, 50, 1002.8, 0, 796),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 150, 174, 10.1, 20.2, 32.7, 53, 1004, 0, 619),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 72, 6, 6.5, 13.7, 25.2, 87, 1004.8, 0, 109),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 57, 42, 2, 5.4, 24.4, 88, 1004.3, 0, 2),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 201, 255, 2.2, 4.3, 24.4, 89, 1004, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 259, 260, 2.4, 5.8, 25, 89, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 234, 320, 1.7, 8.6, 25.3, 89, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 275, 337, 1.7, 5.8, 25.4, 88, 1005, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 280, 355, 1.2, 4, 25.5, 87, 1005.3, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 295, 354, 2.1, 6.8, 26.6, 80, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-05-16', '2019-05-16', 117, 107, 5.1, 11.2, 27, 72, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-16', 90, 106, 7.8, 22.3, 27.5, 71, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-16', 101, 113, 10.6, 25.9, 28.3, 68, 1004.9, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-16', 110, 104, 8.9, 19.8, 29.5, 64, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-16', 88, 77, 4.8, 11.2, 30.8, 61, 1001.2, 0, 10),
	('CIUDADMANTE', '2019-05-15', '2019-05-16', 49, 48, 5.5, 12.6, 32.1, 57, 1001, 0, 101),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 96, 45, 4.7, 11.9, 32.9, 53, 1000.9, 0, 211),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 221, 44, 5.1, 10.4, 32.7, 54, 1001.2, 0, 341),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 130, 40, 3.7, 9.7, 33, 53, 1002.1, 0, 382),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 195, 100, 3.9, 15.1, 32.7, 54, 1003.1, 0, 896),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 237, 38, 5.2, 11.5, 31.5, 57, 1004.1, 0, 674),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 209, 12, 4.3, 7.9, 30.1, 60, 1004.9, 0, 555),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 270, 270, 3, 9, 28.1, 70, 1005.7, 0, 428),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 246, 350, 2.7, 5.4, 27.1, 73, 1005.9, 0, 215),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 320, 344, 3.4, 8.3, 26, 78, 1005.4, 0, 242),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 320, 354, 4.2, 10.1, 24.8, 84, 1005.2, 0, 78),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 248, 252, 3, 6.5, 24.3, 89, 1004.5, 0, 50),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 265, 268, 3.3, 7.9, 23.6, 92, 1003.7, 0, 2),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 268, 354, 1.6, 5.4, 23.5, 94, 1003, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 290, 285, 2, 6.1, 23.5, 95, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 294, 253, 2.6, 6.5, 23.6, 96, 1003.3, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 283, 247, 2.4, 6.5, 23.7, 96, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 312, 349, 3, 7.6, 24, 96, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 263, 344, 4.1, 11.2, 23.9, 96, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-05-15', '2019-05-15', 293, 339, 5.4, 13.7, 24.2, 95, 1005, 1.25, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-15', 115, 353, 11.4, 21.6, 24.5, 94, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-15', 52, 50, 14.8, 32.8, 24.9, 91, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-15', 46, 41, 9.1, 16.6, 27.4, 85, 1002.6, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-15', 82, 96, 9.9, 33.1, 31.7, 59, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-15', 92, 89, 14.3, 31.3, 33.8, 51, 998.1, 0, 91),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 69, 15, 4.3, 13.3, 37.4, 36, 997, 0, 316),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 164, 23, 5.1, 11.5, 37.5, 34, 997.2, 0, 535),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 73, 24, 5.7, 16.2, 37.2, 36, 998.3, 0, 720),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 85, 82, 8, 18.7, 36.7, 40, 999.1, 0, 870),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 116, 154, 6.8, 15.8, 35.3, 46, 1000.3, 0, 941),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 153, 101, 4.9, 12.2, 34.9, 46, 1001.4, 0, 983),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 187, 157, 2.1, 9.7, 33.2, 52, 1002.4, 0, 591),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 172, 164, 4.3, 13.3, 32, 58, 1003, 0, 776),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 210, 218, 2.9, 7.9, 30.5, 65, 1003.5, 0, 329),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 104, 114, 2.5, 6.1, 28.6, 73, 1003.5, 0, 321),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 219, 178, 3, 7.6, 26.3, 84, 1002.8, 0, 60),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 177, 176, 3.9, 6.1, 25.8, 87, 1002.3, 0, 1),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 150, 163, 4.1, 8.6, 26.2, 85, 1002, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 150, 158, 4.3, 7.9, 25.8, 87, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 133, 172, 3.5, 7.2, 26, 85, 1001.2, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 161, 160, 3.6, 6.8, 26.4, 83, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 148, 140, 5, 10.4, 26.9, 81, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 151, 179, 5, 9.7, 27.4, 78, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-05-14', '2019-05-14', 113, 111, 6.6, 11.5, 27.9, 76, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-14', 98, 92, 6.1, 13, 28.2, 74, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-14', 103, 151, 6.2, 20.9, 28.8, 72, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-14', 99, 96, 8.4, 22, 29.8, 66, 999.9, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-14', 99, 100, 10.4, 29.2, 31.2, 61, 998.3, 0, 5),
	('CIUDADMANTE', '2019-05-13', '2019-05-14', 104, 120, 9.1, 22.3, 34.1, 46, 997, 0, 68),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 108, 103, 6.9, 12.6, 34.4, 42, 996.4, 0, 169),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 81, 117, 6.1, 16.9, 34.9, 43, 996.5, 0, 369),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 87, 107, 6.1, 17.3, 35.3, 44, 997.2, 0, 714),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 61, 7, 7.4, 15.8, 33.6, 48, 998.4, 0, 388),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 145, 70, 5.1, 13, 33.2, 51, 999.6, 0, 490),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 131, 98, 5.2, 13, 32.2, 56, 1001, 0, 1012),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 204, 351, 2.4, 7.2, 29.6, 62, 1001.9, 0, 472),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 166, 157, 3.6, 7.2, 28.2, 66, 1002.5, 0, 385),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 132, 168, 2.9, 6.8, 26.1, 72, 1002.8, 0, 245),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 153, 12, 2.9, 5.8, 24.5, 79, 1002.6, 0, 65),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 275, 352, 3.2, 6.1, 23.8, 81, 1002.2, 0, 19),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 118, 45, 4.2, 9, 23.4, 82, 1001.4, 0, 1),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 100, 355, 3, 8.6, 23.7, 79, 1000.8, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 151, 111, 1.2, 4.3, 23.8, 79, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 132, 360, 0.8, 2.9, 24.1, 79, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 85, 15, 1.4, 4, 24, 80, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 271, 241, 1.3, 4, 24.3, 78, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 298, 357, 2, 7.9, 25, 75, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-05-13', '2019-05-13', 276, 356, 4.7, 13.3, 25.2, 74, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-13', 253, 345, 5.8, 11.2, 25.4, 73, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-13', 37, 23, 8.4, 15.5, 25.3, 76, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-13', 177, 8, 9, 19.1, 26.4, 69, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-13', 153, 11, 12.9, 25.6, 27.5, 63, 999, 0, 1),
	('CIUDADMANTE', '2019-05-12', '2019-05-13', 158, 358, 14.1, 29.2, 29.5, 57, 997.3, 0, 48),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 216, 29, 9.3, 19.4, 31.5, 53, 996.3, 0, 205),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 225, 354, 9.1, 19.8, 32.3, 51, 996.6, 0, 397),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 304, 348, 7.5, 18.4, 32.9, 50, 997.4, 0, 747),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 203, 11, 4, 18, 32.5, 51, 998.3, 0, 911),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 239, 28, 3.7, 13.7, 31.7, 52, 999.6, 0, 1035),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 146, 3, 5.4, 15.8, 30.1, 55, 1000.5, 0, 980),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 132, 349, 3.1, 6.8, 29, 58, 1001.5, 0, 516),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 106, 38, 6.2, 11.9, 27.2, 62, 1001.9, 0, 460),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 227, 3, 3.3, 7.2, 25.5, 68, 1002.2, 0, 176),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 259, 350, 5.3, 11.9, 25.2, 69, 1002, 0, 157),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 275, 354, 4, 7.6, 24.2, 73, 1001.7, 0, 33),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 243, 1, 6.8, 13.7, 24.2, 72, 1001.1, 0, 1),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 129, 18, 5.2, 10.8, 24.4, 72, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 270, 20, 3.4, 9.4, 24.5, 72, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 269, 341, 4.6, 9.4, 24.8, 70, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 167, 347, 6.7, 12.6, 25.2, 68, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 113, 12, 5.4, 10.8, 26.1, 66, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 66, 85, 4.4, 9.7, 26.5, 64, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-12', '2019-05-12', 103, 86, 4.4, 14.4, 26.5, 76, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-12', 73, 104, 6.4, 13, 27.2, 74, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-12', 96, 110, 7.4, 24.1, 28, 72, 999.7, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-12', 94, 99, 8.1, 22.7, 29.6, 66, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-12', 84, 98, 10.3, 24.5, 31.4, 59, 997.1, 0, 4),
	('CIUDADMANTE', '2019-05-11', '2019-05-12', 101, 115, 8.6, 23.8, 33.6, 52, 995.9, 0, 29),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 302, 357, 6, 13.3, 35.4, 46, 995.3, 0, 308),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 260, 44, 3.2, 11.5, 35.8, 43, 995.7, 0, 524),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 95, 30, 6.4, 16.9, 35.5, 43, 996.3, 0, 731),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 118, 37, 6.7, 14, 34.5, 47, 997.5, 0, 920),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 78, 51, 5.6, 13.7, 34, 49, 998.5, 0, 960),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 287, 346, 3.7, 8.3, 32.5, 53, 999.3, 0, 414),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 127, 113, 6.2, 12.2, 31.7, 57, 1000.2, 0, 884),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 156, 3, 6.1, 12.2, 29.4, 62, 1000.8, 0, 729),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 309, 355, 3.9, 11.2, 27.5, 66, 1001.3, 0, 525),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 243, 251, 2, 5, 25.2, 77, 1001.1, 0, 143),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 209, 206, 3.1, 5.4, 23.9, 80, 1001.2, 0, 39),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 204, 85, 1.1, 2.9, 23.3, 80, 1000.8, 0, 1),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 130, 90, 2.2, 6.1, 23.2, 81, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 191, 10, 3.5, 6.1, 23.6, 83, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 312, 342, 4, 9.4, 24.1, 81, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 314, 312, 4.5, 10.4, 24.9, 76, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 235, 337, 6.2, 18, 25.3, 73, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 247, 358, 12.3, 28.1, 26.3, 70, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-05-11', '2019-05-11', 225, 32, 11.1, 28.1, 27.2, 68, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-11', 137, 16, 10.7, 22, 28.4, 64, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-11', 80, 5, 9.5, 19.1, 29.7, 60, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-11', 75, 115, 5.5, 16.6, 31.5, 61, 998.6, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-11', 108, 118, 12.9, 28.8, 32.4, 59, 996.9, 0, 5),
	('CIUDADMANTE', '2019-05-10', '2019-05-11', 88, 90, 7.1, 24.1, 34.4, 53, 995.5, 0, 95),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 94, 108, 9.6, 19.8, 35.5, 49, 995.2, 0, 247),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 309, 329, 8.1, 19.4, 37, 38, 995.2, 0, 497),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 268, 338, 4.3, 12.6, 36.6, 38, 996, 0, 660),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 268, 8, 4.7, 18.4, 36, 40, 997, 0, 806),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 248, 351, 9.1, 21.2, 35.1, 43, 998, 0, 890),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 184, 349, 9.9, 20.9, 34.4, 47, 999.1, 0, 893),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 124, 13, 9.5, 19.4, 32.9, 50, 1000, 0, 763),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 213, 352, 7.7, 15.8, 31, 53, 1000.4, 0, 671),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 303, 345, 5.5, 15.8, 28.9, 58, 1000.5, 0, 482),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 314, 341, 5.3, 14.4, 26.5, 68, 1000.2, 0, 182),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 278, 308, 2.2, 8.3, 25.3, 74, 999.7, 0, 78),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 253, 345, 5.9, 13, 25.3, 73, 998.9, 0, 1),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 245, 344, 8.3, 23.4, 25.9, 72, 998.2, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 284, 349, 3.7, 10.8, 26.2, 79, 997.6, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 261, 341, 4.2, 8.6, 26.6, 78, 996.9, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 175, 346, 2.6, 5, 26.7, 82, 996.8, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 279, 342, 2.5, 8.6, 26.8, 83, 996.4, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 263, 348, 3.6, 8.6, 27.6, 78, 997, 0, 0),
	('CIUDADMANTE', '2019-05-10', '2019-05-10', 89, 39, 2.3, 7.9, 27.8, 78, 996.8, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-10', 106, 112, 5.6, 14.8, 28.2, 77, 996, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-10', 133, 116, 9.5, 25.2, 28.9, 75, 994.6, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-10', 129, 143, 11.1, 25.2, 30, 70, 993.5, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-10', 120, 116, 12.5, 31.7, 31.8, 65, 991.9, 0, 9),
	('CIUDADMANTE', '2019-05-09', '2019-05-10', 112, 123, 11.6, 24.8, 34.4, 56, 990.7, 0, 118),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 166, 183, 6.4, 13.3, 36, 46, 990.3, 0, 214),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 78, 134, 5, 11.5, 36.9, 44, 990.7, 0, 400),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 124, 29, 3.9, 11.5, 36.2, 48, 991.3, 0, 542),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 92, 49, 3.8, 11.5, 35.8, 49, 992.3, 0, 733),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 150, 353, 5.3, 13, 35, 51, 992.9, 0, 528),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 94, 29, 6.1, 13.3, 34.1, 52, 994, 0, 691),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 86, 25, 5.7, 12.2, 32.8, 57, 994.7, 0, 660),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 213, 222, 2.2, 5.8, 30.5, 66, 995.7, 0, 477),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 161, 12, 1.1, 4, 28.3, 75, 995.5, 0, 285),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 199, 11, 3, 6.1, 25.8, 90, 995.3, 0, 80),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 245, 340, 4, 7.9, 25.2, 92, 994.9, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 284, 7, 2.1, 6.8, 25.3, 91, 995.2, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 333, 346, 4.4, 7.6, 26, 89, 995.3, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 84, 88, 3.4, 11.2, 26.7, 85, 995.5, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 84, 96, 6.2, 12.6, 27.1, 83, 995.8, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 106, 101, 9.3, 20.9, 27.1, 83, 995.7, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 106, 91, 6.1, 13.3, 27.4, 82, 996.1, 0, 0),
	('CIUDADMANTE', '2019-05-09', '2019-05-09', 149, 337, 3.6, 6.1, 27.8, 80, 996.1, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-09', 68, 54, 4.7, 10.4, 28.4, 78, 995.5, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-09', 98, 116, 7.8, 20.5, 29.3, 75, 994.6, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-09', 107, 132, 11.6, 23, 30.6, 69, 993.2, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-09', 81, 86, 10.1, 23, 33, 59, 991.5, 0, 2),
	('CIUDADMANTE', '2019-05-08', '2019-05-09', 110, 140, 6.6, 18.7, 38.6, 34, 989.6, 0, 99),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 71, 45, 5.8, 16.6, 40.2, 30, 988.8, 0, 305),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 149, 25, 6, 15.8, 40.8, 32, 989.3, 0, 525),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 118, 133, 7.7, 17.3, 39.6, 34, 990.1, 0, 732),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 126, 131, 9.8, 23, 36.6, 46, 993, 0, 949),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 137, 140, 15.3, 29.5, 34.5, 54, 994, 0, 980),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 114, 75, 10.5, 20.5, 34, 52, 995.2, 0, 933),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 89, 98, 6.9, 16.9, 31.8, 60, 996.1, 0, 687),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 112, 118, 4.3, 12.2, 30.6, 67, 996.8, 0, 539),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 81, 52, 1.5, 4.7, 27.9, 78, 997.7, 0, 256),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 193, 18, 1.4, 3.6, 25.9, 90, 998, 0, 79),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 243, 228, 2.5, 4.7, 25.5, 91, 998.1, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 150, 156, 5.8, 14, 26.2, 88, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 119, 130, 4.1, 8.6, 26.2, 87, 998.6, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 103, 105, 6.3, 13.7, 26.4, 87, 998.6, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 103, 111, 4.4, 13.3, 26.5, 86, 998.9, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 109, 105, 9, 18.7, 26.4, 85, 999.1, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 95, 127, 5.1, 13.3, 26.5, 84, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-08', '2019-05-08', 102, 96, 3.2, 13.7, 26.9, 82, 1000, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-08', 97, 104, 6.6, 19.1, 27.4, 80, 999.5, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-08', 119, 118, 7.8, 20.5, 28.5, 75, 998.5, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-08', 110, 108, 10.9, 22.7, 29.7, 71, 997.7, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-08', 116, 128, 12.6, 27, 31.5, 65, 996.7, 0, 8),
	('CIUDADMANTE', '2019-05-07', '2019-05-08', 99, 106, 7.4, 20.5, 35.2, 45, 995.9, 0, 113),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 102, 74, 11.1, 27.7, 36.3, 44, 995.7, 0, 303),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 111, 99, 13.7, 26.6, 36.8, 43, 996.2, 0, 520),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 85, 69, 10.4, 32, 37.4, 41, 996.9, 0, 716),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 99, 92, 11.3, 22.3, 36.5, 44, 998.3, 0, 860),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 108, 145, 8.7, 22.7, 35.7, 48, 999.5, 0, 953),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 102, 95, 7.5, 17.6, 34.9, 49, 1000.7, 0, 992),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 116, 164, 7.3, 16.2, 33.8, 53, 1001.7, 0, 817),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 122, 151, 7.8, 16.2, 32, 61, 1002.1, 0, 779),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 143, 164, 7.6, 16.6, 29.5, 71, 1002.4, 0, 546),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 140, 169, 7.5, 15.8, 27.4, 84, 1002.6, 0, 266),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 131, 143, 3.6, 6.1, 25.6, 92, 1002.3, 0, 85),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 226, 213, 1.4, 4, 25.3, 93, 1002.1, 0, 1),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 196, 129, 1.3, 5, 25.6, 91, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 91, 76, 4.3, 11.2, 25.9, 88, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 135, 132, 2.8, 6.8, 25.6, 90, 1002, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 93, 53, 3, 8.6, 26.1, 87, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 83, 93, 3.9, 11.2, 26.3, 86, 1002.6, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 85, 112, 3.2, 11.2, 26.5, 84, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-05-07', '2019-05-07', 94, 94, 5.6, 15.8, 26.6, 83, 1003, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-07', 102, 124, 7.7, 25.6, 26.8, 82, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-07', 122, 120, 13.1, 31, 27.2, 79, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-07', 115, 130, 12, 31.3, 28.3, 75, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-07', 102, 127, 12.2, 33.8, 29.9, 65, 999.8, 0, 5),
	('CIUDADMANTE', '2019-05-06', '2019-05-07', 115, 116, 11.6, 33.1, 32.5, 53, 998.8, 0, 15),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 94, 143, 4, 7.9, 33.7, 47, 998.2, 0, 159),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 67, 49, 4.7, 12.6, 34.4, 43, 998.2, 0, 448),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 70, 100, 7.3, 19.1, 34.8, 44, 998.4, 0, 506),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 77, 153, 6.7, 20.9, 34.6, 47, 999, 0, 625),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 112, 106, 5.9, 16.2, 34.2, 50, 999.7, 0, 1017),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 104, 112, 7, 18.4, 32.2, 56, 1000.5, 0, 980),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 135, 173, 6.9, 15.1, 30.1, 62, 1001.5, 0, 627),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 124, 119, 2.1, 5.4, 28.6, 68, 1002.2, 0, 363),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 102, 116, 2.5, 8.3, 26.8, 77, 1002.3, 0, 272),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 150, 161, 5.1, 10.8, 25.6, 80, 1002.1, 0, 139),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 149, 158, 6.9, 12.6, 24.8, 82, 1001.9, 0, 35),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 157, 171, 7.6, 12.6, 24.3, 84, 1001.2, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 145, 156, 4.6, 9.7, 24.5, 83, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 138, 124, 4.8, 10.1, 24.3, 85, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 152, 148, 5.1, 9.4, 24.3, 85, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 210, 222, 3.9, 7.2, 24.2, 88, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 178, 176, 5.6, 10.1, 24.6, 86, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 186, 178, 1.7, 3.2, 25.4, 78, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-05-06', '2019-05-06', 55, 41, 4.6, 11.5, 25.8, 76, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-06', 56, 33, 6.5, 13.3, 25.9, 80, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-06', 81, 17, 5.6, 12.2, 26.6, 78, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-06', 100, 132, 8.9, 20.5, 27.3, 74, 999.3, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-06', 118, 37, 4, 9, 27.3, 66, 999, 0, 9),
	('CIUDADMANTE', '2019-05-05', '2019-05-06', 295, 357, 10.7, 27, 28.7, 61, 999.3, 0, 30),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 105, 121, 7.4, 21.6, 30.4, 60, 997.5, 0, 75),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 102, 134, 7.7, 23, 31.7, 55, 997.2, 0, 227),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 119, 92, 9, 20.9, 34, 47, 997.8, 0, 760),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 122, 75, 6.4, 17.6, 33, 48, 998.7, 0, 601),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 120, 182, 7.7, 20.9, 32.8, 49, 999.9, 0, 939),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 91, 73, 8.9, 23.4, 32.5, 54, 1000.9, 0, 1129),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 100, 98, 7.5, 19.1, 33.2, 50, 1001.2, 0, 1163),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 107, 61, 3.2, 7.2, 30.9, 57, 1001.2, 0, 764),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 101, 81, 2.4, 5, 29.1, 63, 1015, 0, 613),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 124, 125, 3.7, 7.9, 24.6, 84, 1003.2, 0, 366),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 217, 212, 4.8, 11.2, 21.4, 95, 1001.4, 0.25, 38),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 273, 260, 1.9, 3.2, 21, 95, 1002.4, 0, 1),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 249, 230, 1.5, 7.9, 20.7, 96, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 231, 276, 2.5, 7.9, 20.4, 95, 1001.2, 0.25, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 224, 258, 5.6, 13.7, 21, 95, 1002.3, 0.25, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 65, 12, 19.3, 51.1, 22, 95, 1001.4, 6.25, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 111, 107, 10.8, 19.4, 25.9, 87, 1000.2, 1, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 115, 113, 8.4, 18, 26.9, 80, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-05-05', '2019-05-05', 131, 120, 8.9, 18.7, 27.1, 79, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-05', 116, 97, 6.9, 17.3, 27.4, 78, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-05', 122, 129, 10.6, 21.6, 28.4, 74, 1000.4, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-05', 105, 110, 10.8, 24.5, 30.2, 65, 999.2, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-05', 74, 23, 8.7, 18, 31, 55, 997.7, 0, 2),
	('CIUDADMANTE', '2019-05-04', '2019-05-05', 290, 351, 12.1, 26.3, 31.1, 54, 996.8, 0, 58),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 188, 340, 10.9, 27, 32.5, 50, 996.3, 0, 385),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 270, 345, 17.3, 34.6, 32.7, 50, 996.6, 0, 280),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 188, 44, 8.1, 17.6, 33.8, 47, 996.4, 0, 234),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 186, 23, 9.6, 27.7, 34.8, 47, 997.4, 0, 734),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 111, 43, 10.1, 23, 32.7, 54, 998.4, 0, 609),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 51, 34, 11.8, 25.2, 32.3, 58, 999.4, 0, 983),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 75, 44, 4.6, 10.1, 29.3, 69, 999.7, 0, 353),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 65, 347, 6.3, 12.2, 30.1, 65, 999.5, 0, 392),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 85, 1, 4.3, 13, 29.1, 69, 999.4, 0, 528),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 264, 3, 1.8, 4.3, 26.7, 81, 999.4, 0, 207),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 102, 91, 4.8, 8.3, 25.6, 86, 998.5, 0, 44),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 145, 173, 4.7, 9.4, 25.4, 86, 997.9, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 124, 111, 3.8, 7.6, 25.6, 84, 997.8, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 107, 137, 6.8, 12.6, 25.6, 84, 997.8, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 105, 103, 6.6, 12.2, 25.5, 83, 998, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 57, 31, 4.3, 8.6, 25.8, 82, 997.9, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 131, 116, 4.3, 8.3, 26, 80, 998.9, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 131, 119, 5.3, 10.8, 26.6, 78, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-04', '2019-05-04', 152, 110, 5.8, 10.8, 26.8, 77, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-04', 105, 101, 5.8, 14.8, 27, 75, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-04', 117, 107, 8.3, 16.9, 27.7, 72, 999.6, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-04', 88, 93, 8.4, 20.2, 28.4, 68, 999.5, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-04', 104, 102, 10.9, 24.5, 29.1, 65, 998, 0, 6),
	('CIUDADMANTE', '2019-05-03', '2019-05-04', 91, 128, 12.3, 28.8, 30.6, 60, 997.6, 0, 21),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 102, 97, 10.6, 20.9, 32.1, 55, 996, 0, 94),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 77, 76, 9.8, 22, 33.5, 48, 996.1, 0, 141),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 131, 108, 4.6, 14.4, 34.4, 45, 996.9, 0, 406),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 109, 115, 6.9, 19.4, 33.5, 48, 997.9, 0, 331),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 121, 142, 10.3, 22.3, 32.8, 51, 998.7, 0, 777),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 115, 126, 7.2, 19.1, 32.5, 53, 999.8, 0, 648),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 119, 164, 10.5, 21.2, 31.3, 58, 1000.7, 0, 776),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 113, 117, 9.3, 20.2, 28.7, 70, 1001.5, 0, 371),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 128, 110, 7.2, 14, 26.6, 81, 1001.4, 0, 211),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 130, 161, 6, 13, 25.9, 84, 1000.8, 0, 31),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 128, 140, 3.7, 7.6, 25.5, 85, 1000.4, 0, 17),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 144, 158, 4.5, 11.9, 25.4, 85, 1000, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 93, 88, 4.1, 9.7, 25.9, 82, 999.5, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 94, 96, 4.7, 10.4, 26.1, 81, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 73, 77, 3, 7.6, 26, 82, 999.8, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 95, 91, 4.2, 11.5, 26.2, 82, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 117, 118, 2.9, 5.4, 26.3, 81, 1001, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 76, 77, 2.8, 6.1, 26.1, 83, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-03', '2019-05-03', 89, 82, 3.7, 12.6, 26.4, 80, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-03', 103, 102, 6.6, 13.7, 26.6, 79, 1001.3, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-03', 121, 99, 10.8, 24.1, 27.6, 72, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-03', 94, 90, 12.1, 24.5, 29.8, 61, 999.5, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-03', 101, 87, 9.4, 23.4, 32.1, 51, 998.6, 0, 1),
	('CIUDADMANTE', '2019-05-02', '2019-05-03', 99, 83, 8.1, 17.6, 33.6, 47, 998, 0, 67),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 114, 135, 14.1, 29.5, 35.3, 45, 997.4, 0, 334),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 98, 82, 9.7, 26.6, 36.5, 42, 997.4, 0, 530),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 134, 115, 9.5, 24.1, 36.3, 42, 998.3, 0, 801),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 129, 71, 8.2, 21.2, 35, 45, 999.5, 0, 552),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 134, 59, 9.3, 19.8, 33.2, 54, 1000.6, 0, 1006),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 120, 160, 8.3, 19.8, 30.8, 65, 1002.1, 0, 646),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 142, 171, 10.6, 21.2, 27.6, 77, 1003.1, 0, 345),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 140, 133, 7.7, 13.3, 26.6, 83, 1003.4, 0, 194),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 118, 105, 7.4, 15.5, 25.7, 87, 1003.1, 0, 111),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 133, 149, 4, 12.2, 25.2, 91, 1002.8, 0, 58),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 109, 90, 3.9, 9.4, 24.6, 93, 1001.8, 0, 34),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 115, 110, 5.7, 12.2, 24, 94, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 122, 116, 7.1, 14.8, 24.3, 92, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 118, 116, 7.4, 15.5, 24.8, 90, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 156, 156, 5.7, 10.1, 25.2, 87, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 131, 157, 1.3, 3.6, 25.3, 87, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 169, 158, 11.4, 20.9, 25.5, 87, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 141, 134, 6.9, 16.2, 25.9, 87, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-05-02', '2019-05-02', 145, 96, 5.8, 24.5, 25.5, 91, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-02', 262, 268, 5.4, 15.5, 26.1, 89, 1004.5, 0.25, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-02', 119, 107, 5.1, 11.9, 27.6, 76, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-02', 110, 86, 11.6, 28.4, 28.5, 71, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-02', 109, 92, 11, 25.9, 29.8, 65, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-02', 89, 94, 14.1, 35.6, 31.7, 56, 999.3, 0, 37),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 80, 79, 10.5, 31.7, 34.4, 46, 998, 0, 125),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 96, 110, 11.2, 29.9, 37.1, 40, 996.7, 0, 306),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 91, 116, 10.1, 27, 38.3, 35, 996.8, 0, 708),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 109, 97, 11.1, 22, 37.7, 39, 997.6, 0, 830),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 130, 120, 9.5, 18, 36.5, 43, 998.9, 0, 917),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 117, 107, 9.9, 22, 34.9, 49, 999.9, 0, 931),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 116, 91, 10.8, 21.2, 31.9, 59, 1001.1, 0, 849),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 126, 104, 8.3, 19.1, 29, 70, 1001.9, 0, 337),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 118, 105, 7.9, 17.6, 27.3, 77, 1002.1, 0, 201),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 113, 91, 5.7, 13.3, 26.1, 82, 1002, 0, 59),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 105, 111, 5.5, 10.8, 25.9, 84, 1001.5, 0, 18),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 124, 124, 5.2, 13.3, 25.8, 84, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 104, 107, 4.4, 10.1, 25.9, 84, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 129, 108, 5.8, 11.9, 25.9, 84, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 131, 149, 6.1, 13.3, 26, 85, 1000.8, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 125, 98, 8.2, 14.8, 26, 85, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 108, 119, 6.5, 14, 26.2, 84, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 117, 107, 6.5, 11.2, 26.6, 82, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-05-01', '2019-05-01', 129, 127, 5.8, 15.5, 26.8, 80, 1003.3, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-05-01', 117, 119, 4.6, 13.7, 26.7, 81, 1003.1, 0, 1),
	('CIUDADMANTE', '2019-04-30', '2019-05-01', 106, 114, 9.2, 24.5, 27.3, 79, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-05-01', 115, 94, 8.1, 18.7, 28.1, 75, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-05-01', 98, 108, 8.8, 25.9, 29.4, 66, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-05-01', 111, 111, 13, 33.1, 31, 59, 998.4, 0, 43),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 111, 128, 14.7, 29.9, 34.6, 48, 997.7, 0, 375),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 100, 78, 11.5, 27.7, 35.9, 42, 997.3, 0, 421),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 90, 86, 10.2, 30.6, 36.4, 39, 997.7, 0, 535),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 125, 155, 11.1, 25.2, 35.8, 40, 999, 0, 796),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 93, 96, 5.3, 19.4, 35.3, 42, 1000.2, 0, 855),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 110, 132, 3.9, 16.2, 33.3, 49, 1001.6, 0, 495),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 105, 72, 5.4, 14.8, 32.5, 53, 1002.6, 0, 769),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 88, 68, 5.7, 13, 30.8, 60, 1003.1, 0, 667),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 161, 155, 6.5, 17.3, 27.1, 77, 1003.7, 0, 275),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 126, 153, 6.5, 12.2, 25.6, 85, 1003.4, 0, 27),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 108, 124, 5.6, 13.7, 25.5, 84, 1002.9, 0, 37),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 174, 199, 5, 7.9, 25.2, 84, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 128, 158, 4.1, 9.7, 25.3, 84, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 120, 114, 5.2, 11.2, 25.7, 82, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 148, 150, 6.8, 13.3, 25.9, 81, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 123, 110, 9, 17.6, 25.9, 83, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 128, 106, 6.5, 15.1, 25.9, 81, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 121, 110, 5.9, 11.5, 26, 80, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-04-30', '2019-04-30', 112, 103, 8.3, 16.6, 26.2, 80, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-30', 116, 105, 7.5, 14, 26.6, 75, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-30', 109, 160, 8.3, 17.6, 27.3, 70, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-30', 113, 109, 11.2, 32.4, 28.3, 64, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-30', 114, 110, 6.7, 18.7, 29.5, 60, 1000.6, 0, 3),
	('CIUDADMANTE', '2019-04-29', '2019-04-30', 115, 105, 9.5, 24.1, 30.7, 57, 999.6, 0, 81),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 102, 95, 8.3, 23.4, 31.9, 51, 998.9, 0, 223),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 112, 110, 11, 22.3, 33.6, 45, 998.9, 0, 522),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 98, 87, 9.6, 23.8, 33.8, 42, 999.4, 0, 592),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 102, 90, 8.5, 19.1, 32.9, 45, 1000.3, 0, 423),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 132, 163, 7.8, 18, 32.4, 48, 1001.1, 0, 583),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 137, 119, 6.1, 19.8, 32, 51, 1002.2, 0, 1054),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 114, 126, 7.4, 18, 30.4, 55, 1003.5, 0, 789),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 137, 179, 6.8, 18.4, 27.3, 66, 1004, 0, 351),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 143, 137, 7, 14, 25.1, 76, 1004.2, 0, 141),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 132, 133, 7.2, 14.8, 23.8, 80, 1003.6, 0, 81),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 122, 114, 5.6, 9.4, 23.3, 81, 1003, 0, 29),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 135, 169, 3.9, 8.3, 22.9, 81, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 147, 160, 3.9, 8.3, 23.2, 81, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 126, 145, 3.8, 8.6, 23.3, 81, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 124, 128, 5.3, 10.1, 23.5, 81, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 129, 78, 5.6, 10.8, 23.8, 80, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 120, 103, 7.3, 14, 24.1, 78, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 138, 143, 7.9, 14, 24.4, 73, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-04-29', '2019-04-29', 109, 104, 6.1, 13.7, 24.5, 73, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-29', 89, 86, 4.9, 13.7, 25, 71, 1003.7, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-29', 100, 123, 8.7, 23, 25.9, 67, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-29', 118, 115, 11.2, 22.3, 26.8, 63, 1001.2, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-29', 123, 116, 13, 27.4, 28.9, 47, 1000, 0, 2),
	('CIUDADMANTE', '2019-04-28', '2019-04-29', 119, 111, 14.8, 30.6, 31.7, 38, 999, 0, 119),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 115, 120, 11.3, 20.9, 34.3, 37, 998.1, 0, 315),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 117, 87, 8.3, 17.6, 35.6, 33, 998.3, 0, 520),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 82, 92, 9.2, 20.9, 35.3, 35, 998.8, 0, 712),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 75, 72, 10.3, 23, 34.3, 38, 999.9, 0, 805),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 104, 58, 9.4, 19.8, 33.4, 41, 1000.8, 0, 924),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 116, 81, 6.4, 18, 31.6, 46, 1002, 0, 943),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 145, 78, 4.5, 10.4, 29, 53, 1003.1, 0, 903),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 150, 170, 7.4, 15.5, 26.9, 59, 1003.9, 0, 581),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 147, 122, 2.4, 6.5, 24, 72, 1004, 0, 259),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 222, 300, 2.4, 4.7, 22.3, 79, 1003.8, 0, 97),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 131, 146, 3.9, 6.8, 21.7, 81, 1003, 0, 44),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 135, 117, 5.4, 9.4, 21.2, 83, 1002.2, 0, 1),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 140, 107, 3.8, 6.8, 20.5, 85, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 154, 112, 3.6, 6.8, 21, 81, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 141, 149, 4.9, 14, 21.6, 79, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 129, 146, 5, 11.9, 21.9, 79, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 148, 163, 7, 12.6, 22.5, 78, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 111, 101, 4.6, 9.4, 23, 76, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-04-28', '2019-04-28', 107, 118, 7.1, 18.7, 23.7, 73, 1004, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-28', 127, 98, 9.5, 20.2, 24.4, 68, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-28', 137, 161, 15.4, 29.2, 25.2, 62, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-28', 124, 110, 9.9, 24.5, 26.3, 60, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-28', 124, 168, 10.3, 21.2, 28.2, 54, 1000.8, 0, 2),
	('CIUDADMANTE', '2019-04-27', '2019-04-28', 103, 110, 13.8, 34.2, 31.1, 44, 999.4, 0, 112),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 89, 98, 10.2, 24.8, 33.8, 33, 998.8, 0, 320),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 97, 109, 10, 29.5, 34.5, 29, 999.2, 0, 420),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 78, 78, 11.8, 24.5, 34.8, 27, 1000, 0, 750),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 90, 123, 9.3, 22, 34.4, 28, 1001.3, 0, 894),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 95, 110, 7.5, 24.1, 33.4, 30, 1002.7, 0, 936),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 107, 155, 4.7, 19.1, 32, 33, 1004.1, 0, 964),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 133, 120, 9.9, 19.8, 30.4, 38, 1005.3, 0, 877),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 145, 106, 10.8, 19.4, 28.5, 46, 1006.4, 0, 811),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 118, 126, 9, 18, 26.8, 56, 1006.9, 0, 599),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 141, 114, 6, 10.1, 24, 67, 1007.2, 0, 356),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 149, 154, 7, 11.9, 20.5, 74, 1006.7, 0, 97),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 96, 122, 2.2, 5, 19.3, 78, 1006.6, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 153, 143, 4.1, 7.2, 20.3, 71, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 113, 105, 4.5, 7.9, 20.7, 70, 1006.3, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 145, 159, 3.1, 6.8, 21, 71, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 161, 171, 4.3, 6.8, 21.4, 70, 1007.6, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 125, 125, 5.4, 9.7, 22, 65, 1008.4, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 125, 114, 4.1, 14.4, 23.4, 60, 1009.2, 0, 0),
	('CIUDADMANTE', '2019-04-27', '2019-04-27', 136, 160, 6, 11.5, 23.9, 56, 1009.7, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-27', 149, 121, 5, 10.4, 24.6, 50, 1009.7, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-27', 129, 137, 9.8, 22.7, 25.5, 44, 1009.1, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-27', 120, 151, 10.4, 24.5, 26.8, 38, 1008.2, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-27', 122, 104, 12.8, 26.6, 28.4, 35, 1007, 0, 3),
	('CIUDADMANTE', '2019-04-26', '2019-04-27', 118, 104, 15.9, 32.4, 31.2, 30, 1005.7, 0, 122),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 100, 104, 18.1, 38.5, 33.5, 26, 1004.9, 0, 335),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 115, 126, 15.9, 32.8, 35.9, 23, 1004.5, 0, 564),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 131, 115, 10.2, 20.5, 36.4, 22, 1005.4, 0, 758),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 155, 337, 6.1, 12.2, 35.8, 22, 1006.4, 0, 893),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 130, 105, 11, 19.8, 34.7, 22, 1007.4, 0, 969),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 78, 39, 6.2, 14.8, 34.5, 26, 1008.5, 0, 979),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 139, 143, 4.6, 15.8, 32.9, 31, 1009.4, 0, 923),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 183, 335, 3.5, 8.3, 31.1, 47, 1010, 0, 835),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 251, 256, 3.4, 7.9, 28.4, 58, 1010, 0, 361),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 302, 344, 4.5, 8.3, 25.3, 69, 1009.6, 0, 300),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 69, 20, 6.2, 11.5, 23.1, 81, 1008.7, 0, 76),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 198, 254, 1, 3.2, 21.7, 87, 1007.9, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 291, 265, 2.1, 6.1, 22.5, 85, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 223, 180, 1.4, 4.7, 23.7, 83, 1007, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 109, 87, 3.1, 5.4, 24.1, 81, 1007, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 114, 118, 5.1, 9.4, 24.1, 81, 1007.1, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 124, 128, 6, 13.3, 24.1, 80, 1007.6, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 96, 122, 5.3, 13.3, 25, 67, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-04-26', '2019-04-26', 128, 111, 7.3, 13.7, 25.6, 73, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-26', 152, 153, 13.3, 25.6, 26.7, 62, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-26', 137, 119, 11.6, 24.1, 28.3, 47, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-26', 130, 153, 11.3, 25.9, 29.2, 40, 1004, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-26', 108, 102, 10.9, 28.8, 31.2, 36, 1002.8, 0, 10),
	('CIUDADMANTE', '2019-04-25', '2019-04-26', 123, 112, 13, 33.8, 32.6, 46, 1001.4, 0, 87),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 120, 104, 8.5, 17.3, 35.1, 32, 1000, 0, 141),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 105, 116, 7.6, 21.6, 36.1, 29, 999.9, 0, 274),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 195, 1, 4.6, 15.5, 37.6, 24, 1000.2, 0, 663),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 145, 121, 9.1, 16.2, 36.5, 27, 1001.2, 0, 850),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 190, 23, 6, 11.2, 34.8, 30, 1001.9, 0, 816),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 205, 353, 5.3, 13.3, 33.6, 33, 1003.2, 0, 988),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 129, 166, 4.8, 11.2, 32.2, 36, 1003.6, 0, 963),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 239, 258, 3.1, 9, 29.6, 43, 1004.2, 0, 750),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 279, 9, 3.1, 7.2, 27.6, 47, 1004.2, 0, 421),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 136, 28, 6.2, 17.6, 25.3, 56, 1003.6, 0, 162),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 68, 359, 10.7, 23.4, 24.5, 58, 1002.8, 0, 59),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 71, 38, 10.9, 24.5, 24.7, 54, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 74, 29, 6.8, 15.5, 25.8, 49, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 151, 19, 8.9, 21.6, 25.5, 58, 999.6, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 101, 80, 3.3, 9.7, 24.5, 81, 999.2, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 145, 106, 6.4, 10.8, 24.4, 81, 998.6, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 110, 97, 4.9, 10.1, 25.3, 76, 998.6, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 61, 40, 3.5, 8.3, 25.9, 74, 998.6, 0, 0),
	('CIUDADMANTE', '2019-04-25', '2019-04-25', 293, 344, 5.5, 10.1, 26.7, 71, 997.9, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-25', 307, 357, 3.6, 7.6, 27.2, 69, 997.9, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-25', 251, 12, 3.3, 7.2, 27.8, 66, 997.1, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-25', 73, 72, 5.7, 13.7, 28.3, 65, 996.1, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-25', 99, 108, 11.6, 28.8, 29, 64, 994.8, 0, 1),
	('CIUDADMANTE', '2019-04-24', '2019-04-25', 101, 116, 12.4, 31.3, 31.1, 58, 993.5, 0, 99),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 139, 128, 14.8, 32.4, 34.4, 40, 992.4, 0, 142),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 132, 117, 14.4, 31, 34.5, 42, 992.2, 0, 320),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 125, 159, 12.1, 24.8, 35.9, 38, 993.3, 0, 408),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 131, 150, 12.2, 22.7, 34.8, 41, 994.6, 0, 678),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 116, 151, 11.1, 26.3, 35.5, 39, 996, 0, 955),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 107, 164, 8.1, 21.2, 33.6, 44, 997.7, 0, 924),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 139, 138, 7.7, 19.4, 31.7, 48, 999.2, 0, 594),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 148, 152, 7.9, 19.4, 30.5, 53, 1000.3, 0, 756),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 137, 128, 9, 18, 28, 64, 1001, 0, 472),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 135, 146, 6.7, 14, 25.9, 73, 1001.5, 0, 303),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 132, 145, 5.7, 10.4, 23.7, 81, 1001.1, 0, 59),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 141, 150, 3.5, 6.5, 23.5, 81, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 154, 159, 4.3, 7.9, 23.9, 81, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 147, 98, 3, 6.8, 24.4, 79, 1000.8, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 182, 169, 4.3, 7.6, 24.6, 77, 1001.1, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 171, 165, 3.7, 11.9, 24.9, 76, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 175, 185, 7, 11.5, 25, 74, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 156, 163, 5.1, 10.8, 25, 74, 1003, 0, 0),
	('CIUDADMANTE', '2019-04-24', '2019-04-24', 138, 95, 3.7, 7.2, 25.4, 72, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-24', 118, 111, 6.8, 15.1, 25.5, 73, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-24', 109, 99, 11, 24.1, 26.1, 70, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-24', 103, 118, 7.5, 23.8, 27.3, 61, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-24', 100, 127, 11.4, 27, 28.6, 55, 1000, 0, 1),
	('CIUDADMANTE', '2019-04-23', '2019-04-24', 109, 115, 14.4, 30.6, 30.1, 50, 998.8, 0, 68),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 92, 90, 11.3, 32.8, 32.5, 43, 998.4, 0, 303),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 76, 80, 8.7, 20.5, 33.9, 36, 998.5, 0, 493),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 91, 77, 9.3, 20.5, 34.4, 36, 999, 0, 659),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 98, 89, 6.7, 22.3, 33.2, 41, 999.8, 0, 821),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 100, 134, 5.4, 18.7, 32.5, 45, 1001, 0, 900),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 115, 112, 5.9, 13, 31.5, 48, 1002.4, 0, 901),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 116, 110, 8.4, 22.7, 29.3, 55, 1003.6, 0, 707),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 144, 146, 10, 22.7, 26.7, 67, 1004.1, 0, 401),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 129, 146, 7.1, 14.8, 25.2, 78, 1004.3, 0, 243),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 119, 118, 6.9, 13.3, 23.7, 85, 1004.1, 0, 108),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 125, 132, 3.4, 6.1, 22.8, 89, 1003.4, 0, 61),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 119, 109, 4.8, 10.4, 22.5, 88, 1003, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 97, 94, 5.6, 10.1, 23.1, 86, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 112, 83, 5, 9.7, 23.4, 85, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 103, 97, 4.7, 8.6, 23.5, 84, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 118, 114, 5.9, 12.2, 23.4, 84, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 120, 91, 8.7, 19.8, 23.8, 80, 1004, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 104, 108, 8.3, 14.4, 24.1, 79, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-04-23', '2019-04-23', 109, 95, 6.9, 14, 24.5, 76, 1005.3, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-23', 102, 100, 4.5, 11.2, 24.8, 73, 1005, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-23', 98, 109, 5.1, 15.1, 25.5, 70, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-23', 105, 116, 7.9, 18.7, 26.1, 66, 1003.3, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-23', 90, 96, 10.3, 26.6, 27.1, 62, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-23', 88, 91, 11.7, 32, 28.7, 54, 1001.7, 0, 88),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 102, 103, 12, 29.2, 31.7, 43, 1001, 0, 252),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 104, 117, 11.8, 32.4, 32.2, 41, 1001.1, 0, 508),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 106, 57, 10.5, 23.8, 33.2, 37, 1001.3, 0, 583),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 106, 99, 12.7, 26.3, 32.9, 37, 1002.2, 0, 869),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 135, 95, 9.2, 22, 31.9, 42, 1003.1, 0, 834),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 104, 101, 8.8, 21.2, 30.7, 47, 1004, 0, 878),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 114, 98, 9, 19.4, 29, 52, 1005.2, 0, 925),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 100, 91, 7.3, 16.6, 28.1, 55, 1005.5, 0, 848),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 68, 42, 4.4, 8.6, 25.1, 68, 1005.9, 0, 367),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 156, 158, 7, 11.2, 22.8, 80, 1005.6, 0, 146),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 182, 177, 2.9, 5.8, 21.7, 87, 1005.3, 0, 26),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 115, 112, 4.7, 10.4, 21.6, 86, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 117, 182, 2.1, 7.9, 21.8, 84, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 321, 347, 2.9, 5.4, 21.4, 82, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 101, 97, 5, 9.7, 22, 86, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 130, 92, 2.8, 6.1, 21.7, 86, 1005.2, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 123, 118, 4.4, 8.6, 22, 83, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 129, 139, 4.3, 9.4, 22.5, 79, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-04-22', '2019-04-22', 107, 103, 5.2, 11.2, 23.3, 72, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-22', 100, 120, 5.3, 12.2, 24.1, 64, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-22', 107, 86, 4.4, 12.2, 24.8, 56, 1006.2, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-22', 110, 127, 9.2, 21.6, 25.7, 51, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-22', 102, 103, 12.9, 27.4, 26.9, 45, 1004.1, 0, 1),
	('CIUDADMANTE', '2019-04-21', '2019-04-22', 95, 98, 11.8, 28.8, 29.4, 40, 1003.2, 0, 103),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 94, 105, 12.2, 27.4, 31.4, 40, 1002.4, 0, 244),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 110, 101, 10.2, 26.6, 33.6, 37, 1002.1, 0, 563),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 101, 114, 13.6, 25.6, 34.2, 31, 1002.2, 0, 743),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 87, 110, 9.7, 24.5, 34, 28, 1002.8, 0, 873),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 80, 107, 10.3, 22, 33.1, 29, 1003.8, 0, 982),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 113, 152, 7.2, 21.6, 31.4, 34, 1005, 0, 959),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 82, 79, 6.6, 15.5, 29.3, 39, 1006.3, 0, 948),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 121, 153, 5.8, 12.6, 28.3, 44, 1006.8, 0, 818),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 143, 134, 5.8, 13, 25.5, 57, 1007, 0, 609),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 129, 89, 3.5, 13.7, 23, 70, 1006.6, 0, 374),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 219, 207, 1.8, 4.7, 18.7, 87, 1006.1, 0, 111),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 153, 165, 5.3, 10.1, 18.7, 87, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 148, 164, 5.4, 8.6, 19.5, 84, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 162, 156, 4.8, 7.9, 20, 82, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 153, 153, 4.6, 10.1, 20.4, 79, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 141, 153, 2.8, 5.4, 20.1, 79, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 143, 147, 3.5, 6.8, 21.6, 75, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 125, 135, 3.9, 7.2, 22, 75, 1008.1, 0, 0),
	('CIUDADMANTE', '2019-04-21', '2019-04-21', 148, 160, 6.8, 12.6, 22.7, 72, 1008.4, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-21', 103, 131, 4.2, 10.8, 23.2, 68, 1008.5, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-21', 117, 108, 6.9, 14.8, 24.1, 64, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-21', 105, 98, 11.6, 23.8, 25.3, 56, 1007, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-21', 120, 107, 13.9, 30.6, 27.1, 48, 1006, 0, 1),
	('CIUDADMANTE', '2019-04-20', '2019-04-21', 125, 122, 15.6, 29.9, 30.4, 42, 1004.7, 0, 118),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 105, 100, 15.6, 35.3, 33.6, 32, 1004, 0, 341),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 117, 100, 12.4, 31.3, 35.5, 19, 1004.2, 0, 595),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 115, 132, 9.4, 23.8, 35.2, 20, 1005.2, 0, 781),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 172, 182, 9.1, 25.2, 33.9, 27, 1006.3, 0, 912),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 141, 125, 10.4, 22.3, 32.9, 33, 1007.8, 0, 1000),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 93, 72, 6.1, 18, 31.2, 36, 1009.1, 0, 1020),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 138, 158, 5.8, 15.5, 30.1, 41, 1010.4, 0, 955),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 108, 96, 5.7, 12.6, 27.8, 47, 1011.5, 0, 835),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 106, 94, 6.1, 11.9, 25.4, 56, 1011.7, 0, 635),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 273, 335, 3.2, 6.5, 22.1, 61, 1011.2, 0, 388),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 108, 297, 0.7, 1.4, 18.3, 79, 1010.6, 0, 88),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 240, 258, 1.4, 3.6, 17.2, 81, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 273, 267, 1.8, 2.9, 17.6, 80, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 221, 259, 0.8, 2.5, 17.8, 74, 1009.9, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 265, 255, 1.5, 3.6, 18.5, 66, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 262, 272, 1.9, 4, 19.6, 65, 1010.4, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 127, 120, 2.6, 5, 21, 64, 1010.7, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 198, 199, 3, 6.1, 21.5, 52, 1011.3, 0, 0),
	('CIUDADMANTE', '2019-04-20', '2019-04-20', 120, 116, 4.3, 10.1, 22.9, 46, 1011.3, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-20', 120, 119, 3.7, 10.8, 23.9, 34, 1011, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-20', 87, 92, 3.4, 13, 25.1, 27, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-20', 104, 100, 10.9, 29.2, 27.1, 20, 1008, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-20', 98, 103, 12, 38.9, 30.2, 24, 1006, 0, 1),
	('CIUDADMANTE', '2019-04-19', '2019-04-20', 122, 120, 11.3, 22.7, 34.5, 16, 1004.7, 0, 119),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 116, 103, 8.7, 21.6, 35.8, 13, 1004.8, 0, 340),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 115, 107, 6.4, 18.4, 36.9, 14, 1005.1, 0, 561),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 155, 176, 7.6, 28.1, 36.6, 17, 1005.7, 0, 752),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 134, 157, 8.9, 22, 35.5, 19, 1006.7, 0, 873),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 125, 152, 8.2, 26.3, 34.7, 21, 1008, 0, 1014),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 179, 171, 8.5, 21.2, 33.3, 23, 1009.1, 0, 1020),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 159, 158, 9.6, 24.1, 32, 28, 1010.3, 0, 943),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 226, 212, 6.4, 19.4, 31.3, 32, 1011.3, 0, 777),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 150, 143, 3.4, 6.8, 28.2, 40, 1011.5, 0, 601),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 219, 226, 2.2, 4.3, 24.5, 51, 1011.2, 0, 370),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 269, 302, 2.3, 5, 19.8, 69, 1010.7, 0, 113),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 220, 339, 2.8, 6.5, 18.9, 72, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 320, 345, 3.5, 7.2, 20, 66, 1009.5, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 172, 193, 0.8, 1.8, 19.9, 66, 1008.9, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 273, 274, 1.9, 3.6, 20.2, 64, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 288, 279, 1.9, 2.9, 21.2, 60, 1009.5, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 166, 193, 1.2, 4.7, 22.7, 55, 1009.6, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 122, 141, 3.5, 7.9, 24, 50, 1009.1, 0, 0),
	('CIUDADMANTE', '2019-04-19', '2019-04-19', 148, 153, 6.5, 13.3, 24.8, 48, 1008.4, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-19', 152, 155, 9.3, 20.9, 25.4, 46, 1007.2, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-19', 155, 167, 14.7, 33.1, 26.5, 44, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-19', 146, 142, 16.6, 36, 28.9, 35, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-19', 131, 130, 12.7, 27.7, 31.6, 29, 999.9, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-19', 95, 109, 6.7, 28.4, 35.6, 21, 998, 0, 111),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 263, 337, 12.2, 25.6, 38.2, 13, 996.1, 0, 329),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 244, 14, 5.8, 18, 38.7, 12, 995.5, 0, 561),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 320, 328, 10, 22, 38.3, 14, 996, 0, 745),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 72, 4, 8.8, 17.3, 37.3, 16, 996.7, 0, 890),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 141, 17, 7.1, 19.8, 36.1, 18, 997.7, 0, 1004),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 100, 357, 10.6, 25.2, 35.3, 20, 998.6, 0, 1034),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 301, 340, 19.4, 40.3, 33.1, 22, 999.3, 0, 963),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 266, 329, 16.5, 35.6, 31.6, 29, 999.5, 0, 822),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 209, 3, 19.8, 39.6, 30.5, 32, 999.2, 0, 612),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 288, 1, 12.6, 36.4, 28.5, 59, 998.3, 0, 337),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 280, 341, 2.1, 6.5, 25, 84, 997.3, 0, 94),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 304, 338, 2.9, 6.5, 24.7, 84, 994.8, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 296, 343, 5.9, 9.4, 24.7, 84, 994, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 178, 164, 3.3, 7.2, 24.7, 84, 993.1, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 117, 130, 4.4, 9, 24.8, 84, 993.3, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 97, 130, 5.1, 11.9, 24.8, 84, 994.2, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 109, 141, 5.5, 11.9, 24.8, 84, 994.7, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 78, 82, 5.2, 11.9, 25.3, 82, 995.4, 0, 0),
	('CIUDADMANTE', '2019-04-18', '2019-04-18', 67, 42, 4.4, 12.6, 25.4, 80, 995.9, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-18', 110, 102, 8, 14.4, 25.9, 74, 996.1, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-18', 92, 87, 6.8, 18.7, 27.1, 68, 995.5, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-18', 105, 110, 8.9, 23, 28.7, 63, 994.5, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-18', 120, 131, 10.9, 23, 30.8, 57, 993.3, 0, 1),
	('CIUDADMANTE', '2019-04-17', '2019-04-18', 104, 125, 12.9, 33.1, 33.5, 47, 992.3, 0, 94),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 113, 115, 14.8, 26.3, 36, 38, 991.8, 0, 296),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 118, 116, 13.9, 31, 36.9, 36, 992.4, 0, 518),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 103, 121, 11, 24.1, 36.9, 35, 993.6, 0, 689),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 87, 88, 10.7, 25.6, 36.3, 37, 995.1, 0, 820),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 79, 34, 7.8, 17.6, 35.6, 38, 997, 0, 914),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 93, 139, 7.2, 15.5, 33.5, 42, 998.8, 0, 945),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 162, 153, 10.9, 22, 31.5, 49, 1000.5, 0, 876),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 127, 150, 6.8, 11.5, 29.1, 57, 1001.6, 0, 730),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 164, 167, 7.1, 17.3, 26.1, 68, 1002.3, 0, 520),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 147, 165, 6.8, 12.6, 23.6, 80, 1002.5, 0, 273),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 237, 191, 1.8, 4, 21.2, 93, 1002.4, 0, 75),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 272, 265, 1.8, 4.7, 20.3, 92, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 91, 345, 2.8, 6.8, 20.7, 91, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 254, 265, 2.1, 5, 20.9, 91, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 117, 126, 4.3, 7.6, 21.9, 88, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 148, 152, 4.5, 10.1, 22.4, 85, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 128, 97, 5.7, 10.4, 23, 82, 1003.6, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 120, 100, 3.5, 13.3, 23.9, 78, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-17', '2019-04-17', 130, 178, 4.7, 10.8, 24.1, 76, 1004.7, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-17', 103, 117, 7.2, 12.6, 24.2, 75, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-17', 116, 125, 9.1, 22, 24.9, 70, 1004.1, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-17', 112, 122, 10.7, 23, 26.1, 62, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-17', 114, 130, 12.4, 26.6, 27.9, 56, 1001.4, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-17', 108, 113, 14, 29.2, 30.7, 47, 1000.4, 0, 96),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 101, 87, 12.9, 28.8, 32.6, 40, 999.9, 0, 237),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 91, 48, 9.6, 26.6, 33.8, 35, 999.9, 0, 511),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 128, 114, 12.7, 27, 33.9, 35, 1000.7, 0, 732),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 126, 125, 10, 23.4, 33.8, 36, 1002, 0, 810),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 144, 173, 7.5, 19.4, 32.4, 39, 1003.3, 0, 950),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 100, 136, 7.3, 23, 31.1, 42, 1004.7, 0, 898),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 131, 102, 8.1, 15.5, 29.8, 47, 1006.2, 0, 694),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 128, 165, 11.6, 19.1, 27.6, 52, 1006.9, 0, 684),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 136, 84, 6.1, 13.7, 25.7, 61, 1007.2, 0, 597),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 145, 164, 5.2, 11.2, 23.1, 72, 1007, 0, 304),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 129, 114, 1.5, 3.6, 19.9, 84, 1006.8, 0, 90),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 143, 139, 1, 2.2, 18.7, 85, 1006.2, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 268, 255, 1.9, 4.3, 19.4, 83, 1006.3, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 199, 196, 3.4, 5.8, 20.7, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 147, 147, 7.6, 15.1, 21.6, 76, 1006.9, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 154, 191, 5.6, 10.4, 21.8, 74, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 175, 145, 6.9, 13, 21.4, 75, 1008.6, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 147, 145, 9.5, 19.4, 21.2, 75, 1009, 0, 0),
	('CIUDADMANTE', '2019-04-16', '2019-04-16', 121, 119, 7.3, 17.3, 21.4, 73, 1009, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-16', 115, 128, 9.4, 19.8, 21.9, 72, 1008.8, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-16', 120, 121, 11.5, 28.8, 23, 64, 1007.8, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-16', 135, 127, 9.2, 18.7, 24.6, 52, 1006.6, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-16', 117, 121, 11.5, 24.5, 26.3, 43, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-16', 107, 102, 13, 28.8, 28.6, 42, 1004.7, 0, 119),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 110, 82, 10.8, 23.4, 31.3, 27, 1004, 0, 285),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 114, 89, 12.4, 23.4, 32.5, 20, 1004.2, 0, 644),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 80, 103, 10.2, 20.5, 30.7, 25, 1005.2, 0, 452),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 65, 90, 8.7, 18, 30.2, 27, 1006.3, 0, 592),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 142, 159, 11.5, 20.5, 28.9, 27, 1007.5, 0, 488),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 128, 160, 7.9, 22.3, 28.5, 27, 1008.6, 0, 647),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 149, 156, 9.5, 19.4, 26.2, 39, 1009.6, 0, 591),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 127, 164, 7.8, 17.3, 25.7, 44, 1010, 0, 667),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 119, 167, 5.5, 12.6, 23.6, 54, 1010.1, 0, 401),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 135, 151, 6, 11.9, 20, 68, 1009.8, 0, 308),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 134, 137, 3.8, 7.9, 16.8, 79, 1009.4, 0, 113),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 151, 151, 7.1, 13, 16.6, 79, 1008.7, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 148, 158, 6.4, 11.2, 17.1, 77, 1008.4, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 150, 149, 3.9, 10.4, 17.4, 75, 1008.5, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 148, 154, 4.2, 7.9, 17.6, 72, 1008.7, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 155, 164, 5.2, 8.6, 18.1, 68, 1009.5, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 161, 156, 5, 9.7, 18.3, 69, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 154, 147, 6.1, 10.8, 18.8, 67, 1010.8, 0, 0),
	('CIUDADMANTE', '2019-04-15', '2019-04-15', 145, 153, 7.2, 17.3, 19.4, 63, 1011, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-15', 139, 151, 9.5, 21.2, 20, 57, 1010.8, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-15', 120, 128, 10.7, 20.9, 20.8, 54, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-15', 127, 163, 13.3, 30.6, 22.4, 46, 1008.5, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-15', 121, 112, 14.3, 34.9, 24.4, 40, 1007.4, 0, 1),
	('CIUDADMANTE', '2019-04-14', '2019-04-15', 130, 129, 15.8, 38.5, 27.2, 34, 1006.2, 0, 117),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 125, 117, 14.6, 30.6, 29.9, 29, 1005.1, 0, 332),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 109, 140, 7.3, 17.6, 32.6, 20, 1004.7, 0, 559),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 153, 182, 6.5, 15.5, 32.4, 20, 1005.7, 0, 740),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 164, 345, 6.2, 12.6, 31.7, 21, 1006.9, 0, 883),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 208, 195, 6, 14.4, 30.5, 22, 1008.1, 0, 965),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 156, 357, 7.1, 19.4, 29, 23, 1009, 0, 988),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 225, 16, 9.2, 19.8, 28.1, 25, 1009.9, 0, 924),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 188, 346, 10.9, 22, 26.3, 27, 1010.4, 0, 805),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 119, 2, 16.2, 33.8, 25.5, 28, 1010, 0, 611),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 126, 344, 12.8, 25.9, 23.8, 32, 1009.1, 0, 315),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 169, 356, 9.5, 19.8, 22.2, 35, 1007.8, 0, 57),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 159, 14, 11.3, 26.6, 22.6, 35, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 192, 355, 15.9, 31, 23.3, 36, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 197, 349, 14.4, 31, 24.1, 53, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 324, 333, 8.4, 14.4, 23.8, 54, 1003.8, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 325, 326, 7.5, 17.6, 24.4, 57, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 290, 330, 11.8, 23.8, 25.6, 54, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 263, 338, 12.5, 27.4, 26.9, 53, 1001, 0, 0),
	('CIUDADMANTE', '2019-04-14', '2019-04-14', 269, 23, 8, 21.6, 27.2, 57, 1000.2, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-14', 128, 151, 6, 16.6, 27.5, 58, 998.7, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-14', 131, 132, 8.9, 24.8, 28.8, 52, 996.9, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-14', 130, 123, 12.9, 27.7, 30.2, 47, 994.5, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-14', 102, 113, 13.3, 31.3, 33.6, 37, 991.6, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-14', 228, 350, 11.6, 25.6, 39, 12, 988.7, 0, 112),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 299, 333, 13.1, 36.4, 41.7, 8, 987.1, 0, 303),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 257, 214, 9.6, 25.9, 44.8, 4, 986.7, 0, 552),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 228, 254, 10.2, 34.9, 44, 6, 987.5, 0, 769),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 246, 267, 7.7, 17.3, 43.6, 7, 988.5, 0, 908),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 222, 229, 9.2, 29.9, 41.7, 9, 989.7, 0, 1002),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 207, 209, 10.9, 23.4, 39.1, 13, 990.8, 0, 888),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 129, 120, 7.1, 16.6, 32.2, 44, 992.4, 0, 493),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 97, 92, 8.3, 20.5, 29.6, 54, 993.2, 0, 586),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 171, 158, 6, 10.4, 26.7, 64, 993.7, 0, 595),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 149, 149, 3.8, 9.7, 22.8, 80, 994, 0, 309),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 97, 164, 2.4, 6.8, 21.2, 88, 993.7, 0, 33),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 153, 164, 4.6, 8.3, 21, 89, 993, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 155, 158, 8.8, 16.9, 21, 91, 992.2, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 149, 178, 6.2, 13, 20.9, 91, 992.4, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 144, 165, 5.2, 9.4, 20.9, 91, 992.3, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 133, 128, 4.5, 9.4, 21.2, 90, 993, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 152, 160, 5.8, 11.5, 21.7, 88, 993.4, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 136, 151, 7.1, 14.8, 22.3, 86, 994.1, 0, 0),
	('CIUDADMANTE', '2019-04-13', '2019-04-13', 154, 146, 7.8, 13.3, 22.9, 84, 994.5, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-13', 100, 82, 4.4, 9, 23.7, 79, 994.5, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-13', 129, 107, 8.2, 18.7, 25.1, 68, 994.3, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-13', 127, 116, 10.9, 25.9, 26.4, 59, 993.6, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-13', 128, 98, 12.7, 24.5, 28.6, 52, 992.7, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-13', 98, 93, 13.8, 29.9, 31.5, 44, 991.7, 0, 101),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 122, 140, 6.8, 18, 35.3, 28, 991.1, 0, 298),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 112, 118, 11.1, 23.4, 35.9, 26, 991.4, 0, 663),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 62, 30, 7.9, 17.6, 35.3, 28, 992.1, 0, 643),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 181, 73, 4.2, 13, 35.1, 27, 993.2, 0, 578),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 63, 46, 8.9, 16.6, 34.4, 30, 994.8, 0, 840),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 108, 339, 5.4, 14.4, 33.4, 29, 996, 0, 676),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 237, 335, 6.1, 14.8, 31.9, 37, 997.2, 0, 924),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 197, 356, 8.9, 22, 29.9, 42, 997.8, 0, 719),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 243, 354, 8.2, 16.2, 28.3, 45, 997.9, 0, 574),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 306, 325, 4.2, 10.8, 26.1, 51, 997.6, 0, 247),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 315, 352, 5.4, 10.1, 22.9, 62, 997, 0, 75),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 279, 272, 2, 7.9, 22, 65, 996.3, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 281, 308, 1.8, 6.1, 22.7, 62, 996.1, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 322, 329, 6.6, 13.3, 24, 58, 995.9, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 312, 339, 5.7, 15.1, 24.7, 56, 996.3, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 333, 340, 11.9, 22.3, 25.6, 57, 996.8, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 321, 346, 2.8, 7.6, 25.1, 61, 996.7, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 311, 342, 4.7, 12.6, 26, 57, 996.9, 0, 0),
	('CIUDADMANTE', '2019-04-12', '2019-04-12', 125, 121, 4.3, 12.2, 27.3, 52, 996.1, 0, 0),
	('CIUDADMANTE', '2019-04-11', '2019-04-12', 138, 125, 9.6, 17.6, 28.4, 48, 995.7, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-11', 108, 87, 6.5, 16.2, 25.1, 68, 996, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-11', 106, 98, 8, 19.1, 26.7, 57, 995.3, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-11', 105, 122, 12.7, 31.3, 29.1, 45, 994.5, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-11', 102, 119, 9.7, 25.9, 32.9, 38, 993.5, 0, 108),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 113, 124, 18.2, 36.7, 35.6, 32, 993.1, 0, 326),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 110, 111, 13.2, 28.1, 39.1, 16, 992.9, 0, 573),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 101, 115, 11.3, 27.4, 38.8, 18, 993.7, 0, 767),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 104, 92, 9.7, 26.3, 37.6, 22, 995.3, 0, 899),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 106, 108, 10.3, 25.2, 36.2, 28, 997, 0, 989),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 139, 171, 5.3, 13.3, 34.9, 28, 998.7, 0, 1012),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 134, 69, 6.7, 14.8, 32.2, 35, 1000.3, 0, 961),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 103, 49, 4.7, 11.5, 29.5, 42, 1001.6, 0, 821),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 139, 143, 5.9, 11.5, 26.7, 50, 1002.1, 0, 614),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 246, 260, 2.2, 4.3, 24.1, 54, 1002.3, 0, 356),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 193, 196, 1.8, 4, 18.1, 75, 1002.1, 0, 106),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 310, 334, 1.9, 3.6, 17.7, 76, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 283, 264, 1.6, 3.6, 18.1, 75, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 281, 271, 1.6, 2.2, 18.8, 72, 1001.8, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 249, 248, 4.1, 6.5, 19.6, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 275, 287, 1.3, 2.9, 20.5, 65, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 282, 266, 1.7, 2.9, 21.5, 62, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 224, 356, 3.8, 7.6, 22.7, 57, 1004, 0, 0),
	('CIUDADMANTE', '2019-04-10', '2019-04-10', 260, 351, 2.2, 5.8, 24, 54, 1004.4, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-10', 298, 317, 3, 8.3, 25.2, 50, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-10', 101, 105, 6.5, 14, 26.7, 48, 1003.2, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-10', 87, 64, 7.4, 15.8, 28.6, 47, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-10', 105, 80, 15.4, 30.6, 31.2, 44, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-10', 114, 118, 10.2, 22.3, 35.7, 15, 999.5, 0, 103),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 101, 97, 10.3, 28.1, 37.5, 14, 999.7, 0, 334),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 117, 114, 7.8, 30.6, 38.3, 12, 1000, 0, 576),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 77, 100, 8, 26.6, 38.8, 12, 1000.9, 0, 763),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 112, 94, 7.1, 19.8, 38.4, 13, 1002.2, 0, 909),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 123, 161, 9.6, 21.2, 37.1, 18, 1003.4, 0, 983),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 128, 140, 8.9, 19.1, 35.8, 22, 1004.7, 0, 1019),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 139, 169, 5.7, 13, 33.2, 27, 1006, 0, 944),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 85, 109, 3.3, 9.4, 29.7, 33, 1006.9, 0, 777),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 182, 12, 3.6, 8.3, 26.9, 39, 1007.2, 0, 605),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 276, 318, 2.8, 5.8, 23.3, 50, 1007.3, 0, 356),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 256, 243, 1.9, 4, 17.3, 70, 1007.2, 0, 101),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 243, 184, 1.8, 4, 17.1, 74, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 292, 277, 2.8, 7.9, 18.7, 69, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 190, 8, 5.8, 9, 19, 68, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 246, 252, 3.2, 4.7, 19.6, 61, 1006.6, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 214, 238, 2.4, 5.8, 21.1, 56, 1007, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 80, 46, 1.8, 4.7, 22.1, 54, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 314, 337, 2.5, 6.1, 23, 49, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-04-09', '2019-04-09', 152, 116, 7.4, 12.6, 24.6, 44, 1008.2, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-09', 141, 150, 7.8, 18, 25.5, 40, 1009, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-09', 106, 103, 7.3, 27.4, 26.7, 39, 1008.1, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-09', 122, 114, 7.3, 18.4, 28.2, 32, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-09', 135, 110, 9.1, 20.2, 29.4, 30, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-09', 118, 123, 12.5, 28.8, 31.2, 26, 1004.4, 0, 28),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 116, 111, 9.3, 18.4, 33.7, 21, 1003.4, 0, 127),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 163, 131, 7.7, 15.1, 35.2, 17, 1002.9, 0, 339),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 113, 148, 8.4, 18.7, 35.9, 17, 1003.1, 0, 758),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 89, 35, 3.5, 20.2, 35.2, 21, 1004, 0, 863),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 104, 71, 5.4, 14, 35.2, 21, 1005.4, 0, 961),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 197, 66, 5.6, 10.4, 33.2, 24, 1006.6, 0, 963),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 261, 247, 3.9, 10.1, 31.5, 30, 1007.3, 0, 931),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 111, 351, 3.9, 10.1, 30, 38, 1007.9, 0, 773),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 143, 351, 2.7, 6.5, 28.1, 51, 1007.7, 0, 564),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 254, 263, 3.3, 6.5, 24.7, 70, 1007.2, 0, 273),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 238, 218, 1, 3.6, 22, 87, 1006.7, 0, 52),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 172, 188, 3.9, 7.9, 22.5, 85, 1006.1, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 150, 139, 3.6, 10.4, 22.3, 85, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 202, 201, 2.2, 4.7, 22.1, 86, 1005, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 158, 201, 2.6, 9.4, 23, 85, 1004.5, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 279, 203, 1.8, 4.3, 23, 85, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 234, 218, 2.8, 7.9, 23.8, 81, 1004.7, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 158, 166, 9.3, 18, 24.2, 81, 1004.9, 0, 0),
	('CIUDADMANTE', '2019-04-08', '2019-04-08', 145, 130, 7.6, 14.8, 24.6, 81, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-08', 142, 154, 9.5, 21.6, 25.6, 78, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-08', 139, 118, 11.4, 22.7, 27.5, 70, 1003.3, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-08', 97, 35, 6.3, 16.6, 31.3, 40, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-08', 134, 357, 10.7, 19.8, 31.7, 40, 999.5, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-08', 246, 349, 10.1, 23.8, 33.3, 34, 998.5, 0, 95),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 258, 359, 13.8, 32, 34.3, 31, 997.9, 0, 299),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 247, 340, 14.4, 34.2, 34.8, 33, 997.8, 0, 534),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 185, 10, 13.8, 38.5, 34.9, 34, 998, 0, 728),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 128, 18, 18.3, 35.6, 34.1, 38, 998.8, 0, 861),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 131, 30, 13.6, 32.8, 32.5, 46, 999.9, 0, 950),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 169, 355, 11.1, 23.8, 29.3, 61, 1001.1, 0, 662),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 155, 351, 8.7, 18.7, 28.2, 67, 1001.3, 0, 887),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 290, 354, 4.3, 7.6, 25.2, 79, 1001.6, 0, 130),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 206, 167, 2.4, 5, 24.8, 81, 1001.6, 0, 100),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 234, 236, 2.8, 6.1, 23.9, 86, 1001, 0, 36),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 238, 254, 3.1, 7.9, 23.6, 88, 1000.4, 0, 9),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 259, 228, 2.7, 5.4, 23.6, 87, 1000, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 199, 210, 3.1, 6.1, 23.7, 87, 999.3, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 73, 65, 3.1, 6.5, 23.8, 86, 999.3, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 133, 142, 3.4, 6.8, 23.7, 86, 999.6, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 121, 126, 4, 9, 23.7, 86, 1000.1, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 120, 125, 7.6, 14.8, 23.9, 85, 1000.4, 0, 0),
	('CIUDADMANTE', '2019-04-07', '2019-04-07', 126, 130, 7, 14.8, 23.6, 85, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 104, 133, 3.9, 7.2, 24.1, 80, 1000.4, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 91, 103, 5.7, 16.9, 25.1, 75, 1000, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 58, 26, 4.7, 9.7, 26.8, 71, 999.6, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 63, 28, 5.4, 10.4, 28, 66, 999.1, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 99, 97, 8.8, 20.9, 28.9, 63, 997.8, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-07', 124, 129, 11.9, 29.2, 31.2, 55, 996.4, 0, 111),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 103, 124, 10.6, 26.6, 33.7, 43, 995.4, 0, 286),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 116, 122, 8.8, 19.4, 34.8, 43, 995.5, 0, 498),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 139, 106, 8, 22, 34.1, 45, 996.3, 0, 681),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 77, 103, 4.7, 13.3, 31.9, 51, 997.7, 0, 423),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 155, 153, 11.1, 19.4, 31.5, 53, 999, 0, 910),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 149, 198, 4, 16.6, 29.7, 59, 1000.8, 0, 714),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 114, 120, 6.2, 13.3, 26.8, 70, 1001.9, 0, 198),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 120, 110, 6.7, 13.7, 25.7, 77, 1002.5, 0, 237),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 123, 141, 6.5, 11.5, 24.5, 83, 1003, 0, 57),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 115, 112, 6.7, 12.6, 24.1, 84, 1002.6, 0, 24),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 124, 112, 6.4, 11.5, 24.1, 84, 1001.5, 0, 14),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 116, 98, 4.1, 7.2, 24, 84, 1000.9, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 172, 172, 1.2, 3.6, 23.9, 84, 1000.5, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 157, 119, 2.7, 4.7, 23.9, 84, 1000.6, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 100, 100, 3.7, 9.7, 24.1, 83, 1000.7, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 173, 227, 4.2, 8.3, 24.2, 82, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 147, 129, 1.3, 6.1, 24.2, 82, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-04-06', '2019-04-06', 78, 20, 3.8, 8.3, 24.4, 80, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 60, 31, 4.8, 10.1, 24.5, 81, 1003, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 93, 88, 4.2, 13.7, 24.8, 81, 1002.8, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 110, 135, 7.6, 15.1, 25.6, 78, 1002, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 115, 102, 8.2, 18.4, 26.9, 69, 1001, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 113, 107, 15.7, 32, 28.5, 62, 999.7, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-06', 100, 114, 9.6, 22, 31.2, 51, 998.8, 0, 42),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 88, 68, 6.9, 14, 32.9, 42, 998.7, 0, 164),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 108, 134, 9, 18.4, 33.3, 37, 998.7, 0, 261),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 92, 69, 5.7, 14.4, 33.9, 40, 999.3, 0, 370),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 114, 88, 6.5, 15.5, 33.2, 38, 1000.7, 0, 563),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 118, 114, 7.7, 16.2, 32.2, 48, 1002.1, 0, 926),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 126, 72, 4.2, 10.8, 30.6, 55, 1003.6, 0, 532),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 139, 53, 4.3, 14.4, 29, 60, 1004.7, 0, 744),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 128, 159, 4.7, 11.5, 28.1, 63, 1004.9, 0, 647),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 159, 163, 5.7, 11.5, 25.1, 75, 1004.8, 0, 448),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 163, 179, 5, 10.1, 22.9, 86, 1004.1, 0, 147),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 135, 129, 4.4, 10.1, 21.7, 91, 1003.4, 0, 37),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 152, 147, 6.3, 13, 20.4, 92, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 315, 349, 2, 4.3, 20.9, 92, 1002.3, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 275, 257, 1.5, 5, 20.9, 92, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 307, 326, 1.7, 4.3, 21.6, 91, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 185, 268, 1.1, 3.6, 22, 88, 1004.3, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 282, 348, 2.2, 5.8, 22.8, 87, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-04-05', '2019-04-05', 111, 109, 1.3, 4.7, 23.3, 85, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 96, 110, 4.3, 13.7, 24.1, 81, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 111, 113, 12.5, 23, 25.3, 71, 1004.8, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 108, 116, 12.2, 25.9, 27, 62, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 118, 127, 9.9, 21.6, 29.2, 57, 1002.9, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 98, 115, 11.9, 22.7, 31.8, 48, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-05', 255, 358, 10.9, 19.1, 36.1, 26, 999.9, 0, 143),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 117, 95, 4.1, 9.4, 37.9, 30, 999.6, 0, 312),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 187, 334, 4.6, 16.9, 37.2, 31, 999.7, 0, 542),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 67, 42, 9.7, 24.5, 35.9, 36, 1000.3, 0, 726),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 77, 41, 9.7, 19.4, 35.4, 37, 1001.5, 0, 875),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 105, 100, 5.6, 15.8, 34.7, 40, 1002.9, 0, 954),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 119, 143, 7.2, 18.4, 32.4, 46, 1004.2, 0, 965),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 104, 101, 5, 13.3, 29.6, 54, 1005.4, 0, 893),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 125, 135, 5.3, 10.4, 27.1, 62, 1006.4, 0, 753),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 76, 35, 4.4, 10.4, 24.5, 71, 1006.8, 0, 550),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 291, 259, 3.3, 7.9, 21.9, 82, 1006.5, 0, 298),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 263, 249, 3.7, 5, 19, 95, 1006.5, 0, 63),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 132, 107, 2.6, 4.7, 19.4, 94, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 190, 194, 1.7, 4, 19.5, 93, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 184, 195, 1, 4.7, 19.9, 91, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 150, 149, 7.1, 13.3, 20.5, 89, 1006, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 129, 110, 6.8, 15.1, 21.1, 87, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 113, 119, 5.8, 11.9, 21, 87, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-04-04', '2019-04-04', 112, 104, 7.6, 15.8, 21.4, 84, 1007.5, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 122, 151, 6.3, 13.7, 21.9, 80, 1008.2, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 91, 95, 6.7, 18, 22.7, 73, 1007.3, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 119, 121, 7.4, 20.2, 23.6, 70, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 109, 114, 10.9, 25.2, 24.9, 64, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 112, 106, 10.2, 26.3, 26.7, 57, 1004.4, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-04', 96, 75, 11, 29.9, 29, 49, 1003.2, 0, 35),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 113, 91, 7, 20.9, 32.3, 38, 1002.5, 0, 304),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 89, 103, 7.9, 20.2, 32.5, 38, 1002.6, 0, 547),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 105, 121, 9, 20.5, 32.7, 38, 1003.2, 0, 729),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 159, 118, 7.4, 28.4, 32.1, 38, 1004.5, 0, 849),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 115, 98, 9.5, 27.7, 30.9, 43, 1005.8, 0, 945),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 87, 79, 8.5, 21.2, 29.7, 48, 1007.2, 0, 945),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 93, 83, 7.3, 15.1, 28.7, 51, 1008.5, 0, 983),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 146, 112, 8.3, 18.7, 25.8, 60, 1009, 0, 363),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 127, 130, 8.7, 17.3, 24, 68, 1008.9, 0, 358),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 138, 163, 4.2, 9, 20.5, 83, 1008.8, 0, 141),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 179, 351, 3.8, 6.8, 18.9, 87, 1008.1, 0, 55),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 163, 168, 4.8, 7.6, 19.1, 86, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 142, 147, 4.8, 10.1, 19.6, 85, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 149, 158, 4, 7.6, 19.7, 87, 1007.6, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 167, 170, 4.5, 7.6, 20.1, 85, 1007.8, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 203, 187, 3, 6.1, 20.4, 84, 1008.6, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 119, 122, 2.9, 5.8, 21.4, 80, 1009.6, 0, 0),
	('CIUDADMANTE', '2019-04-03', '2019-04-03', 155, 170, 5.4, 11.2, 21.4, 80, 1010.4, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 129, 140, 8.2, 14.8, 21.5, 79, 1010.7, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 144, 130, 7.6, 16.9, 22.2, 74, 1010.7, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 119, 85, 11.4, 26.6, 22.9, 70, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 103, 117, 11.6, 28.1, 24.1, 63, 1008.7, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 119, 109, 9.8, 21.6, 25.6, 50, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-03', 105, 105, 10.2, 24.5, 27.3, 42, 1006.6, 0, 60),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 102, 149, 11.5, 24.5, 29, 37, 1006.3, 0, 325),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 103, 89, 9.8, 24.1, 30, 35, 1006.5, 0, 565),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 116, 124, 8.9, 19.1, 29.8, 34, 1007.4, 0, 768),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 164, 69, 2.9, 15.8, 29.1, 35, 1008.8, 0, 882),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 104, 98, 6.1, 16.2, 28.7, 37, 1010.2, 0, 1051),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 117, 47, 2.4, 10.4, 26.1, 40, 1011.7, 0, 998),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 145, 338, 2.7, 10.1, 23.2, 45, 1012.8, 0, 556),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 215, 250, 2.5, 8.6, 22.7, 45, 1013.4, 0, 654),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 286, 355, 3.6, 9, 20.3, 49, 1013.7, 0, 568),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 280, 358, 3.1, 7.6, 18.2, 56, 1013.2, 0, 323),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 262, 245, 2.2, 3.2, 14.3, 78, 1012.5, 0, 76),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 169, 1, 2.3, 4.3, 14.4, 75, 1011.9, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 274, 348, 1.3, 4, 15, 69, 1011.6, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 314, 344, 2.3, 4.7, 16.2, 64, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 292, 18, 3.2, 6.8, 16.5, 63, 1011.8, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 199, 343, 3.8, 7.2, 16.8, 60, 1012.5, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 158, 7, 4, 8.6, 17.1, 58, 1013.4, 0, 0),
	('CIUDADMANTE', '2019-04-02', '2019-04-02', 320, 339, 2.3, 5.4, 17.1, 58, 1014.1, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 314, 334, 5.4, 10.8, 17.3, 57, 1014.4, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 258, 1, 5.6, 12.2, 17.3, 62, 1014.3, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 323, 340, 6.7, 18, 17.8, 54, 1013.3, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 161, 357, 8.2, 17.3, 18.4, 52, 1012, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 105, 16, 14, 28.4, 19.8, 49, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-02', 102, 11, 16.3, 37.1, 23.2, 41, 1008.4, 0, 114),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 165, 5, 12.9, 25.6, 26, 36, 1007.6, 0, 333),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 104, 50, 13.4, 27, 26.6, 35, 1007.4, 0, 570),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 184, 8, 10.7, 28.4, 26.4, 35, 1007.6, 0, 767),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 91, 29, 8.1, 19.8, 25.9, 36, 1008.7, 0, 893),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 274, 5, 5, 19.1, 24.1, 39, 1009.9, 0, 984),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 254, 346, 5, 16.2, 22.1, 40, 1011.3, 0, 989),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 84, 11, 8.7, 18, 20.1, 43, 1012.4, 0, 941),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 134, 26, 6.2, 16.9, 18.4, 46, 1013.2, 0, 798),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 282, 340, 6.9, 12.2, 15.3, 57, 1013.2, 0, 209),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 300, 342, 2.9, 8.6, 14.2, 65, 1012.6, 0, 92),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 298, 355, 3.8, 9, 13.5, 68, 1012.1, 0, 21),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 319, 349, 4.2, 9, 13.2, 68, 1011.9, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 298, 22, 4.6, 10.1, 13.1, 68, 1011.4, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 240, 341, 3.9, 6.8, 13.2, 65, 1011.2, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 322, 344, 3.4, 6.8, 13.2, 65, 1011.3, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 314, 346, 5.1, 9, 13.1, 65, 1012.6, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 213, 353, 7.2, 11.9, 13.5, 63, 1013.4, 0, 0),
	('CIUDADMANTE', '2019-04-01', '2019-04-01', 322, 339, 7.2, 16.6, 13.7, 61, 1014.1, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 319, 322, 10, 20.2, 13.9, 61, 1014.4, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 313, 327, 5.2, 9.4, 14, 61, 1014.6, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 291, 360, 6.7, 17.6, 14, 60, 1014.3, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 229, 14, 5.2, 14, 14.2, 61, 1013.9, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 222, 329, 11.8, 24.1, 14.5, 60, 1013.5, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-04-01', 244, 345, 16.2, 37.1, 15.1, 57, 1012.3, 0, 15),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 267, 12, 14.8, 36.4, 15.7, 54, 1012.2, 0, 93),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 194, 358, 16.2, 35.3, 15.8, 56, 1012.4, 0, 107),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 250, 350, 21.3, 50, 16.8, 52, 1012.3, 0, 185),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 179, 347, 14.8, 38.9, 17.4, 52, 1012.1, 0, 286),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 268, 339, 21.3, 52.2, 19, 48, 1012.2, 0, 787),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 300, 335, 23.9, 56.5, 17.3, 51, 1012.9, 0, 404),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 274, 339, 17.1, 39.6, 16.8, 55, 1013.4, 0, 253),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 272, 338, 25.3, 60.5, 16.6, 59, 1012.9, 0, 189),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 267, 347, 17.5, 51.5, 17, 59, 1012.3, 0, 81),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 271, 14, 23.9, 55.1, 17.6, 63, 1010.9, 0, 80),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 234, 360, 22.4, 51.1, 17.7, 69, 1009.5, 0, 7),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 164, 355, 21.1, 43.9, 18.4, 71, 1008.3, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 163, 357, 21.4, 52.2, 20.1, 69, 1007, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 244, 335, 13.6, 30.2, 23.4, 72, 1006.2, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 195, 118, 0.9, 4, 23.8, 76, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 215, 191, 1.2, 5, 23.8, 76, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 262, 216, 2.3, 6.8, 23.6, 76, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-03-31', '2019-03-31', 258, 260, 2.6, 5.8, 24, 74, 1005.8, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 109, 117, 4.6, 11.2, 24, 74, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 101, 125, 5.7, 11.5, 24.1, 74, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 133, 119, 7, 14.4, 24, 74, 1004, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 112, 92, 9.2, 19.4, 25, 69, 1002.4, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 104, 116, 13, 28.8, 26.3, 61, 1000, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-31', 90, 72, 10.7, 25.9, 29.7, 50, 998.4, 0, 35),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 87, 74, 11.1, 25.2, 33.2, 39, 996.6, 0, 281),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 87, 4, 7.2, 15.1, 34.6, 34, 996.3, 0, 528),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 84, 87, 9.5, 21.6, 34.1, 36, 996.6, 0, 797),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 95, 46, 8.5, 27.4, 33.6, 39, 997.4, 0, 800),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 63, 20, 9.8, 24.1, 32.4, 42, 998.5, 0, 958),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 106, 137, 6.2, 16.9, 31.5, 43, 1000, 0, 942),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 104, 94, 8.6, 20.9, 29.6, 49, 1001.2, 0, 880),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 119, 99, 6.4, 14.8, 27.6, 56, 1002, 0, 734),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 125, 139, 5.5, 11.5, 25.1, 65, 1002.4, 0, 512),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 203, 232, 3.8, 7.9, 22.6, 74, 1002.2, 0, 241),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 241, 243, 2.3, 5, 20.4, 84, 1001.7, 0, 34),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 145, 160, 4, 7.6, 20.9, 83, 1001.7, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 156, 150, 8.4, 12.2, 20.9, 82, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 124, 124, 5.1, 9.4, 21.1, 81, 1001.5, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 104, 108, 4.2, 9.7, 21.3, 80, 1001.9, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 113, 140, 3.3, 5.8, 21.1, 79, 1003, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 105, 102, 2.1, 4.7, 21.7, 76, 1004, 0, 0),
	('CIUDADMANTE', '2019-03-30', '2019-03-30', 121, 137, 1.7, 5.4, 22.1, 74, 1005.1, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 117, 147, 3.8, 8.3, 22, 74, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 118, 100, 6.1, 13, 22.7, 71, 1005.5, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 126, 117, 8, 15.5, 22.9, 71, 1005, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 123, 116, 8.6, 19.1, 23.7, 67, 1003.9, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 119, 91, 11.4, 28.1, 25.4, 59, 1002.5, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-30', 111, 123, 13.4, 30.6, 28.5, 50, 1001.1, 0, 91),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 93, 110, 12.7, 29.2, 30.6, 44, 1000.1, 0, 297),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 86, 86, 13.9, 31, 32.4, 39, 999.8, 0, 530),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 93, 69, 9.8, 24.1, 33.2, 36, 1000.1, 0, 724),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 128, 123, 11.9, 25.2, 32.4, 39, 1000.9, 0, 857),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 112, 100, 10.7, 26.6, 31.6, 41, 1002.1, 0, 939),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 107, 53, 8, 24.1, 30.4, 45, 1003.7, 0, 959),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 138, 141, 12.4, 23.8, 28.1, 52, 1004.8, 0, 891),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 149, 134, 7.2, 18, 26.5, 58, 1005.6, 0, 777),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 135, 122, 11, 19.4, 23.9, 66, 1005.9, 0, 526),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 148, 148, 9.5, 17.3, 20.9, 77, 1006.1, 0, 282),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 158, 159, 4.8, 8.6, 19, 86, 1005.6, 0, 45),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 146, 133, 7, 14.4, 19.7, 82, 1005.4, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 122, 106, 6.5, 14.4, 20.1, 80, 1005.3, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 130, 134, 5.8, 11.9, 20.7, 76, 1005.7, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 143, 158, 3.9, 8.6, 20.8, 75, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 182, 178, 4.1, 9.7, 20.8, 75, 1007.4, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 121, 129, 6.5, 12.6, 21, 73, 1008.4, 0, 0),
	('CIUDADMANTE', '2019-03-29', '2019-03-29', 99, 101, 6.8, 14, 21.1, 71, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 100, 95, 7.1, 18.7, 21.6, 69, 1009.5, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 99, 93, 5.8, 15.5, 22, 70, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 108, 106, 10.9, 23.8, 22.5, 69, 1008.9, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 106, 98, 12.9, 27.4, 23.6, 66, 1007.9, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 119, 113, 14, 29.9, 25.2, 61, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-29', 120, 118, 13.2, 32.8, 27.8, 53, 1006, 0, 89),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 119, 110, 14.6, 34.9, 30.1, 46, 1005.4, 0, 302),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 117, 105, 12.8, 28.8, 31.3, 42, 1005.5, 0, 541),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 114, 137, 14.6, 30.2, 31.7, 39, 1006.3, 0, 711),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 117, 106, 12.3, 28.4, 31.5, 40, 1007.3, 0, 684),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 137, 151, 14.4, 28.8, 30, 44, 1008.5, 0, 903),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 142, 105, 12.9, 23.8, 28.9, 49, 1009.8, 0, 1003),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 123, 110, 8.4, 20.9, 28, 54, 1011.1, 0, 896),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 140, 132, 11.2, 23, 26, 59, 1011.7, 0, 419),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 151, 135, 10.3, 17.6, 23.6, 72, 1011.9, 0, 257),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 135, 131, 6.8, 15.8, 20.7, 89, 1011.4, 0, 252),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 161, 186, 6.7, 11.2, 19.5, 93, 1010.9, 0, 42),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 210, 235, 2.4, 5.4, 19.2, 92, 1010.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 160, 152, 3.7, 7.2, 20.1, 90, 1010.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 141, 164, 5.4, 11.5, 20.7, 87, 1010.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 146, 159, 5.3, 11.2, 21.2, 85, 1011.1, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 154, 160, 6.8, 14.4, 21.8, 81, 1011.6, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 161, 170, 6.8, 16.6, 22.1, 80, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-28', '2019-03-28', 123, 125, 6.8, 15.8, 22, 82, 1012.9, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 91, 152, 4.4, 9.4, 22.1, 81, 1013.3, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 109, 109, 7.2, 20.9, 22.1, 80, 1013.2, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 107, 109, 9.6, 20.9, 22.7, 77, 1012.7, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 111, 125, 12.2, 26.3, 24.2, 66, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 106, 103, 13.9, 30.2, 26.5, 49, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-28', 117, 115, 13.5, 25.9, 29, 44, 1009.3, 0, 33),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 121, 126, 6.8, 17.3, 30.4, 37, 1009, 0, 204),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 109, 127, 10.3, 25.2, 31.3, 34, 1009.1, 0, 505),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 111, 98, 7.4, 23, 32.6, 33, 1009.7, 0, 784),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 117, 108, 9, 20.9, 31.4, 36, 1010.8, 0, 930),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 102, 157, 6.8, 19.4, 31, 37, 1012.1, 0, 977),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 158, 108, 6, 12.6, 29.6, 41, 1013.4, 0, 682),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 127, 121, 8.6, 16.9, 28, 46, 1014.1, 0, 593),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 129, 109, 4.7, 9.4, 27.7, 47, 1014.6, 0, 761),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 140, 144, 2.9, 7.6, 24.5, 68, 1014.4, 0, 542),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 265, 339, 1.7, 4, 20.8, 82, 1014.1, 0, 304),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 239, 279, 0.9, 2.2, 18.3, 90, 1013.2, 0, 28),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 287, 245, 1.7, 4, 18.3, 89, 1013, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 181, 177, 3.5, 8.6, 19.4, 86, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 228, 190, 2.6, 5.8, 19.4, 87, 1012.1, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 150, 157, 2.7, 4.3, 19.1, 89, 1012.7, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 203, 210, 1.6, 6.5, 19.2, 88, 1013.1, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 147, 146, 4.1, 6.8, 20.5, 84, 1013.6, 0, 0),
	('CIUDADMANTE', '2019-03-27', '2019-03-27', 95, 116, 4.5, 12.2, 21.6, 79, 1014.2, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 248, 253, 1.4, 3.6, 21.3, 79, 1014.6, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 159, 162, 4.8, 11.9, 22.2, 75, 1013.9, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 155, 164, 9.3, 17.3, 22.9, 71, 1013.5, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 137, 121, 12.6, 24.8, 23.9, 67, 1012.6, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 114, 125, 11.7, 27.4, 25.8, 59, 1011.2, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-27', 93, 95, 13.7, 40, 28.1, 52, 1009.9, 0, 97),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 96, 111, 9.7, 24.5, 32.1, 31, 1008.8, 0, 266),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 113, 117, 11.6, 21.2, 32, 29, 1009, 0, 407),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 141, 110, 10.7, 20.9, 32.2, 36, 1009.9, 0, 736),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 130, 124, 8.2, 15.8, 31.5, 40, 1010.7, 0, 673),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 134, 185, 4.7, 13.3, 30.4, 44, 1011.6, 0, 627),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 132, 171, 4.8, 15.1, 30.2, 48, 1012.5, 0, 921),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 153, 177, 7.4, 14, 27.7, 56, 1013.1, 0, 390),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 166, 95, 2.9, 10.4, 26.7, 61, 1013.4, 0, 814),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 117, 16, 4, 9.4, 25.3, 65, 1013, 0, 537),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 152, 350, 0.8, 4.3, 22.1, 82, 1012.2, 0, 135),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 211, 273, 0.9, 2.5, 20.3, 92, 1011.1, 0, 34),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 288, 338, 2.4, 5.4, 21.1, 88, 1010.6, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 318, 347, 2.3, 4.3, 21.2, 89, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 331, 330, 3, 5, 20.9, 91, 1010, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 52, 33, 3.5, 6.8, 21.6, 86, 1010.1, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 91, 94, 3.1, 10.1, 22.1, 86, 1010.6, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 90, 77, 4.2, 7.6, 22.2, 86, 1011.1, 0, 0),
	('CIUDADMANTE', '2019-03-26', '2019-03-26', 111, 114, 6.9, 14.4, 22.5, 85, 1011.1, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 124, 135, 5.6, 12.6, 22.7, 83, 1011.2, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 136, 143, 7.9, 15.8, 22.8, 81, 1010.7, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 108, 127, 8.3, 20.5, 23.7, 76, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 113, 119, 10.4, 26.3, 25.2, 70, 1008.3, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 101, 89, 11.4, 26.3, 27.6, 60, 1006.7, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-26', 115, 121, 11.6, 27.4, 30.4, 52, 1005.3, 0, 86),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 97, 91, 7.7, 19.1, 32.8, 43, 1004.7, 0, 293),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 77, 78, 6.4, 17.6, 33.9, 40, 1004.3, 0, 534),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 86, 103, 8.3, 16.9, 33.1, 42, 1004.7, 0, 738),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 91, 80, 5.4, 13.3, 32.4, 47, 1005.5, 0, 716),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 98, 116, 5.8, 11.9, 30.6, 52, 1006.9, 0, 916),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 150, 13, 5.9, 9.4, 27.9, 62, 1008, 0, 389),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 136, 128, 4.5, 10.4, 25.5, 73, 1008.6, 0, 259),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 137, 171, 5.1, 11.5, 24.6, 77, 1008.7, 0, 199),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 138, 134, 4.7, 11.5, 23.2, 84, 1008.4, 0, 189),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 120, 146, 4.2, 9.4, 22.3, 86, 1007.8, 0, 138),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 110, 25, 2.2, 4.3, 20.1, 94, 1007.1, 0, 46),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 204, 217, 1.3, 2.9, 20, 92, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 150, 134, 5.2, 10.1, 21.1, 89, 1006.2, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 146, 122, 4, 8.3, 21.7, 86, 1006.5, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 148, 157, 5.2, 9.7, 22.3, 84, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 144, 147, 5.6, 10.4, 23, 80, 1007.7, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 156, 181, 4.5, 8.6, 23.1, 80, 1008.3, 0, 0),
	('CIUDADMANTE', '2019-03-25', '2019-03-25', 135, 119, 6.6, 13, 23.1, 82, 1008.6, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 109, 88, 8.3, 15.8, 23.1, 82, 1008.6, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 104, 112, 8.9, 20.2, 23.5, 80, 1008.6, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 114, 119, 10.2, 20.9, 23.7, 78, 1007.9, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 110, 105, 6.3, 18.7, 25.2, 70, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 120, 127, 11.8, 25.9, 27.6, 62, 1005, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-25', 84, 110, 11.4, 26.6, 31.4, 47, 1003.5, 0, 89),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 84, 79, 12.4, 28.1, 33.3, 39, 1002.9, 0, 307),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 106, 66, 11.2, 27, 34.1, 38, 1002.8, 0, 534),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 114, 126, 9.7, 20.9, 34.4, 37, 1003.5, 0, 737),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 120, 163, 7.6, 17.6, 33.7, 40, 1004.5, 0, 880),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 138, 189, 9.1, 19.8, 32.8, 44, 1005.7, 0, 964),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 146, 154, 10.5, 21.2, 30.9, 49, 1007.1, 0, 969),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 125, 108, 7.6, 19.4, 29.5, 52, 1008.2, 0, 895),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 158, 184, 7.8, 13.7, 28.2, 56, 1008.9, 0, 742),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 155, 180, 7.6, 13.3, 25.8, 66, 1009.2, 0, 509),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 154, 147, 7.3, 10.4, 22.5, 85, 1008.9, 0, 226),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 153, 144, 6.1, 10.4, 21.6, 89, 1008.6, 0, 9),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 129, 128, 7.4, 13.3, 21.6, 89, 1008.2, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 159, 178, 3.9, 6.5, 21.5, 89, 1007.9, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 120, 135, 3.6, 5.8, 21.6, 88, 1008, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 103, 52, 3.8, 7.6, 21.8, 87, 1008.3, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 90, 55, 3.2, 8.6, 21.9, 85, 1008.9, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 79, 76, 3.8, 7.6, 22, 85, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-03-24', '2019-03-24', 98, 98, 5, 9.7, 22.6, 82, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 105, 143, 5.1, 14.8, 22.8, 79, 1009.6, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 107, 116, 6.5, 14, 23.1, 78, 1009.2, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 103, 90, 6.7, 18, 23.5, 75, 1008.5, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 116, 111, 7.9, 18.4, 24.1, 72, 1007.3, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 107, 113, 10.6, 26.3, 25.3, 66, 1005.9, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-24', 91, 106, 11.5, 31.7, 27.6, 58, 1004.9, 0, 105),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 98, 92, 11.7, 28.1, 29.2, 53, 1003.8, 0, 128),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 92, 111, 13.1, 28.4, 32.3, 42, 1003.5, 0, 770),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 103, 83, 7.6, 15.8, 30.8, 46, 1004.3, 0, 734),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 127, 171, 8.3, 23, 31.2, 45, 1005.3, 0, 994),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 128, 138, 10.5, 28.8, 30.2, 47, 1006.7, 0, 976),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 144, 171, 11.7, 22.7, 29.2, 51, 1007.5, 0, 902),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 135, 162, 11.8, 27.4, 26.5, 62, 1007.7, 0, 747),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 145, 164, 9.4, 24.5, 24.1, 72, 1007.9, 0, 551),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 147, 155, 10.6, 19.1, 20.8, 86, 1007.7, 0, 299),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 158, 172, 6.2, 9.4, 19.9, 87, 1007.4, 0, 45),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 150, 168, 8.1, 15.5, 20.3, 85, 1007.1, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 195, 167, 2.1, 4.3, 19.7, 94, 1007, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 214, 144, 1, 2.5, 19.5, 94, 1007.1, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 232, 232, 1.8, 4.3, 19.2, 95, 1007.5, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 243, 217, 2.3, 6.8, 19.3, 93, 1008.1, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 157, 160, 4.8, 9.4, 19.4, 93, 1008.1, 0, 0),
	('CIUDADMANTE', '2019-03-23', '2019-03-23', 307, 335, 3, 6.8, 20.1, 89, 1010.9, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 256, 266, 2.3, 5.8, 20.8, 84, 1010.5, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 98, 100, 4.3, 10.1, 21.2, 81, 1009.7, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 126, 99, 3.6, 10.1, 21.6, 75, 1009.7, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 93, 109, 10.8, 29.9, 22.1, 74, 1006.8, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 118, 117, 11.1, 24.1, 22.7, 72, 1007.1, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-23', 110, 122, 8.8, 16.9, 23.6, 73, 1006.3, 0, 36),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 113, 103, 10.3, 25.9, 24.2, 70, 1006.3, 0, 112),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 138, 170, 11, 25.9, 24.9, 66, 1006.2, 0, 233),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 142, 107, 12.8, 27.4, 25.1, 65, 1006.9, 0, 251),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 119, 107, 14, 25.6, 26, 63, 1007.9, 0, 969),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 121, 132, 9.8, 20.5, 25.4, 67, 1009, 0, 614),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 130, 124, 7.8, 16.2, 24.3, 72, 1010.2, 0, 370),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 108, 125, 7.1, 14.8, 23.6, 73, 1011, 0, 342),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 100, 106, 4.8, 11.9, 23.4, 75, 1011.1, 0, 469),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 122, 104, 7.9, 15.5, 21.9, 80, 1011.2, 0, 332),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 150, 113, 4.4, 9, 18.9, 95, 1010.8, 0, 173),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 176, 152, 2.8, 4.7, 17.6, 96, 1010.7, 0, 18),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 170, 174, 4.2, 7.9, 17.7, 96, 1010.4, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 160, 176, 2.2, 3.6, 17.6, 96, 1010.6, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 205, 190, 3.9, 6.8, 17.5, 96, 1010.8, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 284, 251, 1.9, 6.5, 17.6, 95, 1011.8, 0.25, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 286, 262, 3.4, 8.6, 18.3, 95, 1012.2, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 285, 322, 1.6, 4.3, 18.9, 96, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-22', '2019-03-22', 317, 338, 2.6, 5.8, 19.1, 96, 1012.6, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 307, 345, 1.8, 4.7, 19.3, 96, 1012.9, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 282, 352, 1.7, 4, 19.4, 96, 1012.8, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 247, 346, 1.2, 3.2, 19.4, 95, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 313, 346, 2.1, 4.7, 19.6, 95, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 227, 160, 1.1, 2.2, 19.5, 94, 1010.9, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-22', 237, 223, 1.9, 4.3, 19.6, 94, 1010.6, 0, 36),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 240, 223, 1.3, 4.3, 19.6, 93, 1010.8, 0.25, 27),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 277, 241, 2.4, 5.4, 20.4, 91, 1010.9, 0, 106),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 272, 268, 2.8, 5.4, 20.1, 92, 1011.4, 0, 160),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 272, 255, 3, 9.4, 20.3, 91, 1012.2, 0.25, 122),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 284, 270, 3.5, 8.3, 19.9, 91, 1013, 0, 133),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 290, 348, 3.4, 7.2, 19.4, 94, 1013.9, 0, 119),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 311, 343, 5.1, 11.2, 18.7, 94, 1014.4, 0, 109),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 211, 348, 6.8, 14.8, 18.5, 94, 1014.7, 0.25, 169),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 311, 312, 2.5, 5.8, 18.1, 95, 1014.6, 0, 92),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 219, 333, 3.9, 9, 17.7, 95, 1013.8, 0, 38),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 180, 7, 3.8, 7.2, 17.6, 95, 1013, 0, 6),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 119, 350, 5, 11.2, 17.7, 94, 1012.5, 0.25, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 52, 25, 5.2, 11.5, 18.4, 88, 1011.7, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 160, 349, 5.1, 10.8, 19.6, 91, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 285, 312, 1.6, 4, 19.9, 88, 1011.4, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 274, 249, 1.3, 2.9, 20.1, 85, 1011.7, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 121, 125, 5.8, 11.5, 20.4, 83, 1012.2, 0, 0),
	('CIUDADMANTE', '2019-03-21', '2019-03-21', 127, 127, 4.5, 11.9, 21.1, 79, 1012.4, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 152, 158, 7, 13, 21.6, 75, 1012.5, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 132, 98, 5.5, 13.3, 21.8, 73, 1012.2, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 122, 152, 7, 17.6, 22.7, 68, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 113, 109, 8.4, 21.6, 23.7, 64, 1010.5, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 97, 118, 5.7, 16.2, 25.1, 56, 1009.3, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-21', 105, 121, 9.8, 22, 25.9, 51, 1008.5, 0, 33),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 82, 72, 8, 18.4, 27.5, 45, 1007.9, 0, 151),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 103, 106, 6.2, 18.4, 28.3, 41, 1007.8, 0, 235),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 66, 43, 5.5, 16.9, 28.9, 39, 1008.2, 0, 402),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 119, 111, 8, 21.6, 29.3, 39, 1008.8, 0, 769),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 144, 114, 5, 15.1, 27.8, 44, 1009.8, 0, 833),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 154, 58, 4.4, 9.7, 25.7, 48, 1011.1, 0, 923),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 240, 42, 4, 10.8, 23.3, 56, 1011.9, 0, 648),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 175, 166, 2.2, 6.5, 21.5, 64, 1012.2, 0, 382),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 285, 360, 2.4, 6.1, 19.6, 72, 1011.8, 0, 228),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 147, 11, 3.1, 7.6, 17.9, 80, 1011.1, 0, 113),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 267, 346, 3.7, 6.5, 17.4, 82, 1010.3, 0, 18),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 180, 168, 3, 4.7, 17.5, 78, 1009.8, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 184, 174, 2.4, 3.6, 17.6, 78, 1010, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 103, 97, 2.2, 3.2, 17.5, 78, 1010.2, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 193, 283, 0.7, 2.9, 17.7, 76, 1010.8, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 268, 264, 3.2, 6.5, 17.9, 75, 1011.5, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 270, 265, 1.7, 6.8, 18, 77, 1012.1, 0, 0),
	('CIUDADMANTE', '2019-03-20', '2019-03-20', 323, 338, 2.5, 6.5, 18.3, 75, 1012.4, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 323, 336, 3.9, 9.4, 18.8, 70, 1012.6, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 302, 342, 4.2, 6.8, 19.5, 65, 1012.5, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 265, 339, 2.9, 5.4, 19.9, 62, 1012, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 170, 6, 4.8, 12.2, 20.4, 59, 1011.2, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 112, 22, 4.9, 9, 21, 60, 1010.4, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-20', 119, 345, 6.6, 15.1, 21.8, 55, 1009.6, 0, 33),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 72, 59, 5.4, 13.7, 22.3, 54, 1009.3, 0, 118),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 293, 343, 6.6, 14, 22.6, 52, 1009.3, 0, 290),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 61, 358, 8.2, 14.4, 22, 53, 1010.1, 0, 337),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 133, 13, 8.4, 15.1, 22.5, 53, 1010.9, 0, 452),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 99, 37, 7, 16.6, 21, 56, 1012.2, 0, 454),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 144, 26, 6, 14.8, 20.2, 59, 1013.6, 0, 497),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 265, 345, 9.1, 18, 19.2, 61, 1014.2, 0, 771),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 293, 338, 4.2, 11.9, 18, 66, 1014.4, 0, 479),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 270, 326, 2.6, 7.2, 16.1, 78, 1014.2, 0, 275),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 283, 319, 2.2, 6.1, 14, 89, 1013.6, 0, 52),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 291, 297, 2.4, 5.8, 13.4, 93, 1012.8, 0, 9),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 283, 267, 3, 8.6, 13.1, 94, 1012.2, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 275, 270, 3.4, 7.2, 13.1, 95, 1011.9, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 277, 254, 3.5, 7.6, 13.1, 95, 1012, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 276, 272, 2.1, 5.4, 13.1, 95, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 299, 297, 2.1, 5, 13, 95, 1012.8, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 263, 22, 3.2, 7.6, 13, 93, 1013.2, 0, 0),
	('CIUDADMANTE', '2019-03-19', '2019-03-19', 48, 56, 3.6, 7.9, 13.2, 93, 1014, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 253, 263, 2.7, 6.1, 13.1, 93, 1014.7, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 204, 196, 2, 4.3, 13, 93, 1014.4, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 273, 344, 2.8, 9.4, 12.8, 92, 1014.4, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 277, 36, 6.9, 21.6, 13, 90, 1013.7, 0.25, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 300, 343, 6.2, 14.8, 14.4, 78, 1013.2, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-19', 269, 340, 10, 25.6, 15.1, 70, 1011.7, 0, 11),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 238, 22, 11.3, 30.6, 15.1, 70, 1011.5, 0, 43),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 233, 15, 8.5, 26.6, 16, 66, 1011.1, 0, 107),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 251, 333, 11.2, 22.7, 16.5, 62, 1011.5, 0, 147),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 277, 17, 9.1, 20.9, 16.4, 69, 1012.5, 0, 313),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 146, 17, 7.6, 16.6, 16.3, 69, 1013.4, 0, 210),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 251, 354, 8.8, 19.1, 16.4, 65, 1014.3, 0, 157),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 226, 357, 7.7, 15.5, 16.7, 63, 1014.6, 0, 193),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 207, 360, 4.2, 10.8, 16.2, 64, 1014.4, 0, 251),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 269, 348, 3.7, 8.6, 15, 67, 1014.4, 0, 99),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 319, 348, 5.7, 10.8, 14.2, 71, 1013.6, 0, 76),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 317, 354, 5.3, 15.1, 13.9, 70, 1013.1, 0, 1),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 297, 337, 4.8, 10.8, 14.3, 67, 1012.6, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 330, 338, 5.2, 10.4, 14.5, 66, 1012.3, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 137, 337, 3.7, 8.6, 14.7, 64, 1012.2, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 308, 353, 3.3, 9.7, 14.9, 66, 1013, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 309, 330, 3.9, 8.6, 15.3, 64, 1013.8, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 278, 348, 5.5, 13, 15.8, 60, 1015, 0, 0),
	('CIUDADMANTE', '2019-03-18', '2019-03-18', 164, 12, 7.1, 13.3, 16.2, 58, 1015.4, 0, 0),
	('CIUDADMANTE', '2019-03-17', '2019-03-18', 251, 348, 5.8, 13.3, 16.4, 59, 1015.6, 0, 0),
	('CIUDADMANTE', '2019-03-17', '2019-03-18', 159, 353, 8.6, 22, 16.5, 58, 1015.4, 0, 0),
	('CIUDADMANTE', '2019-03-17', '2019-03-18', 144, 346, 8.4, 20.2, 16.8, 57, 1014.9, 0, 0),
	('CIUDADMANTE', '2019-03-17', '2019-03-18', 173, 10, 10.9, 23.8, 17.2, 55, 1014.1, 0, 0),
	('CIUDADMANTE', '2019-03-17', '2019-03-18', 170, 22, 10.1, 27.4, 17.9, 45, 1013.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 105, 124, 6.3, 16.6, 28.5, 75, 1003.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 111, 117, 9.9, 26.6, 28.9, 70, 1002.1, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 120, 111, 13.8, 30.2, 30.3, 60, 1000.3, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 89, 12.7, 27, 32.9, 49, 999.3, 0, 14),
	('CIUDADMANTE', '2019-06-15', '2019-06-16', 91, 97, 8.4, 20.2, 35.5, 39, 998.5, 0, 176),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 96, 95, 9.4, 21.6, 36.7, 34, 998.7, 0, 395),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 108, 118, 10.4, 26.6, 36.6, 38, 999.3, 0, 607),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 97, 85, 8.6, 18.7, 36.8, 39, 1000.1, 0, 787),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 77, 126, 6.7, 22, 36.1, 41, 1001, 0, 927),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 123, 149, 8, 18.4, 35.1, 43, 1001.9, 0, 1009),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 113, 107, 6.9, 19.4, 34.7, 46, 1003, 0, 1016),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 106, 102, 10, 19.1, 33.6, 48, 1004, 0, 954),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 150, 178, 8, 16.2, 32.3, 54, 1004.4, 0, 824),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 163, 163, 8.3, 16.9, 31, 58, 1005.2, 0, 151),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 181, 172, 7.2, 12.2, 28.4, 73, 1005.4, 0, 429),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 205, 253, 1.9, 5, 25.9, 89, 1004.8, 0, 187),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 134, 149, 2, 4.3, 25.4, 90, 1004.2, 0, 8),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 146, 124, 3.6, 6.8, 25.6, 90, 1004.2, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 124, 117, 2.4, 6.1, 26.1, 87, 1004, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 160, 145, 4.2, 9, 26.6, 85, 1004.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 103, 118, 6.5, 15.1, 27, 83, 1005, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 111, 123, 5.7, 11.5, 27, 82, 1005.6, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 116, 105, 7, 15.1, 27.3, 80, 1006.4, 0, 0),
	('CIUDADMANTE', '2019-06-15', '2019-06-15', 86, 92, 5.3, 13.3, 27.5, 79, 1006, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-17', 118, 112, 10.7, 28.1, 29.8, 71, 999.6, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-17', 113, 106, 9.5, 23.8, 31.6, 61, 998.8, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-17', 109, 102, 12.3, 27.7, 34.1, 52, 996.9, 0, 24),
	('CIUDADMANTE', '2019-06-16', '2019-06-17', 95, 103, 4.7, 15.5, 36.5, 37, 996.2, 0, 178),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 138, 25, 4.4, 10.4, 37.8, 35, 996.8, 0, 417),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 196, 110, 5.2, 10.4, 37.8, 36, 997.2, 0, 637),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 97, 75, 5, 14.4, 37.9, 36, 997.7, 0, 785),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 66, 80, 7.5, 19.1, 37, 39, 998.7, 0, 918),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 123, 132, 7.4, 17.6, 35.6, 44, 999.7, 0, 1002),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 112, 96, 6.6, 14.8, 34.7, 51, 1000.3, 0, 1009),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 109, 31, 4, 12.2, 33.5, 52, 1000.8, 0, 941),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 147, 146, 4, 14, 32, 58, 1001.3, 0, 749),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 162, 205, 2.7, 6.5, 31.4, 63, 1001.8, 0, 143),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 142, 94, 3.5, 8.6, 28.8, 76, 1002.1, 0, 418),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 109, 105, 2.5, 5, 26.6, 85, 1001.6, 0, 203),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 153, 137, 2.4, 4.7, 25.4, 91, 1001.3, 0, 9),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 256, 259, 0.9, 1.8, 25.5, 90, 1001.3, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 261, 254, 1.4, 3.2, 25.8, 89, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 264, 177, 1.5, 4.3, 26.2, 86, 1001.6, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 152, 146, 5.1, 9, 27, 84, 1002.2, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 137, 181, 3.4, 7.9, 27.4, 82, 1002.7, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 106, 90, 4.1, 8.6, 27.6, 80, 1003.4, 0, 0),
	('CIUDADMANTE', '2019-06-16', '2019-06-16', 86, 114, 4.6, 14.4, 28.1, 78, 1003.6, 0, 0);
/*!40000 ALTER TABLE `datosclimames` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.datosclimames_log
CREATE TABLE IF NOT EXISTS `datosclimames_log` (
  `IDLog` int(11) NOT NULL AUTO_INCREMENT,
  `Estacion_log` varchar(50) DEFAULT NULL,
  `Fecha_Local_log` datetime DEFAULT NULL,
  `Fecha_UTC_log` datetime DEFAULT NULL,
  `Direccion_del_Viento_log` float DEFAULT NULL,
  `Direccion_de_Rafaga_log` float DEFAULT NULL,
  `Rapidez_de_Viento_log` float DEFAULT NULL,
  `Rapidez_de_Rafaga_log` float DEFAULT NULL,
  `Temperatura_log` float DEFAULT NULL,
  `Humedad_Relativa_log` int(11) DEFAULT NULL,
  `Presion_Atmosferica_log` float DEFAULT NULL,
  `Precipitacion_log` float DEFAULT NULL,
  `Radiacion_Solar_log` int(11) DEFAULT NULL,
  `accion` varchar(100) NOT NULL,
  `tiempo_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IDLog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.datosclimames_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `datosclimames_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosclimames_log` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.EditarCalendario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCalendario`(
IN `nombre_actividad` VARCHAR(300),
IN `descripcion_act` VARCHAR(300),
IN `fecha_inicio` DATE,
IN `fecha_fin` DATE,
IN `id_calendario` INT
)
UPDATE calendarioact SET Nombre=nombre_actividad,Descripcion=descripcion_act,FechaInicio=fecha_inicio,FechaFin=fecha_fin WHERE idCalendario = id_calendario//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EditarCosechas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCosechas`(
IN `_IDCultivo` INT,
IN `_Estado` VARCHAR(500)
)
UPDATE cosechas SET Estado = _Estado WHERE IDCultivo = _IDCultivo//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EditarCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCultivos`(
IN `_IDcultivo` INT,
IN `_Estado` VARCHAR(500)
)
UPDATE cultivos SET Estado = _Estado WHERE IDcultivo = _IDcultivo//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EditarUsuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarUsuario`(
	IN `_Idusuario` INT,
	IN `_Nombre` VARCHAR(100),
	IN `_Apellidos` VARCHAR(100),
	IN `_Contra` VARCHAR(100),
	IN `_Cargo` VARCHAR(100),
	IN `_Nickname` VARCHAR(100),
	IN `_Correo` VARCHAR(100) 
)
BEGIN
	UPDATE usuario
    SET Nombre = _nombre,
        Apellidos = _apellidos,
        Contra = _contra,
        Cargo = _cargo,
        Correo = _correo,
        NickName = _Nickname
    WHERE IDusuario = _Idusuario;
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EliminarCalendario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCalendario`(
IN `id_calendario` INT
)
DELETE FROM calendarioact WHERE idCalendario = id_calendario//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EliminarCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCultivos`(
IN `_IDCultivo` INT)
DELETE FROM cultivos WHERE IDCultivo = _IDCultivo//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.EliminarUsuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarUsuario`(
	IN `_nickname` VARCHAR(50)

)
    COMMENT 'Elimina la informacion completa de algun usuario.'
BEGIN
	DELETE FROM usuario 
	WHERE usuario.NickName = _nickname;
END//
DELIMITER ;

-- Volcando estructura para tabla saspre.gastos
CREATE TABLE IF NOT EXISTS `gastos` (
  `IDgastos` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCompra` date DEFAULT NULL,
  `descripcionCompra` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDgastos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.gastos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.grafico
CREATE TABLE IF NOT EXISTS `grafico` (
  `IDgrafico` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTerreno` varchar(20) DEFAULT NULL,
  `nombreCultivo` varchar(50) DEFAULT NULL,
  `fechaPlantado` date DEFAULT NULL,
  `fechaTentativa` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `locacion` varchar(100) DEFAULT NULL,
  `nombreImagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDgrafico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.grafico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grafico` DISABLE KEYS */;
/*!40000 ALTER TABLE `grafico` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.infoestacion
CREATE TABLE IF NOT EXISTS `infoestacion` (
  `IDinfo` int(11) NOT NULL AUTO_INCREMENT,
  `FechaLocal` varchar(100) NOT NULL,
  `DireccionViento` varchar(50) NOT NULL,
  `DireccionRafaga` varchar(100) NOT NULL,
  `RapidezRafaga` varchar(100) NOT NULL,
  `Temperatura` varchar(50) NOT NULL,
  `Presion` varchar(200) NOT NULL,
  `Precipitacion` varchar(50) NOT NULL,
  `Radiacion` varchar(250) NOT NULL,
  `Organismo` varchar(250) NOT NULL,
  PRIMARY KEY (`IDinfo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.infoestacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `infoestacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoestacion` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.IniciarSesion
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `IniciarSesion`(
	IN `_nickname` VARCHAR(100),
	IN `_contra` VARCHAR(100)

)
SELECT * FROM usuario WHERE nickname = _nickname and binary contra = _contra//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.InsertarDatosClimaMes
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarDatosClimaMes`(
IN `_Estacion` VARCHAR(50),
IN `_Fecha_Local` DATE,
IN `_Fecha_UTC` DATE,
IN `_Direccion_del_Viento` FLOAT, 
IN `_Direccion_de_Rafaga` FLOAT,
IN `_Rapidez_de_Viento` FLOAT,
IN `_Rapidez_de_Rafaga` FLOAT,
IN `_Temperatura` FLOAT,
IN `_Humedad_Relativa` INT,
IN `_Presion_Atmosferica` FLOAT,
IN `_Precipitacion` FLOAT,
IN `_Radiacion_Solar` INT)
INSERT INTO DatosClimaMes(Estacion,Fecha_Local,Fecha_UTC,
Direccion_del_Viento, 
Direccion_de_Rafaga,Rapidez_de_Viento,Rapidez_de_Rafaga,
Temperatura,Humedad_Relativa,Presion_Atmosferica,Precipitacion,
Radiacion_Solar)
VALUES(
_Estacion,_Fecha_Local,_Fecha_UTC,_Direccion_del_Viento, 
_Direccion_de_Rafaga,_Rapidez_de_Viento,_Rapidez_de_Rafaga,
_Temperatura,_Humedad_Relativa,_Presion_Atmosferica,_Precipitacion,
_Radiacion_Solar)//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.mostrarAlarmaClima
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarAlarmaClima`()
BEGIN
	SELECT Fecha_Local,Temperatura FROM datosClimaMes ORDER BY Fecha_Local DESC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCalendario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCalendario`()
SELECT * FROM calendarioact//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCalendarioUsuarios
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCalendarioUsuarios`(
IN `nombre_usuario` VARCHAR(100)
)
SELECT * FROM calendarioact WHERE Usuario_Calendario= nombre_usuario//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCosechas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCosechas`()
SELECT * FROM cosechas//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCosechasUsuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCosechasUsuario`(
IN `_Usuario_Cultivo` VARCHAR(100))
SELECT * FROM cosechas WHERE Usuario_Cultivo = _Usuario_Cultivo//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCultivos`()
SELECT * FROM cultivos//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarCultivosUsuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarCultivosUsuario`(
IN `_Usuario_Cultivo` VARCHAR(100)
)
SELECT * from Cultivos WHERE Usuario_Cultivo = _Usuario_Cultivo//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarDatosClimaMes
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarDatosClimaMes`()
SELECT * FROM datosclimames ORDER BY Fecha_Local DESC//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarFertilizantes
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarFertilizantes`()
BEGIN
		select
		controlplaga.Id as Id,
		controlplaga.Plaga as Plaga,
		controlplaga.Cultivo as Cultivo,
		controlplaga.Insecticida as Insecticida,
		controlplaga.Dosis as Dosis,
		controlplaga.NombreComercial AS "Nombre Comercial",
		controlplaga.DosisComercial AS "Dosis Comercial",
		controlplaga.EpocaControl AS "Epoca de Control"
		from controlplaga;
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.mostrarNombreAlarmas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarNombreAlarmas`()
BEGIN
	SELECT nombreAlarma FROM AlarmasCultivos;
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.mostrarNombreCultivos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarNombreCultivos`()
BEGIN
	SELECT NombreComun FROM planta;
END//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarPlaga
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarPlaga`()
SELECT * FROM plaga//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarPlagaFecha
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarPlagaFecha`(
IN `_FechaEncontrada` DATE
)
SELECT * FROM plaga WHERE FechaEncontrar = _FechaEncontrada//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.MostrarUsuarios
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarUsuarios`()
    COMMENT 'Muestra todos los usuario existentes en la BD.'
BEGIN
	SELECT * FROM Usuario order by IDUsuario asc;
END//
DELIMITER ;

-- Volcando estructura para tabla saspre.movimientos
CREATE TABLE IF NOT EXISTS `movimientos` (
  `IDmovimientos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  PRIMARY KEY (`IDmovimientos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.movimientos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.ObtenerContra
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerContra`(
	IN `_Correo` VARCHAR(100)

)
    COMMENT 'Obtiene la contraseña del usuario especificado'
BEGIN
	SELECT Contra FROM usuario WHERE usuario.Correo = _Correo LIMIT 1;
END//
DELIMITER ;

-- Volcando estructura para tabla saspre.parasitos
CREATE TABLE IF NOT EXISTS `parasitos` (
  `IDparasito` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Dosis` varchar(100) NOT NULL,
  `NomComercial` varchar(100) NOT NULL,
  `DosisComercial` varchar(100) NOT NULL,
  `Control` varchar(200) NOT NULL,
  `Tipo` varchar(100) NOT NULL,
  `Clasificacion` varchar(100) NOT NULL,
  `Forma` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Textura` varchar(100) NOT NULL,
  PRIMARY KEY (`IDparasito`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.parasitos: ~82 rows (aproximadamente)
/*!40000 ALTER TABLE `parasitos` DISABLE KEYS */;
REPLACE INTO `parasitos` (`IDparasito`, `Nombre`, `Dosis`, `NomComercial`, `DosisComercial`, `Control`, `Tipo`, `Clasificacion`, `Forma`, `Color`, `Textura`) VALUES
	(1, 'Roya', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(2, 'Gloeocercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(3, 'Cercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(4, 'Helmintosporium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(5, 'Colletotrichum', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(6, 'Fusarium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(7, 'Mildiu Velloso', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(8, 'Ergot (Sphacelia claviceps)', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(9, 'Mosca pinta Aeneolamia postica', 'Ninguno', 'Thiodan Thionex, etc.', '1 - 15 L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(10, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.0L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(11, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.1.5L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(12, 'Roya', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(13, 'Gloeocercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(14, 'Cercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(15, 'Helmintosporium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(16, 'Colletotrichum', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(17, 'Fusarium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(18, 'Mildiu Velloso', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(19, 'Ergot (Sphacelia claviceps)', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(20, 'Mosca pinta Aeneolamia postica', 'Ninguno', 'Thiodan Thionex, etc.', '1 - 15 L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(21, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.0L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(22, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.1.5L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(23, 'Roya', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(24, 'Gloeocercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(25, 'Cercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(26, 'Helmintosporium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(27, 'Colletotrichum', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(28, 'Fusarium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(29, 'Mildiu Velloso', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(30, 'Ergot (Sphacelia claviceps)', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(31, 'Mosca pinta Aeneolamia postica', 'Ninguno', 'Thiodan Thionex, etc.', '1 - 15 L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(32, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.0L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(33, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.1.5L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(34, 'Ninguno', 'Ninguno', 'Knocker-480 Lorsban 480 EM. etc', '20 kg/ha arroz micosado', 'En las primeras horas de la mañana.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(35, 'Gusano barrenador', 'Ninguno', 'Trichograma spp.', '3 pulgadas/mes ó 12 a 15 mil huevecillos/ha', 'Mensualmente', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(36, 'Rata', 'Ninguno', 'Cebos envenenados (Warfarina Sulfato de Talio)', '2 kg/ha', 'Habiendo incidencia generalmente en invierno (Ene.-Feb.).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(37, 'Ninguno', 'Ninguno', 'Klerat', '2 kg/ha', 'Al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(38, 'Chinche de encaje', 'Ninguno', 'Malation 1000 Lucation, etc.', '1L/ha', 'Aplicar al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(39, 'Roya', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(40, 'Gloeocercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(41, 'Cercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(42, 'Helmintosporium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(43, 'Colletotrichum', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(44, 'Fusarium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(45, 'Mildiu Velloso', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(46, 'Ergot (Sphacelia claviceps)', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(47, 'Mosca pinta Aeneolamia postica', 'Ninguno', 'Thiodan Thionex, etc.', '1 - 15 L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(48, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.0L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(49, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.1.5L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(50, 'Ninguno', 'Ninguno', 'Knocker-480 Lorsban 480 EM. etc', '20 kg/ha arroz micosado', 'En las primeras horas de la mañana.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(51, 'Gusano barrenador', 'Ninguno', 'Trichograma spp.', '3 pulgadas/mes ó 12 a 15 mil huevecillos/ha', 'Mensualmente', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(52, 'Rata', 'Ninguno', 'Cebos envenenados (Warfarina Sulfato de Talio)', '2 kg/ha', 'Habiendo incidencia generalmente en invierno (Ene.-Feb.).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(53, 'Ninguno', 'Ninguno', 'Klerat', '2 kg/ha', 'Al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(54, 'Chinche de encaje', 'Ninguno', 'Malation 1000 Lucation, etc.', '1L/ha', 'Aplicar al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(55, 'Gusano terciopelo', 'Ninguno', 'Rimon', '0.1 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(56, 'Chinche verde', 'Ninguno', 'Regent 200 SC', '0.015 L', 'En llenado y madurez de grano cuando se tengan dos adultos por metro lineal. ', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(57, 'Burrita o botijón ', 'Ninguno', 'Arrivo 200 CE ', '0.4 L', 'Sobre los manchones donde se presenta este insecto.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(58, 'Diabróticas', 'Ninguno', 'Arrivo 200 CE', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(59, 'Mosca blanca', 'Ninguno', 'Rimon', '0.1 L', 'Cuando se tengan tres adultos por planta', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(60, 'Langosta voladora', 'Ninguno', 'Regent 200 SC ', '0.01 L Aplicado en mezcla con melaza al 2% y en franjas en el 25% de la superficie', 'Cuando se encuentren cinco ninfas por metro o un adulto por metro', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(61, 'Roya', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(62, 'Gloeocercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(63, 'Cercospora', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(64, 'Helmintosporium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(65, 'Colletotrichum', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(66, 'Fusarium', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(67, 'Mildiu Velloso', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(68, 'Ergot (Sphacelia claviceps)', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(69, 'Mosca pinta Aeneolamia postica', 'Ninguno', 'Thiodan Thionex, etc.', '1 - 15 L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(70, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.0L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(71, 'Ninguno', 'Ninguno', 'Malation 1000 Lucation, etc.', '1.1.5L', 'Durante la época de lluvias primaveraverano (marzo a agosto).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(72, 'Ninguno', 'Ninguno', 'Knocker-480 Lorsban 480 EM. etc', '20 kg/ha arroz micosado', 'En las primeras horas de la mañana.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(73, 'Gusano barrenador', 'Ninguno', 'Trichograma spp.', '3 pulgadas/mes ó 12 a 15 mil huevecillos/ha', 'Mensualmente', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(74, 'Rata', 'Ninguno', 'Cebos envenenados (Warfarina Sulfato de Talio)', '2 kg/ha', 'Habiendo incidencia generalmente en invierno (Ene.-Feb.).', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(75, 'Ninguno', 'Ninguno', 'Klerat', '2 kg/ha', 'Al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(76, 'Chinche de encaje', 'Ninguno', 'Malation 1000 Lucation, etc.', '1L/ha', 'Aplicar al detectar la presencia de la plaga.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(77, 'Gusano terciopelo', 'Ninguno', 'Rimon', '0.1 L', 'De floración a llenado de grano cuando se tengan de 10 a 20 larvas mayores a 1.5 cm y de un 15 a 30% de defoliación.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(78, 'Chinche verde', 'Ninguno', 'Regent 200 SC', '0.015 L', 'En llenado y madurez de grano cuando se tengan dos adultos por metro lineal. ', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(79, 'Burrita o botijón ', 'Ninguno', 'Arrivo 200 CE ', '0.4 L', 'Sobre los manchones donde se presenta este insecto.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(80, 'Diabróticas', 'Ninguno', 'Arrivo 200 CE', '0.4 L', 'Durante todo el ciclo del cultivo, cuando se tengan poblaciones altas que ocasionen defoliaciones fuertes.', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(81, 'Mosca blanca', 'Ninguno', 'Rimon', '0.1 L', 'Cuando se tengan tres adultos por planta', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno'),
	(82, 'Langosta voladora', 'Ninguno', 'Regent 200 SC ', '0.01 L Aplicado en mezcla con melaza al 2% y en franjas en el 25% de la superficie', 'Cuando se encuentren cinco ninfas por metro o un adulto por metro', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno', 'Ninguno');
/*!40000 ALTER TABLE `parasitos` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.plaga
CREATE TABLE IF NOT EXISTS `plaga` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cultivo` varchar(100) DEFAULT NULL,
  `Plaga` varchar(500) DEFAULT NULL,
  `FechaEncontrada` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.plaga: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `plaga` DISABLE KEYS */;
REPLACE INTO `plaga` (`ID`, `Cultivo`, `Plaga`, `FechaEncontrada`) VALUES
	(1, '22', 'Gusano cogollero', '2019-12-16'),
	(2, '22', ' Gusano elotero', '2019-12-16'),
	(3, '22', ' 30% gallina ciega', '2019-12-16'),
	(4, 'Maíz', 'Gusano cogollero', '2019-06-16'),
	(5, 'Maíz', ' Gusano elotero', '2019-06-16'),
	(6, 'Maíz', ' 30% gallina ciega', '2019-06-16'),
	(7, 'Maíz', 'Gusano cogollero', '2019-06-16'),
	(8, 'Maíz', 'Gusano elotero', '2019-06-16'),
	(9, 'Maíz', '30% gallina ciega', '2019-06-16'),
	(10, 'Maíz', 'Gusano cogollero', '2019-06-17'),
	(11, 'Maíz', 'Gusano elotero', '2019-06-17'),
	(12, 'Maíz', '30% gallina ciega', '2019-06-17'),
	(13, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(14, 'Caña', 'Rata', '2019-06-17'),
	(15, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(16, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(17, 'Caña', 'Rata', '2019-06-17'),
	(18, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(19, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(20, 'Caña', 'Rata', '2019-06-17'),
	(21, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(22, 'Sorgo', 'Presencia Gusano de la Panoja', '2019-06-17'),
	(23, 'Maíz', 'Gusano cogollero', '2019-06-17'),
	(24, 'Maíz', 'Gusano elotero', '2019-06-17'),
	(25, 'Maíz', '30% gallina ciega', '2019-06-17'),
	(26, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(27, 'Caña', 'Rata', '2019-06-17'),
	(28, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(29, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(30, 'Caña', 'Rata', '2019-06-17'),
	(31, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(32, 'Caña', 'Gusano Barrenador', '2019-06-17'),
	(33, 'Caña', 'Rata', '2019-06-17'),
	(34, 'Caña', 'Piojo harinoso de la vid', '2019-06-17'),
	(35, 'Sorgo', 'Presencia Gusano de la Panoja', '2019-06-17');
/*!40000 ALTER TABLE `plaga` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.planta
CREATE TABLE IF NOT EXISTS `planta` (
  `IDplanta` int(11) NOT NULL AUTO_INCREMENT,
  `NombreComun` varchar(100) NOT NULL,
  `NombreCientifico` varchar(100) NOT NULL,
  `TipoRiego` varchar(100) NOT NULL,
  PRIMARY KEY (`IDplanta`),
  UNIQUE KEY `NombreComun_NombreCientifico` (`NombreComun`,`NombreCientifico`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.planta: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `planta` DISABLE KEYS */;
REPLACE INTO `planta` (`IDplanta`, `NombreComun`, `NombreCientifico`, `TipoRiego`) VALUES
	(1, 'Maíz', 'Zea mays', 'Por goteo'),
	(2, 'Sorgo', 'Sorghum', 'Por goteo'),
	(3, 'Soya', 'Glycine max', 'Por goteo'),
	(4, 'Caña', 'Saccharum officinarum', 'Por surco'),
	(5, 'Cebolla', 'Allium cepa', 'Por goteo');
/*!40000 ALTER TABLE `planta` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.problematica
CREATE TABLE IF NOT EXISTS `problematica` (
  `IDproblematica` int(11) NOT NULL AUTO_INCREMENT,
  `Situacion` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DescripcionProblematica` varchar(300) NOT NULL,
  `Causa` varchar(300) NOT NULL,
  `Sintomas` varchar(350) NOT NULL,
  PRIMARY KEY (`IDproblematica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.problematica: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `problematica` DISABLE KEYS */;
/*!40000 ALTER TABLE `problematica` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.RegistrarUsuario
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

-- Volcando estructura para tabla saspre.saldo
CREATE TABLE IF NOT EXISTS `saldo` (
  `IDsaldo` int(11) NOT NULL AUTO_INCREMENT,
  `ingresoMensual` double DEFAULT NULL,
  `gastoPrevisto` double DEFAULT NULL,
  PRIMARY KEY (`IDsaldo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.saldo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `saldo` DISABLE KEYS */;
/*!40000 ALTER TABLE `saldo` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `IDUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Contra` varchar(100) NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `Nickname` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  PRIMARY KEY (`Nickname`),
  UNIQUE KEY `Correo` (`Correo`,`Nickname`),
  UNIQUE KEY `IDUsuario` (`IDUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
REPLACE INTO `usuario` (`IDUsuario`, `Nombre`, `Apellidos`, `Contra`, `Cargo`, `Nickname`, `Correo`) VALUES
	(28, 'a', 'a', 'a', 'Admin', 'a', 'a@hotmail.com'),
	(1, 'Emiliano', 'Salatino Fernández', 'admin', 'Admin', 'Emiliano', 'Emiliano@hotmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.usuario_log
CREATE TABLE IF NOT EXISTS `usuario_log` (
  `IDLog` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_log` varchar(100) NOT NULL,
  `Apellidos_log` varchar(100) NOT NULL,
  `Contra_log` varchar(100) NOT NULL,
  `Cargo_log` varchar(100) NOT NULL,
  `Nickname_log` varchar(100) NOT NULL,
  `Correo_log` varchar(100) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `tiempo_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`IDLog`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.usuario_log: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario_log` DISABLE KEYS */;
REPLACE INTO `usuario_log` (`IDLog`, `Nombre_log`, `Apellidos_log`, `Contra_log`, `Cargo_log`, `Nickname_log`, `Correo_log`, `accion`, `tiempo_log`) VALUES
	(11, 'a', 'a', 'a', 'a', 'a', 'a', 'delete', '2019-06-18 20:24:59'),
	(12, 'a', 'a', 'a', 'Admin', 'a', 'a@hotmail.com', 'delete', '2019-06-18 20:26:32'),
	(13, 'a', 'a', 'a', 'Admin', 'a', 'a@hotmail.com', 'insert', '2019-06-18 20:26:29'),
	(14, 'b', 'b', 'b', 'Admin', 'b', 'b@hotmail.com', 'insert', '2019-06-18 20:26:53');
/*!40000 ALTER TABLE `usuario_log` ENABLE KEYS */;

-- Volcando estructura para tabla saspre.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `IDventas` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDventas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla saspre.ventas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;

-- Volcando estructura para procedimiento saspre.verAlmacen
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verAlmacen`()
begin
    select * from almacen;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verAlmacenUsuario
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verAlmacenUsuario`(
IN `_usuarioAlmacen` VARCHAR(100)
)
SELECT * FROM Almacen WHERE usuarioAlmacen = _usuarioAlmacen//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verBitacoraAlertas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verBitacoraAlertas`()
begin
    select * from bitacoraAlertas;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verCalendarioAct
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verCalendarioAct`()
begin
    select * from calendarioAct;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verGastos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verGastos`()
begin
    select * from gastos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verGrafico
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verGrafico`()
begin
    select * from grafico;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verMovimientos
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verMovimientos`()
begin
    select * from movimientos;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verSaldo
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verSaldo`()
begin
    select * from saldo;
end//
DELIMITER ;

-- Volcando estructura para procedimiento saspre.verVentas
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `verVentas`()
begin
    select * from ventas;
end//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
