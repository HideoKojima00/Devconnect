--DQL

-- 1. Listar todas as publicações com nome do usuário
SELECT U.NomeUsuario, P.Descricao, P.ImagemUrl, P.DataPublicacao
FROM Publicacao P
JOIN Usuario U ON P.UsuarioId = U.UsuarioId;

-- 2. Ver quem curtiu cada publicação
SELECT P.PublicacaoId, U.NomeUsuario
FROM Curtida C
JOIN Usuario U ON C.UsuarioId = U.UsuarioId
JOIN Publicacao P ON C.PublicacaoId = P.PublicacaoId;

-- 3. Comentários de uma publicação específica (ex: 101)
SELECT U.NomeUsuario, C.Texto, C.DataComentario
FROM Comentario C
JOIN Usuario U ON C.UsuarioId = U.UsuarioId
WHERE C.PublicacaoId = 101;

-- 4. Ver quem segue quem
SELECT U.NomeUsuario AS Usuario, Sg.NomeUsuario AS Seguidor
FROM Seguidor S
JOIN Usuario U ON S.UsuarioId = U.UsuarioId
JOIN Usuario Sg ON S.SeguidorId = Sg.UsuarioId;
