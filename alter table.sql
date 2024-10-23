-- Adicionar coluna 'email' na tabela 'Musico'
ALTER TABLE musico
ADD email VARCHAR(100);

-- Modificar tipo de dados da coluna 'nome' na tabela 'Musico' para TEXT
ALTER TABLE musico
MODIFY nome TEXT;

-- Renomear a coluna 'nome' para 'nome_completo' na tabela 'Musico'
ALTER TABLE musico
CHANGE nome nome_completo VARCHAR(100);

-- Excluir a coluna 'descricao' da tabela 'Instrumento'
ALTER TABLE instrumento
DROP COLUMN descricao;

-- Criar a coluna 'descricao' de volta
ALTER TABLE instrumento
ADD descricao VARCHAR(100);

-- Criar a coluna 'tipo'
ALTER TABLE instrumento
ADD tipo VARCHAR(100);

-- Adicionar chave estrangeira para 'idOrquestra' na tabela 'Musico'
ALTER TABLE musico
ADD CONSTRAINT fk_musico_orquestra FOREIGN KEY (idOrquestra)
REFERENCES orquestra(idOrquestra);

-- Remover a chave estrangeira 'fk_musico_orquestra' da tabela 'Musico'
ALTER TABLE musico
DROP FOREIGN KEY fk_musico_orquestra;

-- Renomear a tabela 'Musico' para 'Artista'
RENAME TABLE musico TO artista;

-- Adicionar índice na coluna 'nome_completo' da tabela 'Artista'
ALTER TABLE artista
ADD INDEX idx_nome_artista (nome_completo);

-- Remover índice 'idx_nome_artista' da tabela 'Artista'
DROP INDEX idx_nome_artista ON artista;

-- Alterar o nome da coluna 'dataNasc' para 'dataNascimento' na tabela 'Artista'
ALTER TABLE artista
CHANGE dataNasc dataNascimento DATE;

-- Definir a coluna 'email' como única na tabela 'Artista'
ALTER TABLE artista
ADD CONSTRAINT unico_email UNIQUE (email);

-- Adicionar a coluna 'nacionalidade' com valor padrão 'Desconhecido' na tabela 'Artista'
ALTER TABLE Artista
ADD nacionalidade VARCHAR(50) DEFAULT 'Desconhecido';

-- Alterar o valor padrão da coluna 'nacionalidade' para 'Brasil'
ALTER TABLE artista
ALTER COLUMN nacionalidade SET DEFAULT 'Brasil';

-- Remover o valor padrão da coluna 'nacionalidade'
ALTER TABLE artista
ALTER COLUMN nacionalidade DROP DEFAULT;

-- Excluir a tabela 'Musico_Instrumento'
DROP TABLE musico_Instrumento;

drop database escola_musica
