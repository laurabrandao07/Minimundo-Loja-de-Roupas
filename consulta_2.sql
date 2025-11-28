USE sistema_vendas;


SET SQL_SAFE_UPDATES = 0;


DELETE FROM Cliente WHERE nome = 'Cliente Teste';
DELETE FROM Vendedor WHERE nome = 'Vendedor Teste';
DELETE FROM Categoria WHERE nome_categoria = 'Categoria Teste';




SELECT
    V.id_venda,
    C.nome AS Cliente,
    C.cpf AS CPF_Cliente,
    VE.nome AS Vendedor,
    VE.matricula AS Mat_Vendedor,
    V.valor_total
FROM 
    Venda V
JOIN Cliente C ON V.id_cliente = C.id_cliente
JOIN Vendedor VE ON V.id_vendedor = VE.id_vendedor;


SELECT
    V.id_venda,
    P.nome AS Produto,
    P.tamanho,
    CAT.nome_categoria,
    I.quantidade,
    I.preco AS Preco_Unitario
FROM 
    Itens I
JOIN Venda V ON I.id_venda = V.id_venda
JOIN Produto P ON I.id_produto = P.id_produto
JOIN Categoria CAT ON P.id_categoria = CAT.id_categoria
ORDER BY V.id_venda;


SELECT * FROM Produto WHERE id_categoria = 1; 




UPDATE Vendedor SET matricula = 'MAT-999' WHERE id_vendedor = 1;


UPDATE Produto SET tamanho = 'GG' WHERE id_produto = 1;


UPDATE Cliente SET telefone = '(00) 0000-0000' WHERE id_cliente = 2;




INSERT INTO Cliente (nome, cpf) VALUES ('Cliente Teste', '000.000.000-00');
INSERT INTO Vendedor (nome, matricula) VALUES ('Vendedor Teste', 'TEMP-01');
INSERT INTO Categoria (nome_categoria) VALUES ('Categoria Teste');


SET @id_cli = (SELECT id_cliente FROM Cliente WHERE nome = 'Cliente Teste' LIMIT 1);
DELETE FROM Cliente WHERE id_cliente = @id_cli;


SET @id_vend = (SELECT id_vendedor FROM Vendedor WHERE nome = 'Vendedor Teste' LIMIT 1);
DELETE FROM Vendedor WHERE id_vendedor = @id_vend;


SET @id_cat = (SELECT id_categoria FROM Categoria WHERE nome_categoria = 'Categoria Teste' LIMIT 1);
DELETE FROM Categoria WHERE id_categoria = @id_cat;


SET SQL_SAFE_UPDATES = 1;

