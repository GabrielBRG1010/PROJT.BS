CREATE DATABASE STAR_GAMES;

USE STAR_GAMES;

CREATE TABLE Usuarios (
  id_usuarios INT,
  nome_usuarios VARCHAR(50) NOT NULL,
  email_usuarios VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_usuarios)
);

CREATE TABLE Pedidos (
  id_pedidos INT,
  produto_pedidos VARCHAR(50) NOT NULL,
  IdDoUsuario_pedidos INT,
  PRIMARY KEY (id_pedidos),
  FOREIGN KEY (IdDoUsuario_pedidos)
    REFERENCES Usuarios(id_usuarios)
);

CREATE TABLE Produtos (
  id_produtos INT,
  nome_produtos VARCHAR(50) NOT NULL,
  preco_produtos FLOAT,
  PRIMARY KEY (id_produtos)
);

CREATE TABLE ProdutosPedidos (
  id_produtospedidos INT,
  IdDoPedido_produtospedidos INT,
  IdDoProduto_produtospedidos INT,
  quantidade_produtospedidos INT,
  FOREIGN KEY (IdDoPedido_produtospedidos)
    REFERENCES Pedidos(id_pedidos),
  FOREIGN KEY (IdDoProduto_produtospedidos)
    REFERENCES Produtos(id_produtos)
);

CREATE TABLE Comentarios (
  id_comentarios INT,
  texto_comentarios VARCHAR(300) NOT NULL,
  Iddoproduto_comentarios INT,
  FOREIGN KEY (Iddoproduto_comentarios)
    REFERENCES Produtos(id_produtos)
);

INSERT INTO Usuarios (id_usuarios, nome_usuarios, email_usuarios) VALUES (1, 'Gabriel', 'gabriel.brg@gmail.com');

INSERT INTO Pedidos (id_pedidos, produto_pedidos, IdDoUsuario_pedidos) VALUES (1, 'Hogwarts legacy', 1);
INSERT INTO Pedidos (id_pedidos, produto_pedidos, IdDoUsuario_pedidos) VALUES (2, 'God of war', 2);

INSERT INTO Produtos (id_produtos, nome_produtos, preco_produtos) VALUES (1, 'Hogwarts legacy', 300.00);
INSERT INTO Produtos (id_produtos, nome_produtos, preco_produtos) VALUES (2, 'God of war', 50.00);

INSERT INTO ProdutosPedidos (id_produtospedidos, IdDoPedido_produtospedidos, IdDoProduto_produtospedidos, quantidade_produtospedidos) VALUES (1, 2, 1, 1, 2);

INSERT INTO Comentarios (id_comentarios, texto_comentarios, Iddoproduto_comentarios) VALUES (1, 'Jogo muito bom', 1);
