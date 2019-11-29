-- Canalizando as práticas do arquivo: 15. Facilitando...

CREATE VIEW multiplos_join AS
    SELECT g.nome, c.nome AS curso_sendo_realizado FROM gafanhotos g
    JOIN gafanhoto_assiste_curso a
    ON g.id = a.id_gafanhoto
    JOIN cursos c
    ON c.id = a.id_curso
    ORDER BY g.nome;

SELECT * FROM multiplos_join;
