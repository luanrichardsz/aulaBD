-- CREATE DATABASE LanHouseFred

--	CREATE TABLE  Funcionario( Matricula INTEGER PRIMARY KEY IDENTITY ,
--							   Nome      VARCHAR(100) NOT NULL,)

--	CREATE TABLE  Cliente( ID_Cliente INTEGER PRIMARY KEY IDENTITY ,
--						   Nome      VARCHAR(100) NOT NULL,)

--	CREATE TABLE  Equipamento( ID_Equipamento INTEGER PRIMARY KEY IDENTITY ,
--							   Descricao      VARCHAR(100) NOT NULL,)

--	CREATE TABLE  Atendimento( ID_Atendimento INTEGER PRIMARY KEY IDENTITY ,
--							   Descricao      VARCHAR(100) NOT NULL,
--							   Data		   DATE NOT NULL,
--							   Hora		   TIME NOT NULL,
--							   Matricula	   INTEGER NOT NULL REFERENCES Funcionario(Matricula),
--							   ID_Cliente	   INTEGER NOT NULL REFERENCES Cliente(ID_Cliente),
--						     )

--  CREATE TABLE  Locacao(    ID_Locacao	       INTEGER PRIMARY KEY IDENTITY ,
--							  Descricao            VARCHAR(100) NOT NULL,
--						      Valor			       MONEY NOT NULL,
--						      ID_Atendimento	   INTEGER NOT NULL REFERENCES Atendimento(ID_Atendimento),
--						      ID_Equipamento	   INTEGER NOT NULL REFERENCES Equipamento(ID_Equipamento),
--					     )

--  CREATE TABLE  Prestacao(	   ID_Prestacao INTEGER PRIMARY KEY IDENTITY ,
--							       Descricao      VARCHAR(100) NOT NULL,
--							       ID_Equipamento	   INTEGER NOT NULL REFERENCES Equipamento(ID_Equipamento),		   
--					        )

--	CREATE TABLE  Servico( ID_Servico INTEGER PRIMARY KEY IDENTITY ,
--						   Descricao      VARCHAR(100) NOT NULL,)

--	CREATE TABLE  Prestacao_Servico(
--									ID_Servico	   INTEGER NOT NULL REFERENCES Servico(ID_Servico),
--									ID_Prestacao   INTEGER NOT NULL REFERENCES Prestacao(ID_Prestacao),
--									Quantidade     INTEGER NOT NULL,
--									Preco          MONEY   NOT NULL,
--								    )

--	CREATE TABLE  Pagamento(
--							ID_Pagamento       INTEGER PRIMARY KEY IDENTITY,
--							Data		       DATE    NOT NULL,
--							Valor			   MONEY   NOT NULL,
--							ID_Atendimento	   INTEGER NOT NULL REFERENCES Atendimento(ID_Atendimento),
--						    )


--	CREATE TABLE  Pix(
--					  Chave_Pix		   VARCHAR(100) PRIMARY KEY,
--					  Nome			   VARCHAR(100)    NOT NULL,
--					  Valor			   MONEY   NOT NULL,
--					  ID_Pagamento	   INTEGER NOT NULL REFERENCES Pagamento(ID_Pagamento),
--					  )

--	CREATE TABLE  Cartao(
--				     Numero_Cartao		   VARCHAR(100) PRIMARY KEY,
--				     Nome				   VARCHAR(100)    NOT NULL,
--				     Bandeira			   VARCHAR(50)     NOT NULL,
--					 Validade			   CHAR(4)		   NOT NULL,
--				     ID_Pagamento	       INTEGER         NOT NULL REFERENCES Pagamento(ID_Pagamento),
	--				    )