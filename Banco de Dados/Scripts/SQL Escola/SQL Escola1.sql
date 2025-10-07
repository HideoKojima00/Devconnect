	--este comando cria um novo banco de dados
	CREATE DATABASE db_escola_T;

	--esse comando usa o BD
	USE db_escola_T;

	--este comando cria uma nova tabela
	CREATE TABLE tb_escola(
	id	     INT		      IDENTITY(1,1) PRIMARY KEY,
	nome     NVARCHAR(255)    NOT NULL,
	endereco NVARCHAR(255)    NOT NULL,
	);

	--DQL realiza consultas nas tabelas de um respectivo banco
	SELECT * FROM tb_escola;

	CREATE TABLE tb_turma(
		id INT IDENTITY(1,1) PRIMARY KEY,
		serie INT UNIQUE NOT NULL,
		periodo NCHAR(5) UNIQUE NOT NULL,
		numero_sala TINYINT NOT NULL,
		nome_turma NVARCHAR(100) NOT NULL,
		);

		--TABELA PROVA
		CREATE TABLE tb_prova(
		id             INT IDENTITY(1,1) PRIMARY KEY,
		materia        NVARCHAR(100) NOT NULL,
		horario        TIME          NOT NULL,
		data_prova     DATE          NOT NULL,
		nome_professor NVARCHAR(255) NOT NULL,
		nota           DECIMAL(3,1)  NOT NULL,
	);

	SELECT * FROM tb_prova;

	--TABELA ALUNO
	CREATE TABLE tb_aluno(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome NVARCHAR(255)            NOT NULL,
	cpf  NVARCHAR (11) UNIQUE     NOT NULL,
	matricula NVARCHAR(10) UNIQUE NOT NULL,
	data_nasc DATE                NOT NULL,

	id_escola INT NOT NULL FOREIGN KEY REFERENCES tb_escola(id)
	);

	SELECT * FROM tb_aluno;

	--tabela intermediaria turmaprova
	CREATE TABLE tb_turma_aluno(
	id_turma INT NOT NULL,
	id_prova INT NOT NULL,

	PRIMARY KEY(id_turma, id_prova)
	);

	--adicionar uma nova coluna a uma respectiva tabela 
	CREATE TABLE tb_aluno(
	ADD id_escola INT NOT NULL, FOREIGN KEY REFERENCES tb_escola(id);

	);
	--EXCLUI UMA TABELA
	DROP TABLE tb_aluno;

	--MODIFICA UMA TABELA
	ALTER TABLE tb_aluno
	ALTER TABLE id_escola INT NOT NULL;

    --TABELA ALUNO
	CREATE TABLE tb_aluno(
	id          INT  IDENTITY(1,1) PRIMARY KEY,
	nome        NVARCHAR(255)      NOT NULL,
	cpf         NCHAR(11)          NOT NULL,
	matricula   NVARCHAR(10)       NOT NULL,
	data_nasc   DATE               NOT NULL,

	id_escola INT FOREIGN KEY REFERENCES tb_escola(id)
	);

	SELECT * FROM tb_aluno;

	--TABELA INTERMEDIARIA TURMAPROVA
	CREATE TABLE tb_turma_prova(
		id_turma INT	NOT NULL,
		id_prova INT	NOT NULL,

		PRIMARY KEY(id_turma, id_prova)

	);

	GO

	SELECT * FROM tb_turma_prova;

