CREATE DATABASE dbEcommerce;

USE dbEcommerce;

CREATE TABLE Tbl_Cliente(
id_cliente int auto_increment not null primary key,
nome varchar(30) not null,
email varchar(30) not null,
senha varchar(30) not null,
endereco varchar(30) not null,
cpf varchar(50) not null);

INSERT INTO TBL_CLIENTE 
VALUES (null,"Raul","raul@email.com","senha123","Rua 125", 12345678912),
(null,"João","joao@email.com","senha321","Rua 124", 12345238912),
(null,"Maria","maria@email.com","senha423","Rua 115", 123445678912),
(null,"Fulano","fulano@email.com","senha153","Rua 165", 12235678912);

CREATE TABLE Tbl_Produtos(
id_produto int auto_increment not null primary key,
produto varchar(30) not null,
preco float(30) not null);

INSERT INTO TBL_PRODUTOS
VALUES (null,"Celular", 1250.00),
(null,"Computador", 4200.25),
(null,"Teclado", 327.32),
(null,"Mouse", 80.00),
(null,"Monitor", 950.00),
(null,"Caixa de som", 250.50);


CREATE TABLE Tbl_Estoque(
id_estoque int auto_increment not null primary key,
quantidade int(30) not null,
fk_produto int not null,
foreign key (fk_produto) references Tbl_Produtos (id_produto));

INSERT INTO TBL_Estoque
VALUES (null, 100, 1),
(null, 23, 2),
(null, 40, 3),
(null, 5, 4),
(null, 0, 5),
(null, 5, 6);

CREATE TABLE Tbl_Entrega(
id_entrega int auto_increment not null primary key,
fk_endereco int not null,
foreign key (fk_endereco) references Tbl_Cliente (id_cliente));

INSERT INTO TBL_ENTREGA
VALUES (null, 1),
(null, 2),
(null, 3),
(null, 4);

SELECT * FROM TBL_CLIENTE;

SELECT * FROM TBL_PRODUTOS;

SELECT * FROM TBL_ESTOQUE;

SELECT * FROM TBL_ENTREGA;

DROP TABLE TBL_ENTREGA;

SELECT id_produto FROM TBL_PRODUTOS WHERE preco >= 1250




