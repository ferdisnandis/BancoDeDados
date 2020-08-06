SELECT * FROM artista;
SELECT * FROM album;

--Dado Específico
SELECT * FROM album WHERE IdAlbum = 1;

-- Busca específica
SELECT * FROM artista WHERE nome LIKE '%en';

--Ordenação por ordem crescente (padrão)
SELECT * FROM album ORDER BY dataLançamento;

--Ordenação por ordem decrescente
SELECT * FROM artista ORDER BY nome DESC;

-- Entre valores específicos
SELECT * FROM album WHERE dataLançamento BETWEEN '2016-01-01' AND '2016-12-31';

SELECT 
	album.nome,
	estilo.estilo,
	estiloAlbum.IdEstiloAlbum

FROM estiloAlbum
	INNER JOIN album ON estiloAlbum.IdAlbum = album.IdAlbum
	INNER JOIN estilo ON estiloAlbum.IdEstilo = estilo.IdEstilo;