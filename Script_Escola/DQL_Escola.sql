USE db_escola_T;

--Listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno;

--Lista as matriculas dos alunos em ordem crescente
SELECT matricula 
FROM tb_aluno
ORDER BY id ASC;

--Listar os id's dos 3 primeiros alunos que foram recem cadastrados
	SELECT TOP 3 matricula 
	FROM tb_aluno
	ORDER BY id DESC;

--Lista todos os alunos
SELECT nome, cpf
FROM tb_aluno
WHERE nome = 'Bruna Tatiane Assunção';

--lista o nome da escola Torloni
SELECT nome, endereco
FROM tb_escola
WHERE nome = 'Torloni';

--lista a prova
SELECT nome_professor, materia
FROM tb_prova
WHERE nome_professor = 'Ana Claudia'

--lista as turmas seduc
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'Segundo ano A DS';

--exiba 
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre quantos alunos existe na base
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nascimento) AS idade_mais_novo, FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT MIN(data_nascimento) AS idade_mais_velha, FROM tb_aluno;

--Exibe a idade mais velha e a idade mais nova em uma unica consultaa
SELECT MIN(data_nascimento) AS idade_mais_velha, MAX(data_nascimento) AS idade_mais_novo
FROM tb_aluno;

SELECT nome, data_nascimento
FROM tb_aluno
ORDER BY data_nascimento;

--media aritimetica de notas nas provas
SELECT  AVG(nota) AS media_nota FROM tb_prova;

--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_aluno;

SELECT * FROM tb_aluno;

--Mostre os nomes dos alunos mais novos
SELECT MAX(data_nascimento) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(id)
FROM tb_turma
WHERE periodo = 'Tarde';

