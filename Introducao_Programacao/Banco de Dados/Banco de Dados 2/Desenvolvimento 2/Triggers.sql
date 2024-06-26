-- Criação Triggers Ao inserir e remover registro da tabela ItensVenda, o estoque do produto referenciado deve ser alterado na tabela Produtos. Para isso, serão criados dois triggers: um AFTER INSERT para dar baixa no estoque e um AFTER DELETE para fazer a devolução da quantidade do produto.

CREATE TABLE Produtos
(
	Referencia	VARCHAR(3) PRIMARY KEY,
	Descricao	VARCHAR(50) UNIQUE,
	Estoque	INT NOT NULL DEFAULT 0
);

INSERT INTO Produtos VALUES ("001", "Feijão", 10);
INSERT INTO Produtos VALUES ("002", "Arroz", 5);
INSERT INTO Produtos VALUES ("003", "Farinha", 15);

CREATE TABLE ItensVenda
(
	Venda		INT,
	Produto	VARCHAR(3),
	Quantidade	INT
);

select * from Produtos

DELIMITER $

CREATE TRIGGER Tgr_ItensVenda_Insert AFTER INSERT
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque - NEW.Quantidade
WHERE Referencia = NEW.Produto;
END$

CREATE TRIGGER Tgr_ItensVenda_Delete AFTER DELETE
ON ItensVenda
FOR EACH ROW
BEGIN
	UPDATE Produtos SET Estoque = Estoque + OLD.Quantidade
WHERE Referencia = OLD.Produto;
END$

DELIMITER;

INSERT INTO ItensVenda VALUES (1, "001",3);
INSERT INTO ItensVenda VALUES (1, "002",1);
INSERT INTO ItensVenda VALUES (1, "003",5);

SELECT * FROM Produtos;

DELETE FROM ItensVenda WHERE Venda = 1 AND Produto = "001";

SELECT * FROM Produtos;