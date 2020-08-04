/* DML - Data Manipulation Language*/
-- INSERT - Inserir dados
INSERT INTO clinica(Nome, Endereco) VALUES ('UniPets', 'Rua Margaridas');
INSERT INTO veterinario (IdClinica, Nome, CRMV) VALUES (2, 'Maria', 951753);
INSERT INTO dono (Nome) VALUES ('Marcos');
INSERT INTO especie (Especie) VALUES ('Pitbull');
INSERT INTO raca (TipoPet, IdEspecie) VALUES ( 'Gato', 5 );
INSERT INTO pets (Nome, DataNascimento, IdRaca, IdDono) VALUES ('Mel', '2019-10-07', 6, 2);
INSERT INTO atendimentos (Consulta, DataAtendimento, IdVeterinario, IdPets) VALUES ('Check-up', '2020-01-15',2, 2);

--DELETE - Deletar dados
--DELETE FROM dono WHERE IdDono = 3;
--DELETE FROM especie;

--DQL de consulta simples
SELECT * FROM clinica;
SELECT * FROM veterinario;
SELECT * FROM dono;
SELECT * FROM especie;
SELECT * FROM raca;
SELECT * FROM pets;
SELECT * FROM atendimentos;