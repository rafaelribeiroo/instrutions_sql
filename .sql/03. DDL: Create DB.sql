-- Canalizando as práticas do arquivo: 05. Criando...

CREATE DATABASE curso_em_video;

\c curso_em_video;

CREATE TABLE pessoas (
    nome varchar(30),
    idade integer(3),
    sexo char(1),
    peso decimal,
    altura float,
    nacionalidade varchar(20)
);
