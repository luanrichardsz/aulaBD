USE master;
IF DB_ID('Exercicios') IS NOT NULL
	DROP DATABASE Exercicios;
CREATE DATABASE Exercicios;
GO
USE Exercicios;

CREATE TABLE Agenda (
	Matricula INTEGER NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Nascimento DATE NOT NULL, 
	Sexo CHAR(1) NOT NULL,
	Profissao VARCHAR(20) NOT NULL,
	Salario MONEY	
	);


select * from Agenda;