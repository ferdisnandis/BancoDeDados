/*
DDL's
Criamos o banco
*/

CREATE DATABASE veterinario;
GO
/*Usamos o banco veterinario*/
USE veterinario;
GO
/*Excluir o banco*/
/*DROP DATABASE veterinario;*/

/*Criar tabela Clínica*/
/* IDENTITY -> Gera os Id's automaticamente de forma sequencial*/
CREATE TABLE clinica
(
	IdClinica INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR (20) NOT NULL,
);

/*Criar tabela Veterinário*/
CREATE TABLE veterinario
(
	IdVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	CRMV INT NOT NULL,
	Nome VARCHAR (100) NOT NULL,

	--Chaves Estrageiras (Foreign Keys)
	IdClinica INT FOREIGN KEY REFERENCES clinica (IdClinica),
);

/*Alter = Incluir colunas esquecida (ADD)*/
/*Alter = Excluir colunas (DROP)*/

CREATE TABLE dono
(
IdDono INT IDENTITY PRIMARY KEY NOT NULL,
Nome VARCHAR (100) NOT NULL,
);

CREATE TABLE especie
(
IdEspecie INT IDENTITY PRIMARY KEY NOT NULL,
Especie VARCHAR (100) NOT NULL,
);

CREATE TABLE raca
(
IdRaca INT IDENTITY PRIMARY KEY NOT NULL,
TipoPet VARCHAR (100) NOT NULL,

--Chaves Estrageiras (Foreign Keys)
IdEspecie INT FOREIGN KEY REFERENCES especie (IdEspecie),
);

CREATE TABLE pets
(
IdPets INT IDENTITY PRIMARY KEY NOT NULL,
Nome VARCHAR(100) NOT NULL,
DataNascimento Date NOT NULL,

--Chaves Estrageiras (Foreign Keys)
IdRaca INT FOREIGN KEY REFERENCES raca (IdRaca),
IdDono INT FOREIGN KEY REFERENCES dono (IdDono),
);

CREATE TABLE atendimentos
(
IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
Consulta VARCHAR (100) NOT NULL,
DataAtendimento Date NOT NULL, 

--Chaves Estrageiras (Foreign Keys)
IdVeterinario INT FOREIGN KEY REFERENCES veterinario (IdVeterinario),
IdPets INT FOREIGN KEY REFERENCES pets (IdPets),
);