CREATE DATABASE Hackaton2018;

USE Hackaton2018;

CREATE TABLE Administrador(

	idAdministrador INTEGER (11) NOT NULL,
	Usuario VARCHAR (30) NOT NULL,
	Contraseña VARCHAR (60) NOT NULL,
	PRIMARY KEY(idAdministrador));


CREATE TABLE Departamento(

	idDepartamento INTEGER (11) NOT NULL,
	NombreDepartamento VARCHAR(150) NOT NULL,
	PRIMARY KEY(idDepartamento));



CREATE TABLE Ciudad(

	idCiudad INTEGER (11) NOT NULL,
	NombreCiudad VARCHAR (30) NOT NULL,
	idDepartamento integer (30) NOT NULL,
	PRIMARY KEY(idCiudad),
	FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento));

CREATE TABLE Direccion(

	idDireccion INTEGER (11) NOT NULL,
	DetalleDireccion VARCHAR (300) NOT NULL,
	idCiudad INTEGER (30) NOT NULL,
	latitud FLOAT (30) NOT NULL,
	longitud FLOAT (30) NOT NULL,
	PRIMARY KEY(idDireccion),
	FOREIGN KEY(idCiudad) REFERENCES Ciudad(idCiudad));


CREATE TABLE Caja(

	idCaja INTEGER (11) NOT NULL,
	DetalleCaja VARCHAR (300) NOT NULL,
	idDireccion INTEGER (11) NOT NULL,
	PRIMARY KEY(idCaja),
	FOREIGN KEY (idDireccion) REFERENCES direccion(idDireccion));

CREATE TABLE DirCaja(

	idDircaja INTEGER (11) NOT NULL,
	idCaja INTEGER (11) NOT NULL,
	idDireccion INTEGER (30) NOT NULL,
	PRIMARY KEY(idDircaja),
	FOREIGN KEY (idCaja) REFERENCES Caja(idCaja),
	FOREIGN KEY (idDireccion) REFERENCES direccion(idDireccion));

CREATE TABLE Usuario(

	idUsuario INTEGER (11) NOT NULL,
	Nombre VARCHAR (30) NOT NULL,
	Cedula INTEGER NOT NULL,
	idDircaja INTEGER (11) NOT NULL,
	PRIMARY KEY(idUsuario),
	FOREIGN KEY (idDircaja) REFERENCES DirCaja(idDircaja));

---------------------------------------------------------------

INSERT INTO Administrador VALUES
(1, "mauro",md5("123mao"));

insert into  Departamento values 
(1, 'Norte de Santander'),
(2, 'Tolima'),
(3, 'Bolivar'),
(4, 'Meta'),
(5, 'Valle del cauca');

insert into Ciudad values
(1, 'Villa del Rosario',1),
(2, 'Ibague', 2),
(3, 'Cartagena',3),
(4, 'Cucuta',1),
(5, 'Villavicencio',4),
(6, 'Santiago de cali',5);

insert into Direccion (idDireccion, DetalleDireccion, idCiudad, latitud, longitud) values 
(1, 'Carrera 23a #29-61', 3, '0', '0'),
(2, 'Carrera 29 #24-08', 3, '0', '0'),
(3, 'Carrera 29 # 25-13', 3, '0', '0'),
(4, 'Carrera 24 # 27a-72', 3, '0', '0'),
(5, 'Carrera 29#23a-2', 3, '0', '0'),
(6, 'Carrera 24#26-121', 3, '0', '0'),
(7, 'Carrera 28#21-248', 3, '0', '0'),
(8, 'Calle 58 #6-43', 2, '0', '0'),
(9, 'Carrera 6 53-54 torre empresarial', 2, '0', '0'),
(10, 'Carrera 6 53-54 torre empresarial', 2, '0', '0'),
(11, 'Cra. 6 #56-9', 2, '0', '0'),
(12, 'Cl. 60 #5-65', 2, '0', '0'),
(13, 'Calle 60 # 7A-13', 2, '0', '0'),
(14, 'Calle 60 # 7-96', 2, '0', '0'),
(15, 'Calle 42 #11-04', 2, '0', '0'),
(16, 'Guabinal #44-43, Ibagué, Tolima', 2, '0', '0'),
(17, 'Carrera 10A #42-47', 2, '0', '0'),
(18, 'Cl. 44 #8a-1', 2, '0', '0'),
(19, 'Cra. 9 #46-1', 2, '0', '0'),
(20, 'Cl. 44 #8a-2', 2, '0', '0'),
(21, 'Cra. 9 #42-44', 2, '0', '0'),
(22, 'Cra. 8 #44-1', 2, '0', '0'),
(23, 'Avenida 46 No 10a-48', 2, '0', '0'),
(24, 'Cl. 47 #7c-16', 2, '0', '0'),
(25, 'Calle 40 No. 8-62', 1, '0', '0'),
(26, 'Cra 68 # 24p Local 2', 3, '0', '0'),
(27, 'Cra. 67 #31-12', 3, '0', '0'),
(28, 'Dg. 31 #71e-145', 3, '0', '0'),
(29, 'Cra. 69 #31A-09', 3, '0', '0'),
(30, 'Transversal 70, 31A-20', 3, '0', '0'),
(31, 'Dg. 31 #71e103', 3, '0', '0'),
(32, 'Dg. 31 #54-1', 3, '0', '0'),
(33, 'Dg. 31 #67-22', 3, '0', '0'),
(34, 'Cl. 30 #66-1', 3, '0', '0'),
(35, 'Tv. 54 #30 - 65', 3, '0', '0'),
(36, 'Tv. 54 #31E-41', 3, '0', '0'),
(37, 'Tv. 73 #31a-85', 3, '0', '0'),
(38, 'Calle 41 No.40-104', 2, '0', '0'),
(39, 'Calle 40 4f-30', 2, '0', '0'),
(40, 'Cl. 42 #4e97', 2, '0', '0'),
(41, '#41 - 69, Av. Ferrocarril', 2, '0', '0'),
(42, 'Av. Ferrocarril #40-46', 2, '0', '0'),
(43, 'Avenida Ferrocarril #40-24', 2, '0', '0'),
(44, 'Cra. 4e #40-90', 2, '0', '0'),
(45, 'Cra. 5 #41-98', 2, '0', '0'),
(46, 'Cl. 37 #4c156', 2, '0', '0'),
(47, 'Carrera 4E#42-07', 2, '0', '0'),

