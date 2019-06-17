-- Canalizando as práticas do arquivo: 06. Alterando...

\connect curso_em_video;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

ALTER TABLE pessoas
ALTER COLUMN profissao TYPE varchar(20),
ALTER COLUMN profissao SET DEFAULT '_blank';

ALTER TABLE pessoas
RENAME COLUMN profissao TO prof;

ALTER TABLE pessoas
RENAME TO gafanhotos;

CREATE TABLE IF NOT EXISTS cursos (
    idcurso smallserial PRIMARY KEY,
    nome character varying(30) NOT NULL UNIQUE,
    descricao text,
    carga int4 CHECK (carga >= 0),
    totaulas int4,
    ano character varying(4) DEFAULT '2019'
);

-- DROP TABLE IF EXISTS cursos;
