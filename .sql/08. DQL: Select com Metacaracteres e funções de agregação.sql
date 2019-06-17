-- Canalizando as práticas do arquivo: 10. Select...

\connect curso_em_video;

SELECT * FROM cursos
WHERE nome ILIKE '%A%';

SELECT * FROM cursos
WHERE nome NOT ILIKE '%A%';

SELECT * FROM cursos
WHERE nome ILIKE 'p__t%';

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT COUNT(*) FROM cursos
WHERE carga > 40;

SELECT MAX(totaulas) FROM cursos
WHERE ano = '2016';

SELECT MIN(nome), MIN(totaulas) FROM cursos
WHERE ano = '2016';

SELECT SUM(totaulas) FROM cursos
where ano = '2016';

SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016';
