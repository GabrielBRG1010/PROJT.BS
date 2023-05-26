CREATE DATABASE STAR_GAMES;

USE STAR_GAMES;

CREATE TABLE Usuarios (
  id_usuarios INT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_usuarios)
);

CREATE TABLE Pedidos (
  id_pedidos INT,
  produto VARCHAR(50) NOT NULL,
  Idusuario INT,
  PRIMARY KEY (id_pedidos),
  FOREIGN KEY (Idusuario) REFERENCES Usuarios(id_usuarios)
);

CREATE TABLE Produtos (
  id_produtos INT,
  nome VARCHAR(50) NOT NULL,
  preco FLOAT,
  PRIMARY KEY(id_produtos)
);

CREATE TABLE ProdutosPedidos (
  id_produtospedidos INT,
  Idproduto INT,
  nome_produto varchar(40) not null,
  pedidos int,
  quantidade INT,
foreign key(Idproduto) references Produtos(id_produtos),
foreign key(pedidos) references Pedidos(id_pedidos)
);

CREATE TABLE Comentarios (
  id_comentarios INT,
  id_produto INT,
  texto VARCHAR(300) NOT NULL,
  IdDoProduto INT,
  FOREIGN KEY (id_produto) REFERENCES Produtos(id_produtos)
);

INSERT INTO Usuarios(id_usuarios, nome, email)
VALUES (1, 'Gabriel', 'gabriel.brg@gmail.com');

INSERT INTO Pedidos(id_pedidos, produto, Idusuario)
VALUES (1, 'Hogwarts legacy', 1);

INSERT INTO Produtos(id_produtos, nome, preco)
VALUES (1, 'Hogwarts legacy', 300.00);

INSERT INTO ProdutosPedidos(id_produtospedidos, nome_produto, quantidade)
VALUES (1, 'Hogwarts legacy', 1);

INSERT INTO Comentarios(id_comentarios, texto, IdDoProduto)
VALUES (1, 'Jogo muito bom', 123);
