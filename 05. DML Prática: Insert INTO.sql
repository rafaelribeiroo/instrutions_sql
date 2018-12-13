-- Esse arquivo é para canalizar apenas as práticas do arquivo: 5. Inserindo...

-- Database: cursoemvideo

/* Para facilitar a instrução de inserção de registros
Quando não souber a ordem correta, coloque os
atributos acima e os valores abaixo
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
(1, 'Godofredo', '1984-01-02', 'M', 78.5, 1.83, 'Brasil');
*/

INSERT INTO pessoas
-- Insira na tabela pessoas, nos campos...
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
-- ...os valores
(1, 'Godofredo', '1984-01-02', 'M', 78.5, 1.83, 'Brasil');

-- Se for na sequência correta, não precisa de especificar atributos
INSERT INTO pessoas
VALUES (DEFAULT, 'Rafael', '1994-07-27', 'M', 85.5, 1.80, 'Irlanda');

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Richelly', '1990-03-03', 'F', 65.2, 1.63, 'Brasil'),
('Francielly', '1989-07-12', 'F', 98.5, 1.65, 'Brasil'),
('Gabriel', '1987-11-06', 'M', 97.7, 1.92, 'Brasil');
