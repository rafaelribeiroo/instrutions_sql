-- Canalizando as práticas do arquivo: 09. Select...

\connect curso_em_video;

SELECT * FROM cursos
ORDER BY nome;  -- ORDER BY nome DESC

SELECT * FROM cursos
WHERE ano <= '2015'
ORDER BY nome;

SELECT nome, ano FROM cursos
WHERE ano BETWEEN '2014' AND '2016'
ORDER BY ano DESC, nome ASC;

SELECT nome, descricao, ano FROM cursos
WHERE ano IN ('2014', '2016')
ORDER BY ano;

SELECT * FROM cursos
WHERE carga > 35 AND totaulas < 30;
