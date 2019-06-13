-- Canalizando as práticas do arquivo: 07. Manipulando...

\connect curso_em_video;

INSERT INTO cursos
(idcurso, nome, descricao, carga, totaulas, ano)
VALUES
(DEFAULT, 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
(DEFAULT, 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
(DEFAULT, 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
(DEFAULT, 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
(DEFAULT, 'Jarva', 'Introdução a Linguagem Java', '10', '29', '2010'),
(DEFAULT, 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
(DEFAULT, 'Word', 'Curso completo de Word', '40', '30', '2016'),
(DEFAULT, 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
(DEFAULT, 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
(DEFAULT, 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

UPDATE cursos
SET ano = '2050', carga = '800'
WHERE ano = '2018' AND totaulas = 30;

DELETE FROM cursos
WHERE ano = '2018';

TRUNCATE cursos;

DROP TABLE cursos;
DROP TABLE gafanhotos;
