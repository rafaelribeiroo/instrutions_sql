-- Esse arquivo é para canalizar apenas as práticas do arquivo: 4. Melhorando...

-- Database: cursoemvideo

/* O TYPE abaixo é necessário para um campo aceitar apenas as duas strings
passadas abaixo */
CREATE TYPE definicao AS ENUM ('M', 'F');
CREATE TABLE pessoas (
    -- CONSTRAINT: PRIMARY KEY
    id            smallserial PRIMARY KEY,
    nome          varchar(30) NOT NULL,
    nascimento    date,
    sexo          definicao default 'M',
    peso          decimal(5, 2),
    altura        decimal(3, 2),
    nacionalidade varchar(20) DEFAULT 'Brasil'
);

/* A construção da tabela abaixo está correta também, permitindo até
acentos nos ATRIBUTOS
CREATE TABLE `pessoas` (
    -- CONSTRAINT: PRIMARY KEY
    `id`            smallserial PRIMARY KEY,
    `nome`          varchar(30) NOT NULL,
    `nascimento`    date,
    `sexo`          definicao default 'M',
    `peso`          decimal(5, 2),
    `nacionalidade` varchar(20) DEFAULT 'Brasil'
    `altura`        decimal(3, 2),
); */
