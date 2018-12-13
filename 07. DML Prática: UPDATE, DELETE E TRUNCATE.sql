-- Esse arquivo é para canalizar apenas as práticas do arquivo: 7. Manipulando...

-- Database: cursoemvideo

$ sudo -u postgres psql

-- Inserindo valores a serem trabalhados
insert into cursos
(idcurso, nome, descricao, carga, totaulas, ano)
values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução a Linguagem Java', '10', '29', '2010'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

-- Alteração tupla específica
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = 4; -- or ano = '2018' for multiple tuples

-- Apagar registros específicos
delete from cursos
where ano = '2018';

-- Remover todos os registros
truncate cursos;