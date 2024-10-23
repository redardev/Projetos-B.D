-- comandos update

UPDATE orquestra SET nome = 'Orquestra Sinfônica do Brasil' WHERE id_orquestra = 1;
UPDATE orquestra SET cidade = 'Campinas' WHERE id_orquestra = 2;
UPDATE orquestra SET pais = 'Portugal' WHERE id_orquestra = 3;
UPDATE orquestra SET data_criacao = '1998-05-20' WHERE id_orquestra = 4;
UPDATE orquestra SET nome = 'Orquestra Filarmônica Nacional' WHERE id_orquestra = 5;
UPDATE orquestra SET cidade = 'Curitiba' WHERE id_orquestra = 6;
UPDATE orquestra SET nome = 'Orquestra Sinfônica Popular' WHERE id_orquestra = 7;
UPDATE orquestra SET data_criacao = '2001-08-18' WHERE id_orquestra = 8;
UPDATE orquestra SET nome = 'Orquestra Sinfônica de Recife' WHERE id_orquestra = 9;
UPDATE orquestra SET nome = 'Orquestra Filarmônica do DF' WHERE id_orquestra = 10;

UPDATE Musico SET nome_completo = 'Carlos Silva' WHERE id_musico = 1;
UPDATE Musico SET identidade = '111111111' WHERE id_musico = 2;
UPDATE Musico SET nacionalidade = 'Brasileiro' WHERE id_musico = 3;
UPDATE Musico SET data_nascimento = '1985-07-25' WHERE id_musico = 4;
UPDATE Musico SET email = 'maria.souza@gmail.com' WHERE id_musico = 5;
UPDATE Musico SET nome_completo = 'João Pereira' WHERE id_musico = 6;
UPDATE Musico SET identidade = '222222222' WHERE id_musico = 7;
UPDATE Musico SET nacionalidade = 'Brasileira' WHERE id_musico = 8;
UPDATE Musico SET email = 'luciana.fernandes@yahoo.com' WHERE id_musico = 9;
UPDATE Musico SET data_nascimento = '1990-11-30' WHERE id_musico = 10;

UPDATE instrumento SET nome = 'Violino Elétrico' WHERE id_instrumento = 1;
UPDATE instrumento SET descricao = 'Instrumento de teclado digital' WHERE id_instrumento = 2;
UPDATE instrumento SET tipo = 'Percussão' WHERE id_instrumento = 3;
UPDATE instrumento SET nome = 'Trombone' WHERE id_instrumento = 4;
UPDATE instrumento SET descricao = 'Instrumento de sopro' WHERE id_instrumento = 5;
UPDATE instrumento SET tipo = 'Corda' WHERE id_instrumento = 6;
UPDATE instrumento SET nome = 'Tambor' WHERE id_instrumento = 7;
UPDATE instrumento SET descricao = 'Instrumento de percussão grave' WHERE id_instrumento = 8;
UPDATE instrumento SET tipo = 'Corda' WHERE id_instrumento = 9;
UPDATE instrumento SET nome = 'Violoncelo Elétrico' WHERE id_instrumento = 10;

UPDATE sinfonia SET nome = 'Sinfonia do Norte' WHERE id_sinfonia = 1;
UPDATE sinfonia SET data_criacao = '2005-07-10' WHERE id_sinfonia = 2;
UPDATE sinfonia SET nome = 'Sinfonia Tropical' WHERE id_sinfonia = 3;
UPDATE sinfonia SET nome = 'Sinfonia do Cerrado' WHERE id_sinfonia = 4;
UPDATE sinfonia SET data_criacao = '1990-08-25' WHERE id_sinfonia = 5;
UPDATE sinfonia SET nome = 'Sinfonia dos Ventos' WHERE id_sinfonia = 6;
UPDATE sinfonia SET nome = 'Sinfonia do Brasil' WHERE id_sinfonia = 7;
UPDATE sinfonia SET data_criacao = '2008-09-12' WHERE id_sinfonia = 8;
UPDATE sinfonia SET nome = 'Sinfonia do Sertão' WHERE id_sinfonia = 9;
UPDATE sinfonia SET data_criacao = '2010-03-15' WHERE id_sinfonia = 10;

