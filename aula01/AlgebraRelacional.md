# Álgebra Relacional: Seleção, Projeção e Ordenação

A Álgebra Relacional é um conjunto de operações fundamentais para manipulação de dados em bancos de dados relacionais, funcionando como a base para consultas. Dentre essas operações, a **Seleção**, a **Projeção** e a **Ordenação** são algumas das mais comuns. Abaixo está a explicação de cada uma delas:

## 1. Seleção (σ)

A operação de **seleção** é usada para filtrar as linhas (tuplas) de uma tabela que atendem a uma condição específica. Ela funciona como um filtro, selecionando apenas as tuplas que satisfazem a condição fornecida. A notação usada para a seleção é \( \sigma_{\text{condição}}(R) \), onde:
- \( \sigma \) é o símbolo da operação de seleção.
- A condição é uma expressão booleana (como \( \text{idade} > 30 \)).
- \( R \) é a relação (ou tabela) da qual estamos extraindo as tuplas.

### Exemplo:
Suponha que temos a seguinte tabela de alunos:

| ID  | Nome     | Idade |
| --- | -------- | ----- |
| 1   | Ana      | 20    |
| 2   | João     | 25    |
| 3   | Maria    | 30    |
| 4   | Pedro    | 35    |

Se quisermos selecionar todos os alunos com idade maior que 30, a operação seria:
\[
\sigma_{\text{Idade} > 30}(\text{Alunos})
\]
Resultado:

| ID  | Nome     | Idade |
| --- | -------- | ----- |
| 4   | Pedro    | 35    |

---

## 2. Projeção (π)

A operação de **projeção** é usada para selecionar apenas determinadas colunas (atributos) de uma tabela, ignorando as outras. Em outras palavras, a projeção "projeta" uma relação sobre um subconjunto de suas colunas. A notação usada para a projeção é \( \pi_{\text{atributos}}(R) \), onde:
- \( \pi \) é o símbolo da operação de projeção.
- \( \text{atributos} \) são os nomes das colunas que desejamos incluir no resultado.
- \( R \) é a relação (ou tabela).

### Exemplo:
Se quisermos selecionar apenas os nomes dos alunos, a operação seria:
\[
\pi_{\text{Nome}}(\text{Alunos})
\]
Resultado:

| Nome     |
| -------- |
| Ana      |
| João     |
| Maria    |
| Pedro    |

---

## 3. Ordenação (τ)

A operação de **ordenação** é usada para ordenar as tuplas de uma tabela de acordo com um ou mais atributos. A ordenação pode ser crescente ou decrescente, dependendo da necessidade. A notação usada para a ordenação é \( \tau_{\text{atributo}}(R) \), onde:
- \( \tau \) é o símbolo da operação de ordenação.
- \( \text{atributo} \) é o nome do atributo pelo qual a tabela será ordenada.
- \( R \) é a relação (ou tabela).

### Exemplo:
Se quisermos ordenar os alunos pela idade em ordem crescente, a operação seria:
\[
\tau_{\text{Idade}}(\text{Alunos})
\]
Resultado:

| ID  | Nome     | Idade |
| --- | -------- | ----- |
| 1   | Ana      | 20    |
| 2   | João     | 25    |
| 3   | Maria    | 30    |
| 4   | Pedro    | 35    |

Se quisermos ordenar em ordem decrescente de idade, faríamos a mesma operação, mas indicando a ordem decrescente:
\[
\tau_{\text{Idade DESC}}(\text{Alunos})
\]
Resultado:

| ID  | Nome     | Idade |
| --- | -------- | ----- |
| 4   | Pedro    | 35    |
| 3   | Maria    | 30    |
| 2   | João     | 25    |
| 1   | Ana      | 20    |

---

Essas operações formam a base para a construção de consultas mais complexas em bancos de dados relacionais, sendo combinadas em diferentes ordens para alcançar resultados desejados.

## Comandos DQL 

### Cláusura (Where)
Tem a função de estabelecer um predicado, condição para filtrar dados através
da utilização de operadores lógicos, em uma consulta SQL.

Demonstrações de Cláusula:
![ClausulaWHERE](/img/clausuraWHERE.png/)
![ClausulaWHERE2](/img/clausura01WHERE.png/)