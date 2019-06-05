-- Canalizando as práticas do arquivo: 04. Melhorando...

\connect curso_em_video;

DROP TABLE pessoas;

CREATE TYPE definicao AS ENUM ('M', 'F');
CREATE TABLE pessoas (
    id smallserial PRIMARY KEY,
    nome varchar(30) NOT NULL,
    nascimento date,
    sexo definicao DEFAULT 'M',
    peso decimal(5, 2),
    altura decimal(3, 2),
    nacionalidade varchar(20) DEFAULT 'Brasil'
);
