USE db_escola_T;

--Listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno;

--Lista as matriculas dos alunos em ordem crescente
SELECT matricula
FROM tb_aluno
ORDER BY nome ASC;

--Lista os id's dos 3 primeiros alunos que foram recem cadastrados
SELECT TOP 1 matricula
FROM tb_aluno
ORDER BY id DESC;

--Lista todos os alunos
