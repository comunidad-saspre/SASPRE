create database prueba;
use prueba;
drop database prueba;

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
    Contraseña varchar(50),
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
    Contraseña varchar(20) not null,
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