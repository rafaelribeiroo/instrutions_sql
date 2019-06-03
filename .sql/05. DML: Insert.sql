-- Canalizando as práticas do arquivo: 05. Inserindo...

\c curso_em_video;

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Rafael', '1994-07-27', 'M', 85.5, 1.80, 'Irlanda');

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', 78.50, 1.83, 'Brasil'),
('Maria', '1999-12-30', 'F', 55.20, 1.65, 'Portugal'),
('Creuza', '1920-12-30', 'F', 50.20, 1.65, 'Brasil'),
('Adalgiza', '1930-11-02', 'F', 63.20, 1.75, 'Irlanda'),
('Cláudio', '1975-04-22', 'M', 99.00, 2.15, 'Brasil'),
('Pedro', '1999-12-03', 'M', 87.00, 2.00, 'Brasil'),
('Janaína', '1987-11-12', 'F', 75.40, 1.66, 'EUA');
