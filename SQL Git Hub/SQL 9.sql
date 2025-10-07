--DML
USE devconnect;

-- Usuario
INSERT INTO Usuario(Nome_completo, Nome_usuario, Email, Senha, Foto_Perfil_Url)
VALUES ('Bruno Rodrigues', 'Bruno_Rodrigues', 'bu546322@gmail', '12345b', 'Fotocachorromalhado');

SELECT * FROM Usuario;

INSERT INTO Publicacao(Descricao, Imagem_url, Data_publicacao, IdUsuario)
VALUES ('.', 'url=avsdhgavw', '2025-01-01', 1);

SELECT * FROM Publicacao;

INSERT INTO Curtida(Id_Usuario, Id_Publicacao)
VALUES (1, 9);

SELECT * FROM Curtida;


INSERT INTO Comentario(Texto, Data_Comentario, IdUsuario, IdPublicacao)
VALUES ('ronaldo', '2023-09-11', 1, 9);

SELECT * FROM Comentario;

INSERT INTO Seguidor (id_Usuario_Seguidor, id_Usuario)
VALUES (1, 1);

SELECT * FROM Seguidor;