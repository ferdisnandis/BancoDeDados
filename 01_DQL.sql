USE veterinario;
/*DQL - Data Query Language*/

--Selecionar todos os dados da tabela
SELECT * FROM veterinario;

-- Selecionar um dado específico
SELECT * FROM veterinario WHERE IdVeterinario = 1;

-- Selecionar como uma busca específica (detalhado)
SELECT * FROM veterinario WHERE CRMV LIKE '%753' AND IdClinica LIKE 2;

--Ordenação por forma crescente (padrão)
SELECT * FROM veterinario ORDER BY Nome;

--Ordenação por forma crescente
SELECT * FROM veterinario ORDER BY Nome ASC;

--Ordenação por forma decrescente
SELECT * FROM veterinario ORDER BY IdClinica DESC;

-- Selecionar dados entre valor específicos
SELECT * FROM atendimentos WHERE DataAtendimento BETWEEN '2020-08-01' AND '2020-08-31';

SELECT * FROM atendimentos;
SELECT * FROM veterinario;
INSERT INTO atendimentos (Consulta, DataAtendimento, IdVeterinario, IdPets) VALUES ('Cirurgia','2020-01-09', 5, 2);