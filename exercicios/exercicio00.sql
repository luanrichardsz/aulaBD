-- Criando o BD com nome "Banco";
-- CREATE DATABASE Banco;

-- Posicionando para dentro do banco
-- USE Banco;
-- GO -- O "Go" indica o fim de um lote (batch) de comandos SQL e instrui o SQL Server a executar todos os comandos anteriores como uma única unidade. 

-- Renomeando o banco para Agenda
-- ALTER DATABASE Banco MODIFY NAME = Agenda;

-- Criando a tabela com o nome "Pessoal" e seus campos
/* CREATE TABLE Pessoal (
	MATRICULA INTEGER PRIMARY KEY,
	NOME VARCHAR(50),
	NASCIMENTO DATE,
	SEXO CHAR(1),
	SALARIO MONEY
); */

-- Inserindo valores para a tabela
/* INSERT INTO Pessoal (MATRICULA, NOME, NASCIMENTO, SEXO, SALARIO) VALUES
(1, 'Carlos Silva', '1985-04-15', 'M', 4500.00),
(2, 'Ana Souza', '1990-08-22', 'F', 5200.50),
(3, 'João Pereira', '1982-12-10', 'M', 6100.75),
(4, 'Mariana Costa', '1995-07-05', 'F', 3200.00),
(5, 'Roberto Lima', '2000-02-20', 'M', 2800.30),
(6, 'Fernanda Alves', '1993-06-30', 'F', 4700.90); */

-- Verificando os dados inseridos
-- select * from Pessoal;

-- Adicionando o campo "OBSERVACAO"
-- ALTER TABLE Pessoal ADD OBSERVACAO VARCHAR(200);

-- Alterando o tamanho do campo "OBSERVACAO"
-- ALTER TABLE Pessoal ALTER COLUMN OBSERVACAO VARCHAR(150);

-- Deletando o campo "OBSERVACAO"
-- ALTER TABLE Pessoal DROP COLUMN OBSERVACAO;

-- Excluindo a tabela "Pessoal"
-- DROP TABLE Pessoal;