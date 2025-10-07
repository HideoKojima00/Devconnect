--DDL

-- Tabela: Usuario
CREATE TABLE Usuario (
    UsuarioId INT PRIMARY KEY,
    NomeCompleto VARCHAR(100),
    NomeUsuario VARCHAR(50),
    Email VARCHAR(100),
    Senha VARCHAR(100),
    FotoPerfilUrl VARCHAR(255)
);

-- Tabela: Publicacao
CREATE TABLE Publicacao (
    PublicacaoId INT,
    UsuarioId INT,
    Descricao TEXT,
    ImagemUrl VARCHAR(255),
    DataPublicacao DATETIME,
    PRIMARY KEY (PublicacaoId, UsuarioId),
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId)
);

-- Tabela: Curtida
CREATE TABLE Curtida (
    CurtidaId INT PRIMARY KEY,
    UsuarioId INT,
    PublicacaoId INT,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId),
    FOREIGN KEY (PublicacaoId) REFERENCES Publicacao(PublicacaoId)
);

-- Tabela: Comentario
CREATE TABLE Comentario (
    ComentarioId INT,
    UsuarioId INT,
    PublicacaoId INT,
    Texto TEXT,
    DataComentario DATETIME,
    PRIMARY KEY (ComentarioId, UsuarioId),
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId),
    FOREIGN KEY (PublicacaoId) REFERENCES Publicacao(PublicacaoId)
);

-- Tabela: Seguidor
CREATE TABLE Seguidor (
    UsuarioId INT,
    SeguidorId INT,
    PublicacaoId INT,
    PRIMARY KEY (UsuarioId, SeguidorId),
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(UsuarioId),
    FOREIGN KEY (SeguidorId) REFERENCES Usuario(UsuarioId),
    FOREIGN KEY (PublicacaoId) REFERENCES Publicacao(PublicacaoId)
);