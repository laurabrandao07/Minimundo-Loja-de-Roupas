
CREATE DATABASE IF NOT EXISTS sistema_vendas;
USE sistema_vendas;


SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Itens; 
DROP TABLE IF EXISTS Item; 
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Vendedor;
DROP TABLE IF EXISTS Categoria;


SET FOREIGN_KEY_CHECKS = 1;




CREATE TABLE Categoria (
    id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL
);


CREATE TABLE Vendedor (
    id_vendedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(50) NOT NULL
);


CREATE TABLE Cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14),
    telefone VARCHAR(20)
);


CREATE TABLE Produto (
    id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(5),
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);


CREATE TABLE Venda (
    id_venda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10, 2),
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_vendedor)
);


CREATE TABLE Itens (
    id_itens INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2),
    id_venda INT,
    id_produto INT,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

