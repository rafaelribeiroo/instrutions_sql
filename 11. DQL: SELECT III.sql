-- Selecionar dados que pareçam com:
SELECT * FROM cursos
where nome ilike 'P%';  -- Case sensitive, não diferencia P de p

SELECT * FROM cursos
where nome ilike '%a'; -- Nome pareça com qualquer coisa encerrando com A

SELECT * FROM cursos
where nome ilike '%a%';  -- Qualquer coisa na frente e atrás, inclusive nada

-- Não aparece A em lugar nenhum
SELECT * FROM cursos
where nome not ilike '%a%';

-- Busca PHOTOSHOP e PHP
SELECT * FROM cursos
where nome ilike 'ph%p';

SELECT * FROM cursos
where nome ilike 'ph%p_';

-- Começa com p, tem alguma coisa após, tem outro p e finaliza com qualquer coisa
SELECT * FROM cursos
where nome ilike 'p_p%';

-- Tem p, duas coisas, tem t e qualquer outra coisa
SELECT * FROM cursos
where nome ilike 'p__t%';

-- Já que tem várias ocorrências, busque apenas uma
select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- Quantidade de registros
select count(*) from cursos;

-- Quantidade de registros específicos
select count(*) from cursos where carga > 40;

-- Quantidade nomes de cursos
select count(nome) from cursos;

-- Selecione a maior carga entre todos os cursos
select max(carga) as maior_carga from cursos;

-- Selecione nos cursos de 2016 o máximo de aulas que dei em um curso
select max(totaulas) from cursos
where ano = '2016';

-- Selecione nos cursos de 2016 o mínimo de aulas que dei em um curso
select min(nome), min(totaulas) from cursos
where ano = '2016';

-- Somatório
select sum(totaulas) from cursos
where ano = '2016';

-- Tirar a média AVERAGE
select avg(totaulas) from cursos
where ano = '2016';