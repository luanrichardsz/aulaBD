/* Cl�usula (Where) */

/* TODOS */
 --SELECT * FROM Agenda;

/* IN */
-- SELECT * FROM Agenda WHERE Matricula IN (1,3,5,7);

/* BEWTEEN */
-- SELECT * FROM Agenda WHERE Salario BETWEEN 1500 AND 2000;

/* LIKE (%,_) */
--SELECT * FROM Agenda WHERE Nome LIKE '%silva%'

/* CHAMANDO OS SILVAS ISOLADOS */
--SELECT * FROM Agenda WHERE Nome LIKE 'Silva %' OR Nome LIKE '% Silva' OR Nome LIKE '% Silva %';

--SELECT * FROM Agenda WHERE ' ' + nome + ' ' LIKE '% Silva %'

/* IS NULL */
-- SELECT * FROM Agenda WHERE salario IS NULL;
-- SELECT * FROM Agenda WHERE salario IS NOT NULL

/* Cl�usula (GROUP BY) */

-- Somando todas as pessoas do sexo igual
-- SELECT Sexo, COUNT(*) 'Quantidade' FROM Agenda GROUP BY Sexo;

-- Somando os salarios de todos os empregados separados por sexo
-- SELECT Sexo, SUM(Salario) 'Soma de Salarios' FROM Agenda GROUP BY SEXO;

/* Cl�usula (HAVING) */
-- Funciona como a cl�usula WHERE em tabelas agrupadas

-- Chamando as profiss�es de todos os sexos = M
-- SELECT Profissao, Count(*) AS 'Quantidade de Homens' FROM Agenda GROUP BY Profissao, Sexo HAVING Sexo='M';

/* Cl�usula (ORDER BY) */

-- Ordenando em ordem alfabetica
-- SELECT Profissao, Nome FROM Agenda ORDER BY Profissao, Nome DESC

/* Cl�usula (TOP) */
-- Chamando as 3 maiores tuplas
-- nome e salario de quem tem maior salario
-- SELECT TOP(3)  Nome, Salario FROM Agenda ORDER BY Salario DESC
-- SELECT Nome, Salario FROM Agenda WHERE Salario = (SELECT MAX(Salario) FROM Agenda);

-- nome e salario de quem tem maior salario ou igual a media de salario
-- SELECT Nome, Salario FROM Agenda WHERE Salario >= (SELECT AVG(Salario) FROM Agenda);

-- nome e salario de quem tem o maior salario no sexo masculino e feminino
SELECT nome, salario FROM Agenda WHERE salario = ( SELECT MAX(Salario) FROM Agenda WHERE Sexo='M') OR
									   salario = ( SELECT MAX(Salario) FROM Agenda WHERE Sexo='F')

--SELECT  MAX(Salario) AS 'MaiorSalario', MIN(Salario) AS 'MenorSalario', AVG(Salario) AS 'MediaSalario'FROM Agenda