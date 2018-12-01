-- Esse arquivo é para canalizar apenas as práticas do arquivo: 6. Alterando...

-- Database: cursoemvideo

$ sudo -u postgres psql

-- postgres =# \c cursoemvideo

-- Add new column
alter table pessoas
add profissao varchar(10);


-- Alter the existing column
alter table pessoas
alter profissao type varchar(20),
alter profissao set not null,
alter profissao set default '_blank';

-- Rename column
alter table pessoas
rename profissao to prof;

-- Remove new column
alter table pessoas
drop profissao;

-- Rename table
alter table pessoas
rename to gafanhotos

-- Creating another table, with more constraint's
create table if not exists cursos (
    idcurso   int4 primary key;
    nome      character varying(30) not null unique,
    descricao text,
    carga     int4 check (carga > 0),
    totaulas  int4,
    ano       character varying(4) default '2018',
)

/*
 * Removendo um banco de dados, se ele existir
 */
drop database if exists <nome_tabela>;
