-- Canalizando as práticas do arquivo: 14. Chaves...

\connect curso_em_video;

ALTER TABLE IF EXISTS gafanhotos
ADD COLUMN IF NOT EXISTS cursopreferido int4;

ALTER TABLE gafanhotos
ADD CONSTRAINT chave_estrangeira FOREIGN KEY (cursopreferido)
REFERENCES cursos (id);

UPDATE gafanhotos
set cursopreferido = 6 where id = 1;

-- Popule o cursopreferido através do PgAdmin para prosseguir

DELETE FROM cursos
WHERE id = 6;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos g INNER JOIN cursos c
ON (c.id = g.cursopreferido)
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos g LEFT OUTER JOIN cursos c
ON (c.id = g.cursopreferido)
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos g RIGHT OUTER JOIN cursos c
ON (c.id = g.cursopreferido)
ORDER BY c.nome;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos g FULL OUTER JOIN cursos c
ON (c.id = g.cursopreferido)
order by g.nome;
