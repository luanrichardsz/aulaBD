# Linguagem SQL

Structured Query Language (SQL), ou Linguagem de Consulta Estruturada, foi desenvolvida no início dos anos 70 nos laboratórios da IBM em San Jose, com o objetivo de demonstrar a viabilidade da implementação física do modelo relacional proposto pelo matemático britânico Edgar Frank Codd.

## Tipos de Comandos

### DDL (Data Definition Language)
**Linguagem de Definição de Dados**

Define e manipula a estrutura do banco de dados.

**Exemplos:**

- `CREATE` – Cria tabelas, esquemas, índices, etc.
- `ALTER` – Modifica a estrutura de tabelas.
- `DROP` – Exclui tabelas, bancos de dados ou colunas.
- `TRUNCATE` – Remove todos os registros de uma tabela sem afetar sua estrutura.

### DML (Data Manipulation Language)
**Linguagem de Manipulação de Dados**

Manipula os dados dentro das tabelas.

**Exemplos:**

- `INSERT` – Insere novos registros.
- `UPDATE` – Atualiza dados existentes.
- `DELETE` – Remove registros.

### DCL (Data Control Language)
**Linguagem de Controle de Dados**

Controla permissões e acessos ao banco de dados.

**Exemplos:**

- `GRANT` – Concede permissões.
- `REVOKE` – Remove permissões.

### DQL (Data Query Language)
**Linguagem de Consulta de Dados**

Recupera informações do banco de dados.

**Exemplo:**

- `SELECT` – Consulta dados das tabelas.

### DTL (Data Transaction Language)
**Linguagem de Controle de Transações**

Usada para gerenciar transações no banco de dados, garantindo integridade e consistência.

**Exemplos:**

- `COMMIT` – Confirma as operações realizadas dentro de uma transação.
- `ROLLBACK` – Desfaz operações não confirmadas, retornando ao estado anterior.
- `SAVEPOINT` – Define pontos de salvamento dentro de uma transação para possibilitar rollback parcial.
