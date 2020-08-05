SELECT * FROM artista;
SELECT * FROM album;

--Dado Espec�fico
SELECT * FROM album WHERE IdAlbum = 1;

-- Busca espec�fica
SELECT * FROM artista WHERE nome LIKE '%en';

--Ordena��o por ordem crescente (padr�o)
SELECT * FROM album ORDER BY dataLan�amento;

--Ordena��o por ordem decrescente
SELECT * FROM artista ORDER BY nome DESC;

-- Entre valores espec�ficos
SELECT * FROM album WHERE dataLan�amento BETWEEN '2016-01-01' AND '2016-12-31';