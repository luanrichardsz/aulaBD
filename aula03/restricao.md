## O que é domínio?
É o conjunto de todos os valores possíveis para um determinado atributo.

Ex:
```sql
INTEGER, CHAR(), VARCHAR(), DATE(), TIME(), etc.
```

## O que é restrição de domínio?
É uma limitação aplicada sobre o domínio do atributo.

Ex:
```sql
NOT NULL, PRIMARY KEY, FOREIGN KEY, CHECK, etc.
```

## NOT NULL
Torna o preenchimento do atributo obrigatório.

Ex:
```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER,
Nm_Pessoal VARCHAR(50) NOT NULL,
Sx_Pessoal CHAR(1) );
```

## DEFAULT
Define um valor padrão a ser utilizado pelo atributo.

Ex:
```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER,
Nm_Pessoal VARCHAR(50) NOT NULL,
Sx_Pessoal CHAR(1) DEFAULT('M') );

-------------------------------------------------------------------
-- Constraint = Configurações
ALTER TABLE Pessoal ADD CONSTRAINT DF_Sx_Pessoal
DEFAULT('M') FOR Sx_Pessoal;

```

## PRIMARY KEY
Define o atributo como chave primária.

Ex:
```sql
CREATE TABLE Cargo ( Cd_Cargo INTEGER PRIMARY KEY,
Ds_Cargo VARCHAR(50) NOT NULL );
----------------------------------------------------------------------
CREATE TABLE Cargo ( Cd_Cargo INTEGER CONSTRAINT PK_Cargo PRIMARY KEY,
Ds_Cargo VARCHAR(50) NOT NULL );
```

## FOREIGN KEY
Define o atributo como chave estrangeira.

Ex:
```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER PRIMARY KEY,
Nm_Pessoal VARCHAR(50) NOT NULL,
Cd_Cargo INTEGER CONSTRAINT FK_Cargo
REFERENCES Cargo(Cd_Cargo) );
```

### FOREIGN KEY (Exclusão em Cascata)

```sql
ON DELETE {NO ACTION|CASCADE|SET NULL|SET DEFAULT}
```
#### NO ACTION
Não permite a exclusão de um registro que possua ligação
com outra tabela. Uma mensagem de erro é apresentada e a exclusão não
é efetivada.

#### CASCADE
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas os
registros que contenham essas chaves estrangeiras serão excluídos.

#### SET NULL
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas as
colunas que constituem a chave estrangeiras serão definidas como
NULL.

#### SET DEFAULT
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas as
colunas que constituem a chave estrangeiras serão definidas com os
seus valores default.

### FOREIGN KEY ( Ações em Cascata )

ON UPDATE {NO ACTION|CASCADE|SET NULL|SET DEFAULT}

#### NO ACTION
Não permite a alteração de um registro que possua ligação
com outra tabela. Uma mensagem de erro é apresentada e a exclusão não
é efetivada.
NO ACTION é o padrão para o ON UPDATE. Poderá, ou não, ser declarada.

#### CASCADE
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas os
registros que contenham essas chaves estrangeiras serão alterados.

#### SET NULL
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas as
colunas que constituem a chave estrangeiras serão definidas como
NULL.

#### SET DEFAULT
Caso um registro possua ligação com outras tabelas,
através de uma chave referenciada por chaves estrangeiras, todas as
colunas que constituem a chave estrangeiras serão definidas com os
seus valores default.

## IDENTITY
Gera uma numeração de forma automática em um atributo.

Ex:
```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER IDENTITY(1000,1),     
                       Nm_Pessoal VARCHAR(50) NOT NULL,
                       Sx_Pessoal CHAR(1) );
-----------------------------------------------------------------
INSERT INTO Pessoal ( Nm_Pessoal, Sx_Pessoal )
             VALUES ( 'Fred' , 'M' );
-----------------------------------------------------------------
@@IDENTITY -> Mostra o ultimo número gerado pelo IDENTITY;
TRUNCATE TABLE Pessoal; -> Apaga todos os registros e zera contador
```

## SEQUENCE 
Gera uma numeração de forma automática.

Ex:
```sql
CREATE SEQUENCE Ct_Pessoa
AS INT
START WITH 1
INCREMENT BY 1;
```

## CHECK
Valida o dado fornecido ao atributo.

```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER PRIMARY KEY,
                       Nm_Pessoal VARCHAR(50) NOT NULL
                       Sx_Pessoal CHAR(1) CONSTRAINT CK_Sx_Pessoal
                       CHECK(Sx_Pessoal='M' OR Sx_Pessoal='F') );
```

## UNIQUE
Garante que um atributo não receba valores duplicados.

Ex:
```sql
CREATE TABLE Pessoal ( Mt_Pessoal INTEGER PRIMARY KEY,
Nm_Pessoal VARCHAR(50) NOT NULL ,
Email VARCHAR(50) NOT NULL
CONSTRAINT U_Email UNIQUE );
ALTER TABLE Pessoal ADD CONSTRAINT U_Email UNIQUE (Email);

