CREATE DATABASE dbRedeSocial;

USE dbRedeSocial;

CREATE TABLE Tbl_Usuario(
id_usuario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null,
idade int not null,
foto varchar(50) null);

INSERT INTO TBL_USUARIO
VALUES (null, 'Raul', 'raul@email.com','senha123', 20 ,'URLRAUL'),
(null, 'Nick', 'nick@email.com','senha987', 23, 'URLNICK'),
(null, 'Amanda', 'amanda@email.com','senha456', 25, 'URLAMANDA'),
(null, 'Fabio', 'fabio@email.com','senha789', 29, 'URLFABIO');


CREATE TABLE Tbl_Post(
id_post INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
post varchar(30) not null,
fk_usuario int not null,
foreign key (fk_usuario) references Tbl_Usuario (id_usuario));

INSERT INTO TBL_POST
VALUES (NULL,'Nem tudo são flores...', 1),
(null,'Chega logo sexta',2),
(null,'Alô bem estar',3),
(null,'Blablabla',1);

SELECT * FROM tbl_usuario;

SELECT * FROM tbl_post;

SELECT post FROM tbl_post WHERE fk_usuario = 1;