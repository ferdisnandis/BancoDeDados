/*	DDL's
Criamos o banco*/

CREATE DATABASE optus;
USE optus;

CREATE TABLE usuario
(
	IdUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (100) NOT NULL,
	permissao VARCHAR (100) NOT NULL,
	email VARCHAR (100) NOT NULL,
	senha VARCHAR (100) NOT NULL,
);

CREATE TABLE estilo
(
	IdEstilo INT IDENTITY PRIMARY KEY NOT NULL,
	estilo VARCHAR (50) NOT NULL,
);

CREATE TABLE artista
(
	IdArtista INT IDENTITY PRIMARY KEY NOT NULL,
	--Chaves Estrangeiras (Foreign Keys)
	IdEstilo INT FOREIGN KEY REFERENCES estilo (IdEstilo),
);

CREATE TABLE album
(
	IdAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	nome VARCHAR (100) NOT NULL,
	dataLançamento DATE NOT NULL,
	localizacao VARCHAR (100) NOT NULL,
	QtdMinutos DECIMAL NOT NULL,
	ativo INT NOT NULL,
	--Chaves Estrangeiras (Foreign Keys)
	IdArtista INT FOREIGN KEY REFERENCES artista (IdArtista),
);

CREATE TABLE estiloAlbum
(
	IdEstiloAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	--Chaves Estrangeiras (Foreign Keys)
	IdAlbum INT FOREIGN KEY REFERENCES album (IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES estilo (IdEstilo),
);

