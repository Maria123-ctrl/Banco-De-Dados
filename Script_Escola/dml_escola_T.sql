--Usar um banco já criado
USE db_escola_T;


--INSERIR UM REgISTRO NA TABELA ESCOLA
INSERT INTO tabela_escola(nome, endereco)
VALUES('Torloni','Estrada das lagrimas, 579 - São José');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
(2, 'Tarde',4,'Segundo ano A DS'),
(2, 'Manhã',4,'Segundo ano A DS'),
(2, 'Noite',4,'Segundo ano A DS');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova)
VALUES
('Ana Claudia', 'Educacao Fisica', '13:15:00', 0, '2025-09-25'),
('Rogeria', 'Matemática', '14:20:00', 9, '2025-09-26'),
('Rogeria', 'Matemática', '14:20:00', 9, '2025-09-26');

SELECT * FROM tb_prova;

INSERT INTO tb_aluno(nome, cpf, matricula, data_nascimento, id_escola)
VALUES
('Isadora Carolina Dias', '25406155890', '13456ABC', '1999/01/22', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nascimento, id_escola)
VALUES
('Maria Isabel', '29866155890', '167cbwABC2', '2000/03/17', 1),
('Bruna Tatiane Assunção', '26367227857', '09odng5432', '1999/08/12', 1),
('Giulia Macedo Bernaddini', '96578904321', '00pw32nmb6', '2000/03/17', 1),
('Sueli Letícia Eduarda Lopes', '15199681834', '000qp30987', '1999/03/15', 1),
('Fátima Elaine da Silva', '03562301804', '000019op02', '1999/05/11', 1);

SELECT * FROM tb_aluno;


--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR
DELETE FROM tb_turma
WHERE ID = 2;

DELETE FROM tb_turma
WHERE ID = 3;

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
--UPDATE tb_aluno
--SET nome = 'Davi', cpf = '08835205973'
--WHERE id = 1;


