CREATE DATABASE dbMarketplace;

use dbMarketplace;

create table Tbl_Cliente(
id_cliente int auto_increment not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null);

INSERT INTO TBL_CLIENTE
VALUES (null, "Raul", "raul@email.com","senha123"),
(null, "Nick", "nick@email.com","senha987"),
(null, "Amanda", "amanda@email.com","senha456"),
(null, "Fabio", "fabio@email.com","senha789");

create table Tbl_Vendedor(
id_vendedor int auto_increment not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null);

INSERT INTO TBL_VENDEDOR
VALUES (null, 'Joao','joao@email.com','senhasenha'),
(null,'Thaina','thaina@email.com','"senha');

create table Tbl_Produto(
id_produto int auto_increment not null primary key,
produto varchar(30) not null,
preco double not null,
fk_vendedor int not null,
foreign key (fk_vendedor) references Tbl_Vendedor (id_vendedor));

INSERT INTO TBL_PRODUTO
VALUE (null,'Violão',350,1),
(null,'Violino',650,1),
(null,'Chuteira',350.50,2);

create table Tbl_Categoria(
id_categoria int auto_increment not null primary key,
fk_produto int not null,
foreign key (fk_produto) references TBL_Produto (id_produto),
categoria varchar(30));

INSERT INTO TBL_CATEGORIA
VALUE (null,1, "Instrumentos"),
(null,4,"Instrumentos"),
(null,3,"Futebol");

SELECT * FROM TBL_CLIENTE;

SELECT * FROM TBL_VENDEDOR;

SELECT * FROM TBL_PRODUTO;

SELECT * FROM TBL_CATEGORIA;

SELECT id_categoria FROM TBL_CATEGORIA WHERE categoria = "Instrumentos";


