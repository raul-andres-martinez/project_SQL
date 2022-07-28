CREATE DATABASE dbClassificado;

USE dbClassificado;

CREATE TABLE Tbl_Cliente(
id_cliente int auto_increment not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null);

INSERT INTO TBL_CLIENTE
VALUES (null, "Raul", "raul@email.com","senha123"),
(null, "Nick", "nick@email.com","senha987"),
(null, "Amanda", "amanda@email.com","senha456"),
(null, "Fabio", "fabio@email.com","senha789");

CREATE TABLE Tbl_Anuncio(
id_anuncio int auto_increment not null primary key,
anuncio varchar(50) not null,
descricao varchar(50) not null,
foto varchar(50) not null,
fk_anunciante int not null,
foreign key (fk_anunciante) references Tbl_Anunciante (id_anunciante));

INSERT INTO TBL_ANUNCIO
VALUES (null,'Apartamento em SP', '2 quartos, 70m²','URLAP', 1),
(null,'Casa em Sorocaba', 'Quintal grande, 120m²','URLCASA', 1),
(null,'Cachorro para adoção', 'Lindo cão macho SRD para adoção', 'URLCACHORRO', 2),
(null,'Televisão','Televisão 42"', 'URLTV', 3);

create table Tbl_Categoria(
id_categoria int auto_increment not null primary key,
fk_anuncio int not null,
foreign key (fk_anuncio) references TBL_anuncio (id_anuncio),
categoria varchar(30));

INSERT INTO TBL_CATEGORIA
VALUE (null,1, 'Imóveis'),
(null,2,'Imóveis'),
(null,3,'Animais'),
(null,4,'Eletrodomésticos');

CREATE TABLE Tbl_Anunciante(
id_anunciante int auto_increment not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null);

INSERT INTO TBL_ANUNCIANTE
VALUES (null, 'Joao','joao@email.com','senhasenha'),
(null,'Thaina','thaina@email.com','"senha'),
(null,'Johny','johny@gmail.com','senhasenhasenha');

SELECT * FROM TBL_CLIENTE;

SELECT * FROM TBL_ANUNCIANTE;

SELECT * FROM TBL_ANUNCIO;

SELECT * FROM TBL_CATEGORIA;

SELECT id_categoria FROM TBL_CATEGORIA WHERE categoria = "Imóveis";