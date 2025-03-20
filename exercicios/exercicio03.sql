--  CREATE TABLE Dependente ( Cd_Dependente INTEGER IDENTITY(1001,1) PRIMARY KEY,
--						      Nm_Dependente VARCHAR(50) NOT NULL,
--						      Sx_Dependente CHAR(1) CHECK (Sx_Dependente = 'M' OR Sx_Dependente = 'F'));  

--INSERT INTO Empregado (Nm_Empregado, Sx_Empregado) 
--				VALUES ('João Silva', 'M'),
--						('Maria Oliveira', 'F'),
--						('Pedro Santos', 'M'),
--						('Ana Costa', 'F'),
--						('Lucas Pereira', 'M'),
--						('Juliana Fernandes', 'F'),
--						('Carlos Souza', 'M'),
--						('Fernanda Lima', 'F'),
--						('Rafael Almeida', 'M'),
--						('Amanda Rocha', 'F');

--INSERT INTO Dependente ( Nm_Dependente, Sx_Dependente)
--			  VALUES    ('Gabriel Alves', 'M'),
--						('Sofia Ribeiro', 'F'),
--						('Enzo Costa', 'M'),
--						('Laura Mendes', 'F'),
--						('Arthur Oliveira', 'M'),
--						('Alice Santos', 'F'),
--						('Heitor Fernandes', 'M'),
--						('Valentina Lima', 'F'),
--						('Bernardo Rocha', 'M'),
--						('Heloísa Almeida', 'F');

SELECT * FROM Empregado;

SELECT * FROM Dependente;