(48, 'Calle 29#24-39', 2, '0', '0'),
(49, 'Calle 58 #6-43', 3, '0', '0'),
(50, 'Carrera 9#44-43', 3, '0', '0'),
(51, 'Calle 31#69-75', 2, '0', '0'),
(52, 'Cra. 4e Bis #40-98', 3, '0', '0');




insert into Caja (idCaja, DetalleCaja, idDireccion) values 
(1, 'Caja Cartagena 1', 48),
(2, 'Caja Ibague 1', 49),
(3, 'Caja Ibague 2', 50),
(4, 'Caja Cartagena 2', 51),
(5, 'Caja Ibague 3', 52);

insert into DirCaja (idDircaja, idCaja, idDireccion) values 
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 8),
(9, 2, 7),
(10, 2, 7),
(11, 2, 7),
(12, 2, 7),
(13, 2, 7),
(14, 2, 7),
(15, 2, 7),
(16, 2, 7),
(17, 2, 7),
(18, 2, 7),
(19, 2, 7),
(20, 2, 7),
(21, 2, 7),
(22, 2, 7),
(23, 2, 7),
(24, 2, 7),
(25, 3, 7),
(26, 3, 7),
(27, 3, 7),
(28, 3, 7),
(29, 3, 7),
(30, 3, 7),
(31, 3, 7),
(32, 3, 7),
(33, 3, 7),
(34, 3, 7),
(35, 3, 7),
(36, 3, 7),
(37, 3, 7),
(38, 2, 7),
(39, 2, 7),
(40, 2, 7),
(41, 2, 7),
(42, 2, 7),
(43, 2, 7),
(44, 2, 7),
(45, 2, 7),
(46, 2, 7),
(47, 2, 7);




insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (1, 'Gaylor', 87466610, 1);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (2, 'Stillmann', 26700665, 2);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (3, 'Janek', 70733172, 3);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (4, 'Oberon', 92780849, 4);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (5, 'Ariela', 20064927, 5);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (6, 'Georgina', 53246784, 6);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (7, 'Grover', 26975185, 7);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (8, 'Bidget', 41269588, 8);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (9, 'Kaleb', 43280000, 9);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (10, 'Lonnie', 41243150, 10);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (11, 'Fedora', 25684723, 11);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (12, 'Dew', 52803788, 12);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (13, 'Gabriel', 35595509, 13);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (14, 'Lanny', 27788003, 14);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (15, 'Dallas', 61678874, 15);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (16, 'Ashly', 27332208, 16);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (17, 'Pail', 51877411, 17);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (18, 'Rory', 80182200, 18);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (19, 'Burch', 45343914, 19);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (20, 'Jannelle', 38451885, 20);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (21, 'Dinny', 75406361, 21);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (22, 'Leann', 11850899, 22);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (23, 'Luce', 36827021, 23);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (24, 'Paulita', 62285752, 24);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (25, 'Sawyere', 76419338, 25);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (26, 'Burr', 71333057, 26);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (27, 'Karola', 72449459, 27);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (28, 'Beth', 56482599, 28);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (29, 'Alma', 27797468, 29);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (30, 'Garold', 17358325, 30);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (31, 'Yelena', 60512160, 31);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (32, 'Johnny', 24788703, 32);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (33, 'Chelsae', 91367002, 33);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (34, 'Cassius', 88880488, 34);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (35, 'Teriann', 36974201, 35);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (36, 'Sela', 33475019, 36);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (37, 'Merridie', 56803677, 37);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (38, 'Frederique', 34649459, 38);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (39, 'Karlene', 29892010, 39);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (40, 'Peirce', 95500163, 40);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (41, 'Maureene', 24476986, 41);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (42, 'Moselle', 32203272, 42);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (43, 'Lotte', 54378561, 43);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (44, 'Charlean', 19132612, 44);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (45, 'Emyle', 17900112, 45);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (46, 'Emmi', 87649046, 46);
insert into Usuario (idUsuario, Nombre, Cedula, idDircaja) values (47, 'Trix', 94264903, 47);

-----------------------------------------------
SELECT DetalleDireccion,Ciudad.NombreCiudad 
from Usuario
inner join DirCaja on DirCaja.idDircaja = Usuario.idDircaja
inner join Caja on Caja.idCaja = DirCaja.idCaja
inner join Direccion on Caja.idDireccion = Direccion.idDireccion
inner join Ciudad on Direccion.idCiudad = Ciudad.idCiudad
where Usuario.cedula = ?;