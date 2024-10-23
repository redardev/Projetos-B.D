-- Criação da tabela Orquestra
CREATE TABLE Orquestra (
    id_orquestra INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    pais VARCHAR(50),
    data_criacao DATE
);

-- Criação da tabela Compositor
CREATE TABLE Compositor (
    id_compositor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    data_nascimento DATE,
    data_falecimento DATE
);

-- Criação da tabela Sinfonia
CREATE TABLE Sinfonia (
    id_sinfonia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_compositor INT,
    data_criacao DATE,
    FOREIGN KEY (id_compositor) REFERENCES Compositor(id_compositor)
);

-- Criação da tabela Musico
CREATE TABLE Musico (
    id_musico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    identidade VARCHAR(20),
    nacionalidade VARCHAR(50),
    data_nascimento DATE,
    id_orquestra INT,
    FOREIGN KEY (id_orquestra) REFERENCES Orquestra(id_orquestra)
);

-- Criação da tabela Instrumento
CREATE TABLE Instrumento (
    id_instrumento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

-- Criação da tabela Funcao_Musico
CREATE TABLE Funcao_Musico (
    id_funcao INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcao VARCHAR(50) NOT NULL,
    data_inicio DATE
);

-- Criação da tabela Musico_Instrumento (Relacionamento N:M entre Músico e Instrumento)
CREATE TABLE Musico_Instrumento (
    id_musico INT,
    id_instrumento INT,
    PRIMARY KEY (id_musico, id_instrumento),
    FOREIGN KEY (id_musico) REFERENCES Musico(id_musico),
    FOREIGN KEY (id_instrumento) REFERENCES Instrumento(id_instrumento)
);

-- Criação da tabela Musico_Sinfonia (Relacionamento N:M entre Músico, Função e Sinfonia)
CREATE TABLE Musico_Sinfonia (
    id_musico INT,
    id_sinfonia INT,
    id_funcao INT,
    PRIMARY KEY (id_musico, id_sinfonia),
    FOREIGN KEY (id_musico) REFERENCES Musico(id_musico),
    FOREIGN KEY (id_sinfonia) REFERENCES Sinfonia(id_sinfonia),
    FOREIGN KEY (id_funcao) REFERENCES Funcao_Musico(id_funcao)
);

-- Criação da tabela Concerto
CREATE TABLE Concerto (
    id_concerto INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME,
    local VARCHAR(100),
    id_orquestra INT,
    id_sinfonia INT,
    FOREIGN KEY (id_orquestra) REFERENCES Orquestra(id_orquestra),
    FOREIGN KEY (id_sinfonia) REFERENCES Sinfonia(id_sinfonia)
);
