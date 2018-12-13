-- Esse arquivo é para canalizar apenas as práticas do arquivo: 3. Criando...

-- Database: cursoemvideo

-- DROP DATABASE cursoemvideo;

/* Quando você Cria um BD, o Postgre aplica todas as linhas subsequentes,
diferente de muitos BD relacionais */
CREATE DATABASE cursoemvideo;
-- WITH OWNER = postgres
-- ENCODING = 'UTF8'
-- LC_COLLATE = 'pt_BR.UTF-8'
-- LC_CTYPE = 'pt_BR.UTF-8'
-- TABLESPACE = pg_default
-- CONNECTION LIMIT = -1;

-- postgres=# \c <cursoemvideo>;

CREATE TABLE <nome_tabela> (
    -- <nome_coluna> <tipo_primário>(limite_entrada_dados),
    nome varchar(30),
    idade integer(3),
    sexo char(1),
    peso decimal,
    altura float,
    nacionalidade varchar(20)
);

-- <banco>=# \dt
