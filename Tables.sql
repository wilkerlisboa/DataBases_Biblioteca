USE BIBLIOTECA;

CREATE TABLE autores(
    autorID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Nacionalidade VARCHAR(50) 
);

CREATE TABLE editores(
    editoraID INT PRIMARY KEY,
    autorID INT,
    Nome VARCHAR(50),
    Localizacao VARCHAR(50),
    FOREIGN KEY (autorID) REFERENCES autores(autorID)
);

CREATE TABLE livros(
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(50),
    autorID INT,
    editoraID INT,
    AnoPublicacao INT,
    QuantidadeDisponivel INT,
    FOREIGN KEY (autorID) REFERENCES autores (autorID),
    FOREIGN KEY (editoraID) REFERENCES editores (editoraID)
);
CREATE TABLE usuarios(
    usuarioID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50),
    Telefone VARCHAR(50),
    INDEX (usuarioID),
    FOREIGN KEY (usuarioID) REFERENCES usuarios(usuarioID)

);
CREATE TABLE emprestimos(
    emprestimoID INT PRIMARY KEY,
    LivroID INT,
    usuarioID INT,
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (LivroID) REFERENCES livros(LivroID),
    FOREIGN KEY (usuarioID) REFERENCES usuarios(usuarioID)
);