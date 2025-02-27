    # Sintaxe do Comando `SELECT` no SQL

O comando `SELECT` é utilizado para recuperar dados de tabelas ou views em um banco de dados. A sintaxe básica é:

```sql
SELECT [tipo] [campos] 
FROM <tabela/view> 
[<condição/ordem>];
```

## Componentes do Comando `SELECT`

### 1. `[tipo]` (Opcional)
Define o tipo de seleção:
- `DISTINCT` → Retorna apenas valores distintos, eliminando duplicatas.
- `*` → Seleciona todas as colunas da tabela.

### 2. `[campos]`
Especifica as colunas que serão retornadas na consulta.

### 3. `<tabela/view>`
Nome da tabela ou view da qual os dados serão extraídos.

## Cláusulas para Filtragem e Ordenação

### `WHERE`
Filtra os dados utilizando operadores relacionais e lógicos.

#### Operadores Relacionais:
- `<`  → Menor que
- `<=` → Menor ou igual
- `>`  → Maior que
- `>=` → Maior ou igual
- `=`  → Igual
- `<>` → Diferente

#### Operadores Lógicos:
- `[NOT] IN` → Filtra valores dentro (ou fora) de um conjunto.
- `[NOT] BETWEEN` → Filtra valores dentro (ou fora) de um intervalo.
- `[NOT] LIKE '%dado%'` → Filtra por padrões de texto usando `%` como caractere curinga.

### `GROUP BY`
Agrupa os resultados da consulta com base em uma ou mais colunas.

### `HAVING`
Filtra os resultados de uma consulta agrupada com `GROUP BY`, funcionando como um `WHERE` para grupos.

### `ORDER BY`
Ordena os resultados da consulta.
- `ASC` → Ordem crescente (padrão).
- `DESC` → Ordem decrescente.

## Exemplo de Consulta:

```sql
SELECT DISTINCT nome, idade 
FROM clientes 
WHERE idade >= 18 AND cidade IN ('Recife', 'São Paulo') 
GROUP BY idade 
HAVING COUNT(*) > 5 
ORDER BY idade DESC;
```

Este exemplo:
1. Seleciona os campos `nome` e `idade` da tabela `clientes`.
2. Usa `DISTINCT` para eliminar valores duplicados.
3. Filtra clientes com idade maior ou igual a 18 e que moram em Recife ou São Paulo.
4. Agrupa os resultados por idade.
5. Filtra apenas grupos com mais de 5 registros (`HAVING COUNT(*) > 5`).
6. Ordena os resultados em ordem decrescente (`ORDER BY idade DESC`).