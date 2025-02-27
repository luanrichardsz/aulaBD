-- Criando banco de dados
-- CREATE DATABASE BancoSala;

-- Posicionando no Banco criado
-- USE BancoSala;

-- Criando a tabela Departamento
/*
CREATE TABLE Departamento (

	Numero INTEGER,	
	Nome VARCHAR(50), 
	Local VARCHAR(20), 
	Orcamento DECIMAL(12,2));
*/

-- Inserindo Valores
/*
INSERT INTO Departamento
			(Numero, Nome, Local, Orcamento)
VALUES	(1, 'Luan', 'Roda de Fogo', 150000.50),
		(2, 'Leo Craft', 'Camaragibe', 10.50),
		(3, 'Leonardo Antonio', 'Lagoa do Carro', 1.50);
*/
	
-- Inserindo Valores
/*
INSERT INTO Departamento
		(Numero, Nome, Local, Orcamento)
VALUES	(4, 'Emmanuel', 'Rio Doce', 150.50),
		(5, 'Miguel', 'São Paulo', 200.50);
*/

-- Atualizando os campos com VALORES 'Casa dos Sonhos' para 'Pessoal'
/*
UPDATE Departamento 
SET Numero = 77
WHERE Numero = 5;		
*/

-- Deletando quem tiver valor 'Pessoal' em 'Nome'
/*
DELETE FROM Departamento
WHERE Nome = 'Pessoal';
*/

-- Inserindo Valores
/*
INSERT INTO Departamento
    (Numero, Nome, Local, Orcamento)
VALUES
    (101, 'Carlos Silva', 'Recife', 50000),
    (205, 'Mariana Souza', 'São Paulo', 120000),
    (309, 'Rafael Oliveira', 'Rio de Janeiro', 80000),
    (412, 'Fernanda Lima', 'Belo Horizonte', 60000),
    (528, 'Lucas Almeida', 'Porto Alegre', 90000);
*/

-- Alterando o nome dos Departamentos para "Craft Leo" onde o nome for igual a "Leonardo Antonio" e o "Orcamento" for menor que 350
/*
UPDATE Departamento
SET Nome = 'Craft Leo'
WHERE Nome = 'Leonardo Antonio' AND Orcamento <= 350;
*/

-- Alterando o Local para 'Engenho do Meio' onde o nome for igual a 'Luan' OU Local igual a 'Roda de Fogo'
/*
UPDATE Departamento
SET Local = 'Engenho do Meio'
WHERE Nome = 'Luan' OR Local = 'Roda de Fogo'
*/

-- Imprimindo a tabela
-- SELECT * FROM Departamento;