UPDATE concerto SET local = 'Teatro Amazonas' WHERE id_concerto = 1;
UPDATE concerto SET data_hora = '2024-11-10 19:00:00' WHERE id_concerto = 2;
UPDATE concerto SET local = 'Teatro Municipal' WHERE id_concerto = 3;
UPDATE concerto SET data_hora = '2025-01-05 18:00:00' WHERE id_concerto = 4;
UPDATE concerto SET local = 'Sala São Paulo' WHERE id_concerto = 5;
UPDATE concerto SET data_hora = '2025-03-15 20:00:00' WHERE id_concerto = 6;
UPDATE concerto SET local = 'Teatro José de Alencar' WHERE id_concerto = 7;
UPDATE concerto SET data_hora = '2025-04-10 19:30:00' WHERE id_concerto = 8;
UPDATE concerto SET local = 'Concha Acústica' WHERE id_concerto = 9;
UPDATE concerto SET data_hora = '2025-05-25 20:00:00' WHERE id_concerto = 10;


-- comandos delete

DELETE FROM orquestra WHERE id_orquestra = 1;
DELETE FROM orquestra WHERE id_orquestra = 2;
DELETE FROM orquestra WHERE id_orquestra = 3;
DELETE FROM orquestra WHERE id_orquestra = 4;
DELETE FROM orquestra WHERE id_orquestra = 5;
DELETE FROM orquestra WHERE id_orquestra = 6;
DELETE FROM orquestra WHERE id_orquestra = 7;
DELETE FROM orquestra WHERE id_orquestra = 8;
DELETE FROM orquestra WHERE id_orquestra = 9;
DELETE FROM orquestra WHERE id_orquestra = 10;

DELETE FROM Musico WHERE id_musico = 1;
DELETE FROM Musico WHERE id_musico = 2;
DELETE FROM Musico WHERE id_musico = 3;
DELETE FROM Musico WHERE id_musico = 4;
DELETE FROM Musico WHERE id_musico = 5;
DELETE FROM Musico WHERE id_musico = 6;
DELETE FROM Musico WHERE id_musico = 7;
DELETE FROM Musico WHERE id_musico = 8;
DELETE FROM Musico WHERE id_musico = 9;
DELETE FROM Musico WHERE id_musico = 10;

DELETE FROM instrumento WHERE id_instrumento = 1;
DELETE FROM instrumento WHERE id_instrumento = 2;
DELETE FROM instrumento WHERE id_instrumento = 3;
DELETE FROM instrumento WHERE id_instrumento = 4;
DELETE FROM instrumento WHERE id_instrumento = 5;
DELETE FROM instrumento WHERE id_instrumento = 6;
DELETE FROM instrumento WHERE id_instrumento = 7;
DELETE FROM instrumento WHERE id_instrumento = 8;
DELETE FROM instrumento WHERE id_instrumento = 9;
DELETE FROM instrumento WHERE id_instrumento = 10;

DELETE FROM sinfonia WHERE id_sinfonia = 1;
DELETE FROM sinfonia WHERE id_sinfonia = 2;
DELETE FROM sinfonia WHERE id_sinfonia = 3;
DELETE FROM sinfonia WHERE id_sinfonia = 4;
DELETE FROM sinfonia WHERE id_sinfonia = 5;
DELETE FROM sinfonia WHERE id_sinfonia = 6;
DELETE FROM sinfonia WHERE id_sinfonia = 7;
DELETE FROM sinfonia WHERE id_sinfonia = 8;
DELETE FROM sinfonia WHERE id_sinfonia = 9;
DELETE FROM sinfonia WHERE id_sinfonia = 10;

DELETE FROM concerto WHERE id_concerto = 1;
DELETE FROM concerto WHERE id_concerto = 2;
DELETE FROM concerto WHERE id_concerto = 3;
DELETE FROM concerto WHERE id_concerto = 4;
DELETE FROM concerto WHERE id_concerto = 5;
DELETE FROM concerto WHERE id_concerto = 6;
DELETE FROM concerto WHERE id_concerto = 7;
DELETE FROM concerto WHERE id_concerto = 8;
DELETE FROM concerto WHERE id_concerto = 9;
DELETE FROM concerto WHERE id_concerto = 10;
