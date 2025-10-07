--DQL

-- Listar todos os usuários
SELECT * FROM Usuario;

-- Mostrar publicações com nome do usuário
SELECT p.PublicacaoId, u.NomeUsuario, p.Descricao, p.DataPublicacao
FROM Publicacao p
JOIN Usuario u ON p.UsuarioId = u.UsuarioId;

-- Mostrar comentários de cada publicação
SELECT c.ComentarioId, u.NomeUsuario, c.Texto, c.DataComentario
FROM Comentario c
JOIN Usuario u ON c.UsuarioId = u.UsuarioId
ORDER BY c.DataComentario DESC;

-- Mostrar curtidas em uma publicação
SELECT u.NomeUsuario, p.Descricao
FROM Curtida cu
JOIN Usuario u ON cu.UsuarioId = u.UsuarioId
JOIN Publicacao p ON cu.PublicacaoId = p.PublicacaoId
WHERE p.PublicacaoId = 1;

-- Mostrar quem segue quem
SELECT u.NomeUsuario AS Usuario, s.NomeUsuario AS Seguidor
FROM Seguidor sg
JOIN Usuario u ON sg.UsuarioId = u.UsuarioId
JOIN Usuario s ON sg.SeguidorId = s.UsuarioId;
