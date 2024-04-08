CREATE TABLE veterinario (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(25) not NULL,
  cpf VARCHAR(14) not NULL,
  data_admissao DATE,
  telefone VARCHAR(14),
  email VARCHAR(25),
  especialidade VARCHAR(25) not NULL
);

CREATE TABLE cliente (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(25) not NULL,
  cpf VARCHAR(25) not NULL,
  data_nascimento DATE,
  telefone VARCHAR(14),
  email VARCHAR(25),
  nome_pet VARCHAR(25) not NULL,
  especie_pet VARCHAR(25)
);

CREATE TABLE consulta (
  id_consulta SERIAL PRIMARY KEY,
  veterinario VARCHAR(25) not NULL,
  cliente VARCHAR(14) not NULL,
  nome_pet VARCHAR(25) not NULL,
  especie_pet VARCHAR(25),
  data_consulta DATE,
  valor_consulta FLOAT,
  codigo_vet INT NOT NULL,
  id_cliente INT NOT NULL
);

INSERT INTO veterinario (codigo, nome, cpf, data_admissao, telefone, email, especialidade)
VALUES
('1','Alexandre','854.547.851-10','2023-05-01','4525-5458',NULL,'Cirurgião'),
('2','Fernanda','785.698.154-55','2023-10-15','9875-654','','Pediatra'),
('3','Julio','987.456.321-00',NULL,'','julio@hotmail.com','Ortopedista'),
('4','Bruna','357.951.654-49','2023-12-02','5698-5647','boo@gmail.com','Clinico Geral');

INSERT INTO cliente (id_cliente, nome, cpf, data_nascimento, telefone, email, nome_pet, especie_pet)
VALUES
('1','Isadora','951.753.654-99','2000-03-14',NULL,'isadora@ig.com','Jade','Canino'),
('2','Carlos','458.965.236.-11','1983-07-10','9654-5214','carlos@gmail.com','Luna','Felino'),
('3','Camila','874.569.956-00','1998-01-05','8521-3698',NULL,'Milu','Bovino'),
('4','Diego','145.523.365.47','1995-05-14','3435-8888','dihh@hotmail.com','Loki','Canino');

INSERT INTO consulta (id_consulta, veterinario, cliente, nome_pet, especie_pet, data_consulta, valor_consulta, codigo_vet, id_cliente)
VALUES
('1','Alexadre','Camila','Milu','Bovino','2024-03-15','5000','1','3'),
('2','Bruna','Diego','Loki','Canino','2024-02-10','700.00','4','4'),
('3','Julio','Carlos','Luna','Felino','2024-04-01','1.500','3','2'),
('4','Fernanda','Isadora','Jade',NULL,'2024-03-26','500','2','1');

ALTER TABLE consulta
ADD CONSTRAINT fk_codigo_vet FOREIGN KEY (codigo_vet) REFERENCES veterinario(codigo),
add CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

-- Querys

-- LEFT JOIN

SELECT nome, consulta.especie_pet FROM cliente LEFT JOIN consulta on cliente.id_cliente = consulta.id_cliente

-- RIGHT JOIN

SELECT nome, email, cliente, nome_pet FROM veterinario RIGHT JOIN consulta on veterinario.codigo = consulta.codigo_vet

-- FULL JOIN

SELECT nome, email, data_admissao, cliente, nome_pet, especie_pet FROM veterinario
LEFT JOIN consulta on veterinario.codigo = consulta.codigo_vet
UNION
SELECT nome, email, data_admissao, cliente, nome_pet, especie_pet FROM veterinario
RIGHT JOIN consulta on veterinario.codigo = consulta.codigo_vet

-- INNER JOIN

SELECT vet.nome, vet.especialidade, con.nome_pet ,con.data_consulta, con.valor_consulta
FROM veterinario as vet
INNER JOIN consulta AS con 
on vet.codigo = con.codigo_vet