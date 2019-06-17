-- Canalizando as práticas do arquivo: 14. INNER...

\connect curso_em_video;

CREATE TABLE IF NOT EXISTS gafanhoto_assiste_curso (
    id smallserial NOT NULL PRIMARY KEY,
    data date,
    id_gafanhoto int4 REFERENCES gafanhotos (id),
    id_curso int4 REFERENCES cursos(id)
);

INSERT INTO gafanhoto_assiste_curso
(data, id_gafanhoto, id_curso)
VALUES
('2014-03-01', 1, 2),
('2015-12-22', 3, 6),
('2014-01-01', 22, 12),
('2016-05-12', 1, 19);

SELECT g.nome, c.nome AS curso_sendo_realizado FROM gafanhotos g
INNER JOIN gafanhoto_assiste_curso a   -- or JOIN
ON g.id = a.id_gafanhoto
INNER JOIN cursos c
ON c.id = a.id_curso
ORDER BY g.nome;
