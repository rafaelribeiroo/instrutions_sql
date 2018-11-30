-- Database: cursoemvideo

-- DROP DATABASE cursoemvideo;

CREATE DATABASE cursoemvideo
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt_BR.UTF-8'
    LC_CTYPE = 'pt_BR.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TYPE definicao AS ENUM ('M', 'F');
CREATE TABLE pessoas (
    -- Na maioria das linguagens, você precisa adicionar uma CONSTRAINT
    -- nomeada: 'AUTO INCREMENT', mas o Postgre já possui um tipo
    -- primitivo que vêm com essa constraint já aplicada.
    id            smallserial PRIMARY KEY,
    -- Será através do ID que identificaremos os registros na nossa 
    -- tabela, então inserimos a CONSTRAINT primary key
    nome          varchar(30) NOT NULL,
    nascimento    date,
    sexo          definicao default 'M',
    peso          decimal(5, 2),
    altura        decimal(3, 2),
    nacionalidade varchar(20) DEFAULT 'Brasil'
);