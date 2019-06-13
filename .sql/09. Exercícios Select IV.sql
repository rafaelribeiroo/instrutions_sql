-- 1. Uma lista com as profissões dos gafanhotos e seus respectivos
-- quantitativos.
SELECT DISTINCT profissao, COUNT(profissao) FROM gafanhotos
GROUP BY profissao;

-- 2. Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?
SELECT nascimento, COUNT(nome) FROM gafanhotos
WHERE nascimento >= '2005-01-01'
GROUP BY nascimento;

-- 3. Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país
-- de origem e o total de pessoas nascidas lá. Só nos interessam os países que
-- tiverem mais de 3 gafanhotos com essa nacionalidade.
SELECT nacionalidade, COUNT(nome) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nome) > 3;

-- 4. Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas
-- pesam mais de 100Kg e que estão acima da média de altura de todos os
-- cadastrados.
SELECT peso, altura FROM gafanhotos
GROUP BY peso, altura
HAVING peso > 100 AND altura > (SELECT AVG(altura) FROM gafanhotos);
