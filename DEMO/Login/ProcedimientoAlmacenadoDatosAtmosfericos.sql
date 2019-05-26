CREATE TABLE DatosClimaMes(Fecha_Local DATETIME,Direccion_del_Viento FLOAT, 
Direccion_de_Rafaga FLOAT,Rapidez_de_Viento FLOAT,Rapidez_de_Rafaga FLOAT,
Temperatura FLOAT,Humedad_Relativa INT,Presion_Atmosferica FLOAT,Precipitacion FLOAT,
Radiacion_Solar INT);


SELECT * FROM datosclimames



CREATE PROCEDURE `InsertarDatosClimaMes`(
IN `_Fecha_Local` DATETIME,
IN `_Direccion_del_Viento` FLOAT, 
IN `_Direccion_de_Rafaga` FLOAT,
IN `_Rapidez_de_Viento` FLOAT,
IN `_Rapidez_de_Rafaga` FLOAT,
IN `_Temperatura` FLOAT,
IN `_Humedad_Relativa` INT,
IN `_Presion_Atmosferica` FLOAT,
IN `_Precipitacion` FLOAT,
IN `_Radiacion_Solar` INT)
INSERT INTO DatosClimaMes(Fecha_Local,Direccion_del_Viento, 
Direccion_de_Rafaga,Rapidez_de_Viento,Rapidez_de_Rafaga,
Temperatura,Humedad_Relativa,Presion_Atmosferica,Precipitacion,
Radiacion_Solar)
VALUES(
_Fecha_Local,_Direccion_del_Viento, 
_Direccion_de_Rafaga,_Rapidez_de_Viento,_Rapidez_de_Rafaga,
_Temperatura,_Humedad_Relativa,_Presion_Atmosferica,_Precipitacion,
_Radiacion_Solar)


SELECT * FROM DATOSCLIMAMES


DELETE FROM datosclimames