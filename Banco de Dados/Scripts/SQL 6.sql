--DML

-- Inserindo usuários
INSERT INTO Usuario (UsuarioId, NomeCompleto, NomeUsuario, Email, Senha, FotoPerfilUrl)
VALUES
(1, 'João da Silva', 'joaos', 'joao@email.com', 'senha123', 'url1.jpg'),
(2, 'Maria Oliveira', 'mariao', 'maria@email.com', 'senha456', 'url2.jpg');

-- Inserindo publicações
INSERT INTO Publicacao (PublicacaoId, UsuarioId, Descricao, ImagemUrl, DataPublicacao)
VALUES
(101, 1, 'Minha primeira foto!', 'foto1.jpg', '2025-10-01 14:00:00'),
(102, 2, 'Bom dia!', 'foto2.jpg', '2025-10-01 09:30:00');

-- Inserindo curtidas
INSERT INTO Curtida (CurtidaId, UsuarioId, PublicacaoId)
VALUES
(1, 2, 101),
(2, 1, 102);

-- Inserindo comentários
INSERT INTO Comentario (ComentarioId, UsuarioId, PublicacaoId, Texto, DataComentario)
VALUES
(1, 2, 101, 'Muito legal!', '2025-10-01 15:00:00'),
(2, 1, 102, 'Bom dia pra você também!', '2025-10-01 10:00:00');

-- Inserindo seguidores
INSERT INTO Seguidor (UsuarioId, SeguidorId, PublicacaoId)
VALUES
(1, 2, 101),
(2, 1, 102);

