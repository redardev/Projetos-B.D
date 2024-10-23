INSERT INTO orquestra (id_orquestra, nome, cidade, pais, data_criacao) VALUES
(1, 'Orquestra Sinfônica de São Paulo', 'São Paulo', 'Brasil', '2000-04-12'),
(2, 'Orquestra Filarmônica de Minas Gerais', 'Belo Horizonte', 'Brasil', '1995-09-22'),
(3, 'Orquestra Sinfônica Brasileira', 'Rio de Janeiro', 'Brasil', '1988-03-15'),
(4, 'Orquestra Sinfônica da Bahia', 'Salvador', 'Brasil', '1999-07-19'),
(5, 'Orquestra Filarmônica de Goiás', 'Goiânia', 'Brasil', '1990-12-11'),
(6, 'Orquestra Sinfônica do Paraná', 'Curitiba', 'Brasil', '2005-02-14'),
(7, 'Orquestra Sinfônica de Porto Alegre', 'Porto Alegre', 'Brasil', '1985-06-25'),
(8, 'Orquestra Sinfônica do Estado de São Paulo', 'São Paulo', 'Brasil', '1978-11-30'),
(9, 'Orquestra Sinfônica do Recife', 'Recife', 'Brasil', '1993-08-17'),
(10, 'Orquestra Filarmônica de Brasília', 'Brasília', 'Brasil', '2001-01-09');

INSERT INTO Musico (nome_completo, identidade, nacionalidade, data_nascimento, email, id_orquestra) VALUES
('Carlos Pereira', '123456789', 'Brasileiro', '1980-01-15','ipjaws@gmail.com', 1),
('Mariana Souza', '987654321', 'Brasileira', '1978-05-23','oadncv@gmail.com', 2),
('Pedro Carvalho', '567890123', 'Brasileiro', '1985-08-19','aidhvba@gmail.com', 3),
('Ana Oliveira', '234567890', 'Brasileira', '1990-09-12','kjfvfjhv@gmail.com', 4),
('João Silva', '345678901', 'Brasileiro', '1975-11-05','audihvbo@gmail.com', 5),
('Bruno Costa', '456789012', 'Brasileiro', '1983-07-14','akjdbv@gmail.com', 6),
('Sofia Andrade', '567890234', 'Brasileira', '1988-03-22','auobdv@gmail.com', 7),
('Luciana Fernandes', '678901234', 'Brasileira', '1979-10-30','oaiujbfv@gmail.com', 8),
('Gabriel Moreira', '789012345', 'Brasileiro', '1986-06-17','avihb@gmail.com', 9),
('Isabel Ramos', '890123456', 'Brasileira', '1992-02-28','oubvvbab@gmail.com', 10);

INSERT INTO instrumento (id_instrumento, nome, descricao, tipo) VALUES
(1, 'Violino', 'Instrumento de corda', 'Corda'),
(2, 'Piano', 'Instrumento de teclado', 'Teclado'),
(3, 'Flauta', 'Instrumento de sopro', 'Sopro'),
(4, 'Trompete', 'Instrumento de metal', 'Sopro'),
(5, 'Harpa', 'Instrumento de corda dedilhada', 'Corda'),
(6, 'Contrabaixo', 'Instrumento de corda grave', 'Corda'),
(7, 'Tímpano', 'Instrumento de percussão', 'Percussão'),
(8, 'Saxofone', 'Instrumento de sopro', 'Sopro'),
(9, 'Clarinete', 'Instrumento de sopro', 'Sopro'),
(10, 'Violoncelo', 'Instrumento de corda', 'Corda');

INSERT INTO sinfonia (id_sinfonia, nome, data_criacao) VALUES
(1, 'Sinfonia da Amazônia', '2001-05-10'),
(2, 'Sinfonia do Pantanal', '1999-04-18'),
(3, 'Sinfonia do Cerrado', '1997-03-30'),
(4, 'Sinfonia das Águas', '1996-12-22'),
(5, 'Sinfonia do Sertão', '1988-07-17'),
(6, 'Sinfonia das Montanhas', '2004-09-11'),
(7, 'Sinfonia da Mata Atlântica', '2002-06-15'),
(8, 'Sinfonia do Café', '2003-08-28'),
(9, 'Sinfonia da Terra Vermelha', '2005-03-05'),
(10, 'Sinfonia do Rio São Francisco', '2006-12-10');

INSERT INTO concerto (id_concerto, id_orquestra, id_sinfonia, local, data_hora) VALUES
(1, 1, 1, 'Sala São Paulo', '2024-10-15 20:00:00'),
(2, 2, 2, 'Palácio das Artes', '2024-11-20 19:30:00'),
(3, 3, 3, 'Theatro Municipal do Rio de Janeiro', '2024-12-05 18:00:00'),
(4, 4, 4, 'Concha Acústica de Salvador', '2024-12-10 20:00:00'),
(5, 5, 5, 'Teatro Goiânia', '2025-01-15 19:00:00'),
(6, 6, 6, 'Teatro Guaíra', '2025-02-12 18:30:00'),
(7, 7, 7, 'Theatro São Pedro', '2025-03-22 20:00:00'),
(8, 8, 8, 'Sala São Paulo', '2025-04-14 19:30:00'),
(9, 9, 9, 'Teatro de Santa Isabel', '2025-05-03 18:00:00'),
(10, 10, 10, 'Teatro Nacional Cláudio Santoro', '2025-06-10 20:00:00');

INSERT INTO musico_sinfonia (id_musico, id_sinfonia) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO musico_instrumento (id_musico, id_instrumento) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
