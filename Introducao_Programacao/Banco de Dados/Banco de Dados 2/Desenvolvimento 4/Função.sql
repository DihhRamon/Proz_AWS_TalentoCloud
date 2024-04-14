CREATE OR REPLACE FUNCTION total_clientes_cadastrados(data_consulta DATE)
RETURNS INTEGER AS $$
DECLARE
    total_clientes INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE DATE(data_cadastro) = data_consulta;

    RETURN total_clientes;
END;
$$ LANGUAGE PLPGSQL;

CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(25) not NULL,
  cpf VARCHAR(25) not NULL,
  data_cadastro DATE,
  telefone VARCHAR(14)
);

INSERT INTO clientes (id_cliente, nome, cpf, data_cadastro, telefone)
VALUES
('1','Isadora','951.753.654-99','2024-03-14',NULL),
('2','Carlos','458.965.236.-11','2024-04-01','9654-5214'),
('3','Camila','874.569.956-00','2024-03-14','8521-3698'),
('4','Diego','945.412.447-02','2024-04-01','3435-8888'),
('5','Bruna','111.111.000-40','2024-02-10','3435-8888'),
('6','Willian','123.524.478-66','2024-02-10','3435-8888'),
('7','Jorge','222.555.478-42','2024-02-10','3435-8888'),
('8','Kiara','235.856.478-66','2024-03-10','3435-8888');

SELECT * FROM clientes

SELECT total_clientes_cadastrados('2024-03-14') AS total_clientes;
SELECT total_clientes_cadastrados('2024-04-01') AS total_clientes;
SELECT total_clientes_cadastrados('2024-02-10') AS total_clientes;
SELECT total_clientes_cadastrados('2024-03-10') AS total_clientes;