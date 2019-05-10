create database Saspre;

use Saspre;

 /*genero la tabla principal*/
create table login (
	pk_idlogin int not null auto_increment,
    Nick varchar(50),
    constraint pk_idlogin primary key(pk_idlogin)
)Engine = InnoDB;

/*genero las principales tablas padre*/
create table planta (
	pk_idplanta int not null auto_increment,
    fk_planta_idlogin int not null,
    NombreComun varchar(100) not null,
    NombreCientifico varchar(100) not null,
    TipoRiego varchar(100) not null,
    constraint pk_idplanta primary key(pk_idplanta),
    constraint fk_planta_idlogin
		foreign key(fk_planta_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

create table usuario (
	pk_idusuario int not null auto_increment,
    fk_usuario_idlogin int not null,
	Usuario varchar(50),
    Contrase�a varchar(50),
    constraint pk_idusuario primary key(pk_idusuario),
    constraint fk_usuario_idlogin
		foreign key(fk_usuario_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

create table agroinsumos (
	pk_idagroinsumo int not null auto_increment,
    fk_agroinsumos_idplanta int not null,
    fk_agroinsumos_idlogin int not null,
    Nombre varchar(50),
    Marca varchar(50),
    CantUso varchar(50),
    Precio varchar(5),
    constraint pk_idagroinsumo primary key(pk_idagroinsumo),
    constraint fk_agroinsumos_idlogin
		foreign key(fk_agroinsumos_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

/*genero las tablas hijo de las tres padres*/
/*tablas hijo para la tabla planta*/
create table fechasembrado (
	pk_idfechasembrado int not null auto_increment,
    fk_fechasembrado_idplanta int not null,
    fk_fechasembrado_idlogin int not null,
    ClaveApi varchar(20) not null,
    FechaInicio varchar(50) not null,
    FechaListo varchar(50) not null,
    constraint pk_idfechasembrado primary key(pk_idfechasembrado),
	constraint fk_fechasembrado_idlogin
		foreign key(fk_fechasembrado_idlogin) references planta(fk_planta_idlogin)
        on delete cascade
)Engine = InnoDB;

create table bitacoracap (
	pk_idbitacora int not null auto_increment,
    fk_bitacoracap_idplanta int not null,
    fk_bitacoracap_idlogin int not null,
    DescripcionPlanta varchar(250) not null,
    DescripcionSintomas varchar(250) not null,
    constraint pk_idbitacora primary key(pk_idbitacora),
	constraint fk_bitacoracap_idlogin
		foreign key(fk_bitacoracap_idlogin) references planta(fk_planta_idlogin)
        on delete cascade
)Engine = InnoDB;

create table problematica (
	pk_idproblematica int not null auto_increment,
    fk_problematica_idplanta int not null,
    fk_problematica_idlogin int not null,
    Situacion varchar(100) not null,
    DescripcionProblematica varchar(300) not null,
    Causa varchar(300) not null,
    Sintomas varchar(350) not null,
    constraint pk_idproblematica primary key(pk_idproblematica),
	constraint fk_problematica_idlogin 
		foreign key(fk_problematica_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

/*tablas hijo para usuario*/
create table registro (
	pk_idregistro int not null auto_increment,
    fk_registro_idlogin int not null,
    Nick varchar(25) not null,
    Contrase�a varchar(20) not null,
    constraint pk_idregistro primary key(pk_idregistro),
    constraint fk_registro_idlogin 
		foreign key(fk_registro_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

/*tablas hijo para agroinsumos*/
create table insecpest (
	pk_idinsecpest int not null auto_increment,
    fk_insecpest_idagroinsumo int not null,
    fk_insecpest_idlogin int not null,
    Quimicos varchar(500) not null,
    constraint pk_idinsecpest primary key(pk_idinsecpest),
    constraint fk_insecpest_idlogin
		foreign key(fk_insecpest_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

create table fertilizantes (
	pk_idfertilizantes int not null auto_increment,
    fk_fertilizantes_idagroinsumos int not null,
    fk_fertilizantes_idlogin int not null,
    Nutrientes varchar(500) not null,
    constraint pk_idfertilizantes primary key(pk_idfertilizantes),
    constraint fk_fertilizantes_idlogin
		foreign key(fk_fertilizantes_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

create table herbicidas (
	pk_idherbicidas int not null auto_increment,
    fk_herbicidas_idagroinsumos int not null,
    fk_herbicidas_idlogin int not null,
    Hormonas varchar(500) not null,
    constraint pk_idherbicidas primary key(pk_idherbicidas),
    constraint fk_herbicidas_idlogin
		foreign key(fk_herbicidas_idlogin) references login(pk_idlogin)
        on delete cascade
)Engine = InnoDB;

/* tabla hijo para problematica */
create table plagas (
	pk_idplaga int not null auto_increment,
    fk_plaga_idproblematica int not null,
    fk_plaga_idlogin int not null,
    Nombre varchar(100) not null,
    Dosis varchar(100) not null,
    NomComercial varchar(100) not null,
    DosisComercial varchar(10) not null,
    Control varchar(100) not null,
    constraint pk_idplaga primary key(pk_idplaga),
    constraint fk_plaga_idproblematica
		foreign key(fk_plaga_idproblematica) references problematica(pk_idproblematica)
        on delete cascade
)Engine = INNODB;

use Saspre;

-- SORGO

-- login
-- no hay info
insert into login(Nick)values("diracspace");
select * from login;

-- planta
-- falta nombre cientifico
insert into planta(fk_planta_idlogin, NombreComun, NombreCientifico, TipoRiego)values
	((select pk_idlogin from login),
    "Sorgo", "Sorghum", "Riego de presembra, Primer riego de auxilio y Segundo riego de auxilio");
select * from planta;

-- usuario
-- no hay info
insert into usuario(fk_usuario_idlogin, Usuario, Contrase�a)values
	((select pk_idlogin from login),
    (select Nick from login), "roberto");
select * from usuario;

-- agroinsumos
-- falta precio
insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Clorpirifos Etil", "Lorsban 480 EM", "0.75 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Meditatión", "Supracid 40 E", "1.0 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Clorpirifos Etil", "Lorsban 480 EM", "0.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metidatión", "Supracid 40 E", "0.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Deltametrina", "Decis EC 2.5", "1.0 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Oxidemeton ", "Metasystox-R-25", "0.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metil", "Folimat 1000E", "0.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Ometoato", "Folimat 1000E", "0.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Citlalli 350", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Comando 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Confial", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Confidor 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Confol 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Dinastia 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Helmfidor", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Imi 350", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Kohinor 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Mos Blanc 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Singular", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Velfidor 350 SC", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Imidacloprid", "Picador 70 PH", "0.15 kg", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Ergofos 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Lucamet 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Metafos 600 C. E.", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Metamidofos 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Mortero 600 F", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Sagamet", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Tramofos 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Velsor 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Metamidofos", "Warrior 600", "1.5 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Spirotetramad", "Movento 150 OD", "0.3 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Sulfoxaflor", "Toretto ", "0.05 L", " ");

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values
	((select pk_idplanta from planta where pk_idplanta = 1), 
    (select pk_idlogin from login where pk_idlogin = 1), 
    "Thiametoxam", "Actara 25 WG", "0.5 kg", " ");
select * from agroinsumos;

-- fecha sembradio
 insert into fechasembrado(fk_fechasembrado_idplanta, fk_fechasembrado_idlogin, ClaveApi, FechaInicio, FechaListo) values
	((select pk_idplanta from planta where pk_idplanta = 1),
    (select pk_idlogin from login where pk_idlogin = 1), 
    "1234zsvfe", "20-Junio-2019", "20-Agosto-2019");
select * from fechasembrado;

-- bitacora cap
-- no hay info 
insert into bitacoracap(fk_bitacoracap_idplanta, fk_bitacoracap_idlogin, DescripcionPlanta, DescripcionSintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
    (select pk_idlogin from login where pk_idlogin = 1),
    " ", " ");
select * from bitacoracap; 

-- problematica
-- falta informacion
insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Gusano cogollero", " ", " ", " ");

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Gusano de la panoja", " ", " ", " ");

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Mosca midge o mosca de la panoja", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Pulgón del cogollo", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Roya", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Tizón de la hoja Exserohilum turcicum", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Leo and Sug Helminthosporium turcicum Pass", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Tizón de la panoja Fusarium moniliforme", " ", " ", " ");    

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    "Sheldan", " ", " ", " ");   
select * from problematica;

-- registro
-- no hay info
insert into registro(fk_registro_idlogin, Nick, Contrase�a) values
	((select pk_idlogin from login where pk_idlogin = 1), 
	(select Nick from login), 
	"roberto");
select * from registro;

-- insectpest
-- no hay info
insert into insecpest(fk_insecpest_idagroinsumo, fk_insecpest_idlogin, Quimicos)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    " ");
select * from insecpest;

-- fertilizantes
-- no hay info
insert into fertilizantes(fk_fertilizantes_idagroinsumos, fk_fertilizantes_idlogin, Nutrientes)values
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    " ");
select * from fertilizantes;

-- herbicidas 
-- no hay info
insert into herbicidas(fk_herbicidas_idagroinsumos, fk_herbicidas_idlogin, Hormonas) values 
	((select pk_idplanta from planta where pk_idplanta = 1),
	(select pk_idlogin from login where pk_idlogin = 1),
    " ");
select * from herbicidas;
    
    select * from herbicidas;