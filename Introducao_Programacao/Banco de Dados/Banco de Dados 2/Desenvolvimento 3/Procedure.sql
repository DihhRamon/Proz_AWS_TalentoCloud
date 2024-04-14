CREATE TABLE vendas
(   
	Venda INT PRIMARY KEY,
	Produto	VARCHAR(15),
	Quantidade	INT,
	Data_compra DATE
);

DELIMITER $

CREATE PROCEDURE RelatorioProdutosCompradosPorDia()
BEGIN
    -- Cria uma tabela temporária para armazenar o resultado
    CREATE TEMPORARY TABLE IF NOT EXISTS TempProdutosCompradosPorDia (
        DataCompra DATE,
        QuantidadeProdutos INT
    );

    -- Deleta os dados antigos da tabela temporária
    DELETE FROM TempProdutosCompradosPorDia;

    -- Insere os novos dados na tabela temporária
    INSERT INTO TempProdutosCompradosPorDia (DataCompra, QuantidadeProdutos)
    SELECT Data_compra, SUM(Quantidade) AS QuantidadeProdutos
    FROM vendas
    GROUP BY Data_compra;

    -- Seleciona os resultados da tabela temporária
    SELECT * FROM TempProdutosCompradosPorDia;
END$

DELIMITER ;

INSERT INTO vendas VALUES (1,'Teclado','5','2024-04-01');
INSERT INTO vendas VALUES (2,'Monitor','3','2024-04-01');
INSERT INTO vendas VALUES (3,'Notebook','1','2024-04-01');

SELECT * FROM vendas;

CALL RelatorioProdutosCompradosPorDia();