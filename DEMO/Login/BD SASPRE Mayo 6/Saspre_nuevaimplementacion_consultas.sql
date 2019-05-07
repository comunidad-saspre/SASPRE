create database prueba;
use prueba;
drop database prueba;

/*consultas para saspre*/

insert into login(Nick) values ("diracspace");
delete from login where Nick = "diracspace";
delete from login where pk_idlogin = 1;
insert into login(Nick) values ("diracspace2");
delete from login where Nick = "diracspace2";
select * from login;


insert into planta(fk_planta_idlogin, NombreComun, NombreCientifico, TipoRiego) values((select pk_idlogin from login),"Lotus", "Lotus Culotus", "Acuático");
insert into planta(fk_planta_idlogin, NombreComun, NombreCientifico, TipoRiego) values((select pk_idlogin from login),"Lotus2", "Lotus Culotus2", "Acuático2");
insert into planta(fk_planta_idlogin, NombreComun, NombreCientifico, TipoRiego) values((select pk_idlogin from login),"Cactus", "Cactus Pitotus", "Desértico");
select * from planta;

insert into usuario(fk_usuario_idlogin, Usuario, Contraseña) values((select pk_idlogin from login), (select Nick from login), "roberto");
select * from usuario;
drop table usuario;

insert into agroinsumos(fk_agroinsumos_idplanta, fk_agroinsumos_idlogin, Nombre, Marca, CantUso, Precio) values((select pk_idplanta from planta where pk_idplanta = last_insert_id()), (select pk_idlogin from login where pk_idlogin = last_insert_id()), "Herbicidoide", "Coge Hormigas", "Un vergo", "50000");
select * from agroinsumos;
drop table agroinsumos;

insert into fechasembrado(fk_fechasembrado_idplanta, fk_fechasembrado_idlogin, ClaveApi, FechaInicio, FechaListo) values((select pk_idplanta from planta where pk_idplanta = last_insert_id()), (select pk_idlogin from login where pk_idlogin = last_insert_id()), "1234zsvfe", "19-Junio-2018", "19-Agosto-2019");
select * from fechasembrado;
drop table fechasembrado;

insert into bitacoracap(fk_bitacoracap_idplanta, fk_bitacoracap_idlogin, DescripcionPlanta, DescripcionSintomas) values((select pk_idplanta from planta where pk_idplanta = last_insert_id()), (select pk_idlogin from login where pk_idlogin = last_insert_id()), "Verde y redonda", "Tiene mucha lama");
select * from bitacoracap;
drop table bitacoracap;

insert into problematica(fk_problematica_idplanta, fk_problematica_idlogin, Situacion, DescripcionProblematica, Causa, Sintomas) values((select pk_idplanta from planta where pk_idplanta = last_insert_id()), (select pk_idlogin from login where pk_idlogin = last_insert_id()), "La planta tiene lama", "La planta se ve fea y se muere alv", "Tiene lama por mucha agua", "Puntos blancos");
select * from problematica;
drop table problematica;

insert into registro(fk_registro_idlogin, Nick, Contraseña) values((select pk_idlogin from login where pk_idlogin = last_insert_id()), (select Nick from login), "roberto");
select * from registro;

insert into insecpest(fk_insecpest_idagroinsumo, fk_insecpest_idlogin, Quimicos) values((select pk_idagroinsumo from agroinsumos), (select fk_agroinsumos_idlogin from agroinsumos where fk_agroinsumos_idlogin = last_insert_id()), "Diclofenacol");
select * from insecpest;
drop table insecpest;

insert into fertilizantes(fk_fertilizantes_idagroinsumos, fk_fertilizantes_idlogin, Nutrientes) values((select pk_idagroinsumo from agroinsumos), (select fk_agroinsumos_idlogin from agroinsumos where fk_agroinsumos_idlogin = last_insert_id()), "Hidrógeno y Potásio");
select * from fertilizantes;
drop table fertilizantes;

insert into herbicidas(fk_herbicidas_idagroinsumos, fk_herbicidas_idlogin, Hormonas) values((select pk_idagroinsumo from agroinsumos), (select fk_agroinsumos_idlogin from agroinsumos where fk_agroinsumos_idlogin = last_insert_id()), "Algo de hormonas");
select * from herbicidas;
drop table herbicidas;