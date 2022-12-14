DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS produto;

CREATE TABLE cliente(
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
    nome text NOT NULL,
    cpf text NOT NULL,
    cep text NOT NULL,
    email text NOT NULL,
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO cliente (nome, cpf, cep, email)
VALUES
    ('admin', '1002000', "85875-000", 'admin@test.org'),
    ("Maria Silver", "949.282.111-82", "85875-000", "mariam@test.org"),
    ("Jairo Carlile", "144.217.577-11", "85875-000", "carlile@test.org"),
    ("Marcos Oliva", "433.144.644-52", "85875-000", "marcos@test.org");

CREATE TABLE produto(
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
    nome text NOT NULL,
    categoria text NOT NULL,
    preco real not null
);

INSERT INTO produto (nome, categoria, preco)
VALUES
    ('Cenoura', 'Legume', 0.75),
    ("Banana", "Fruta", 4.50),
    ("Maçã", "Fruta", 5.50),
    ("Laranja", "Fruta", 3.25);