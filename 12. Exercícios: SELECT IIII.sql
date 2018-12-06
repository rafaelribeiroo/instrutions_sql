-- 1. Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.
select distinct profissao, count(profissao) from gafanhotos
group by profissao;

-- 2. Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
select * from gafanhotos
where nome = 'F' or nome = 'M'
and nascimento > '2005-01-01'
order by count(*);
