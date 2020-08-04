/*DML - Dara Manipulation Language*/
--INSERT - Inserir daos
INSERT INTO usuario (nome, permissao, email, senha) VALUES ('Marcos','Artista','Marcos@email.com','67891');
INSERT INTO estilo (estilo) VALUES ('Rock');
INSERT INTO artista (nome, IdEstilo) VALUES ('Queen', 2);
INSERT INTO album (nome, dataLançamento, Localizacao, QtdMinutos, ativo, IdArtista) VALUES ('Jazz', '1978-11-10', 'UK', 44, 1, 2);
INSERT INTO estiloAlbum (IdAlbum, IdEstilo) VALUES (2, 2);
--SELECT - Mostrar tabela
SELECT * FROM usuario;
SELECT * FROM estilo;
SELECT * FROM artista;
SELECT * FROM album;
SELECT * FROM estiloAlbum;
