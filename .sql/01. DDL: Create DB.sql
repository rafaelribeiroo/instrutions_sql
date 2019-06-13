-- Canalizando as práticas do arquivo: 05. Criando...

CREATE DATABASE curso_em_video;

\connect curso_em_video;

CREATE TABLE pessoas (
    nome varchar(30),
    idade smallint,
    sexo char(1),
    peso decimal,
    altura float,
    nacionalidade varchar(20)
);
