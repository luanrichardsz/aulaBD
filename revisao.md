# Ferramentas:
	BRModelo
	SQL Server
	SQL Server no Relacional
	MongoDB no Não Relacional

# As Quatro Etapas:
## Levantamento de Requisitos <br>
		Coleta e análise das necessidades do sistema, <br> identificando quais dados serão armazenados e como serão utilizados.<br>
		Os requisitos são classificados em:<br>
		Requisitos Funcionais e Não Funcionais
		
	Modelagem Conceitual
		Criação de um modelo abstrato dos dados, <br> geralmente representado pelo Diagrama Entidade-Relacionamento (DER), <br> focando em entidades, atributos e relacionamentos.
		
	Modelagem Logica
		Transformação do modelo conceitual para um <br> formato mais estruturado, adequado ao modelo de banco de dados <br> escolhido (relacional, NoSQL, etc.), definindo tabelas, colunas e chaves.
		
	Modelagem Fisica
		Implementação final do banco de dados, <br> considerando aspectos técnicos como tipos de dados, índices, <br> normalização e otimização para desempenho.
		
# Elementos de Banco de Dados
	Tabelas
		As tabelas são a estrutura principal <br> de um banco de dados relacional. Elas armazenam os dados <br> em linhas ilimitadas(registros) e colunas limitadas (atributos),<br> organizando as informações de forma estruturada.
			
	Chaves
		As chaves são usadas para garantir a integridade dos dados e estabelecer relacionamentos entre tabelas.
			
		As principais são:

		Chave Primária (Primary Key - PK): Identifica de forma única cada registro em uma tabela. Exemplo: um ID de cliente.
		Chave Estrangeira (Foreign Key - FK): Relaciona uma tabela com outra, garantindo a integridade referencial. Exemplo: um IDde cliente em uma tabela de pedidos.
		Chave Candidata: Um atributo que pode ser escolhido como chave primária porque é único.
		Chave Composta: Quando mais de um atributo é usado em conjunto para formar uma chave primária.
		Chave Secundária: Um índice alternativo para busca rápida, sem ser a chave primária.
	