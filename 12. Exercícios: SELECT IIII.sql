-- 1. Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.
select distinct profissao, count(profissao) from gafanhotos
group by profissao;

-- 2. Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
select nascimento, count(nome) from gafanhotos
where nascimento >= '2005-01-01'
group by nascimento;

-- 3. Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de
-- origem e o total de pessoas nascidas lá. Só nos interessam os países que 
-- tiverem mais de 3 gafanhotos com essa nacionalidade.
select nacionalidade, count(nome) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nome) > 3;

-- 4. Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas
-- pesam mais de 100Kg e que estão acima da média de altura de todos os
-- cadastrados.
select peso, altura from gafanhotos
group by peso, altura
having peso > 100 and altura > (select avg(altura) from gafanhotos);