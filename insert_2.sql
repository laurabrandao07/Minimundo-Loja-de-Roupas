USE sistema_vendas;


SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE TABLE Itens;
TRUNCATE TABLE Venda;
TRUNCATE TABLE Produto;
TRUNCATE TABLE Cliente;
TRUNCATE TABLE Vendedor;
TRUNCATE TABLE Categoria;
SET FOREIGN_KEY_CHECKS = 1; 


INSERT INTO Categoria (nome_categoria) VALUES 
('Casual'),
('Esporte'),
('Social');


INSERT INTO Vendedor (nome, matricula) VALUES 
('Ana Costa', 'MAT-001'),
('Bruno Lima', 'MAT-002');


INSERT INTO Cliente (nome, cpf, telefone) VALUES 
('Maria Silva', '111.222.333-00', '(11) 99999-1111'),
('João Souza', '222.333.444-55', '(21) 98888-2222'),
('Carlos Pereira', '333.444.555-66', '(31) 97777-3333');


INSERT INTO Produto (nome, tamanho, preco, id_categoria) VALUES 
('Camiseta Básica', 'M', 50.00, 1),
('Calça Jeans', '42', 120.00, 1),
('Tênis Corrida', '40', 250.00, 2),
('Camisa Social', 'G', 150.00, 3);



INSERT INTO Venda (data_venda, valor_total, id_cliente, id_vendedor) VALUES 
('2025-11-20', 220.00, 1, 1), 
('2025-11-21', 150.00, 2, 2); 


INSERT INTO Itens (id_venda, id_produto, quantidade, preco) VALUES 
(1, 1, 1, 50.00), 
(1, 2, 1, 120.00); 


INSERT INTO Itens (id_venda, id_produto, quantidade, preco) VALUES 
(2, 4, 1, 150.00); 

