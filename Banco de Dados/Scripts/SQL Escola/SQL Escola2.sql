	--usar um banco ja criado
	USE db_escola_T;

	--inserir um registro na tabela escolar
	INSERT INTO tb_escola (nome, endereco)
	VALUES('TORLONI', 'ESTRADA DAS LAGRIMAS, 579, - SAO JOSE');

	SELECT * FROM tb_escola;

	--INSERIR UM REGISTRO NA TABELA TURMA
	INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
	VALUES
	(2, 'TARDE', 30, '2ds'),
	(2, 'TARDE', 30, '2ds'),
	(2, 'TARDE', 30, '2ds');

	SELECT * FROM tb_turma;

	--inserir um registro na tabela prova

	INSERT INTO tb_prova(nome_professor, materia, horario, nota, data_prova)
	VALUES
	('ANA CLAUDIA', 'EDUCACAO FISICA', '13:15:00', 0, '2025-09-25'),
	('ROGERIA', 'MATEMATICA','14:20:00', 10, '2025-09-26'),
	('ADAIR', 'SOCIOLOGIA', '08:30:00', 7.5, '2025-09-29');

	SELECT * FROM tb_prova;

		--TABELA ALUNO
	INSERT INTO tb_aluno(nome, cpf, data_nasc, id_escola)
	VALUES ('haroldo', '4620907869', 'Haroldo78','22-02-1980', 1);

	('Xebec','09237598', 'Xebec98', '1960-23-03', 1),
	('Kaido','02347037', 'Kaido23',  '19970-10-02', 1),
	('Shaky', '02678837', 'Shay88', '1975-19-01', 1),
	('Garp', '02322437', 'Garp22',  '1960-20-02', 1),

	SELECT * FROM tb_aluno;

	--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR
	DELETE FROM tb_aluno
	WHERE id = 6;

	--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
	UPDATE tb_aluno
	SET data_nasc = '22-02-1980'
	WHERE nome = 'Haroldo';

	SELECT * FROM tb_aluno;
