# Comandos DQL

## Cláusula (GROUP BY)
Tem a função de agrupar dados semelhantes em uma consulta SQL.

Ex: Conte a quantidade de pessoas cadastradas, por sexo, na tabela
Agenda.

```sql
SELECT Sexo, COUNT(*) AS 'Quantidade'
FROM Agenda
GROUP BY Sexo
```

## Cláusula (HAVING)
Tem função semelhante a cláusula *WHERE*, porém sua aplicação se restringe a consulta agrupadas *(GROUP BY)*.

Ex: Conte a quantidade de pessoas cadastradas, por profissão, na tabela Agenda, mostrando apenas as do sexo masculino.

```sql
SELECT Profissao, Count(*) AS 'Quantidade'
FROM Agenda
GROUP BY Profissao, Sexo
HAVING Sexo = 'M';
```

## Cláusula (ORDER BY)
Tem função de ordenar dados em uma consulta SQL. Pode utilizar o complemento ASC (para ordenação ascendente) e DESC (para ordenação descendente).

Ex: Selecione as colunas *Profissao* e *Nome*, na tabela *Agenda*, ordenando *Profissao* em ordem ascendente e *Nome* em ordem descendente.

```sql
SELECT Profissao, Nome
FROM Agenda
ORDER BY Profissao, Nome DESC;
```

## Cláusula (TOP())
Tem função de selecionar as *n* primeiras tuplas de uma consulta

Ex: Mostre todos os dados dos três maiores salários na tabela Agenda.

```sql
SELECT TOP (3) salario
FROM Agenda
ORDER BY Salario DESC;
```
