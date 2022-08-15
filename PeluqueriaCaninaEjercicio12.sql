create database peluqueriaCanina;
use peluqueriaCanina;
CREATE TABLE dueno (
DNI int NOT NULL,
 nombre varchar(50) NOT NULL,
 apellido varchar (50) NOT NULL,
 telefono varchar (15),
 direccion varchar(70) NOT NULL,
 PRIMARY KEY (DNI) 
 );
 
 
CREATE TABLE Perro (
 ID_perro int not null unique,
 Nombre varchar(40) NOT NULL,
 Fecha_nac DATE,
 Sexo varchar(10) NOT NULL,
 DNI_dueno int NOT NULL,
 PRIMARY KEY (ID_perro),
 FOREIGN KEY (DNI_dueno) REFERENCES dueno(dni)
);
 
 CREATE TABLE Historial (
 ID_perro int not null,
 ID_Historial int not null,
 fecha date,
 Perro varchar(40),
 Descripcion varchar(50) not null,
 Monto int,
 PRIMARY KEY(ID_Historial),
 FOREIGN KEY (ID_perro) references perro(ID_perro)
 );
 
 
Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
    value (42102936, "Florencia","Figueroa", 3515346772, "");
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
    values (42102936, "Luna", "2018-12-17", "Hembra", 1);
Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
    value (1, "2021-03-14", "Vacuna", 1900, 1);
 
Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
    value (41645479, "Gaston","Ruiz", 3515468905, "Sucre 50");
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
    values (41645479, "Thor", "2020-05-08", "Macho", 2);
Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
    value (2, "2021-04-15", "Corte de pelo", 1100, 2);

Insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
    value (35688965, "Sofia","Lemos", 3516722805, "La Plata 608");
INSERT INTO Perro ( DNI_dueno, nombre, Fecha_nac, Sexo, ID_perro) 
    values ( 35688965, "Loki", "2022-01-19", "Macho", 3);
Insert into Historial (ID_Perro, fecha, descripcion, monto, ID_Historial)
    value (3, "2022-04-19", "Control", 1600, 3);
 
 


SELECT * FROM perro WHERE Sexo="Macho" AND Fecha_nac BETWEEN "2020-01-01" AND "2022-12-31"
