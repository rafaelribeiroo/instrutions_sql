-- Canalizando as práticas do arquivo: 11. Select...

\connect curso_em_video;

SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga;

SELECT carga, count(nome) FROM cursos
WHERE totaulas = 30
GROUP BY carga;

SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga
HAVING COUNT(nome) > 3;

SELECT ano, count(*) from cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano > '2013'
ORDER BY COUNT(*) DESC;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > '2015'
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);
