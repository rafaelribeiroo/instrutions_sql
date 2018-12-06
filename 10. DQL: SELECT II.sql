-- Retorna todos os dados de todas as colunas
SELECT * FROM cursos;

-- Ordena de forma ascendente a partir do nome;
SELECT * FROM cursos
order by nome; -- OR order by nome asc

-- Ordena de forma descendente a partir do nome;
SELECT * FROM cursos
order by nome desc;

-- Filtrando colunas
SELECT nome, carga, ano FROM cursos
order by nome;

-- Ordena ascendente pelo ano/No ano duplicado ordena o nome ascendente
SELECT nome, carga, ano FROM cursos
order by ano, nome;

-- Utilizando a cláusula WHERE
SELECT * FROM cursos
where ano = '2016'
order by nome;

-- Cláusula where com CONDIÇÕES
SELECT nome, descricao FROM cursos
WHERE ano <= 2015
ORDER BY nome;

-- Entre condições
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016;

-- Organização dentro do ano
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016
order by ano desc, nome asc;

-- In: Valores específicos
-- Between: Especifica faixa de valores
SELECT nome, descricao, ano FROM cursos
where ano in (2014, 2016)
order by ano;

-- Entre duas condições usando operador lógico AND
SELECT * FROM cursos
where carga > 35 and totaulas < 30;

-- Usando operador lógico OR
SELECT * FROM cursos
where carga > 35 or totaulas < 30;