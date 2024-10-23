-- 1. Listar todos os músicos e suas respectivas orquestras
SELECT m.nome_completo AS musico, o.nome AS orquestra
FROM musico m
INNER JOIN orquestra o ON m.id_orquestra = o.id_orquestra;

-- 2. Listar músicos, suas orquestras e os instrumentos que tocam 
SELECT m.nome_completo AS musico, o.nome AS orquestra, i.nome AS instrumento
FROM musico m
INNER JOIN orquestra o ON m.id_orquestra = o.id_orquestra
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento;

-- 3. Listar orquestras e quantos músicos elas têm 
SELECT o.nome AS orquestra, COUNT(m.id_musico) AS total_musicos
FROM orquestra o
LEFT JOIN musico m ON o.id_orquestra = m.id_orquestra
GROUP BY o.nome;

-- 4. Listar músicos e as sinfonias que eles tocaram 
SELECT m.nome_completo AS musico, s.nome AS sinfonia
FROM musico m
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN sinfonia s ON ms.id_sinfonia = s.id_sinfonia;

-- 5. Listar orquestras e as sinfonias que elas tocaram em concertos 
SELECT o.nome AS orquestra, s.nome AS sinfonia
FROM orquestra o
LEFT JOIN concerto c ON o.id_orquestra = c.id_orquestra
LEFT JOIN sinfonia s ON c.id_sinfonia = s.id_sinfonia;

-- 6. Listar músicos e os instrumentos de sopro que eles tocam 
SELECT m.nome_completo AS musico, i.nome AS instrumento
FROM musico m
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento
WHERE i.tipo = 'Sopro';

-- 7. Listar sinfonias e quantos músicos tocaram nelas 
SELECT s.nome AS sinfonia, COUNT(ms.id_musico) AS total_musicos
FROM sinfonia s
INNER JOIN musico_sinfonia ms ON s.id_sinfonia = ms.id_sinfonia
GROUP BY s.nome;

-- 8. Listar músicos e os concertos em que eles participaram 
SELECT m.nome_completo AS musico, c.local AS local_concerto
FROM musico m
LEFT JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
LEFT JOIN concerto c ON ms.id_sinfonia = c.id_sinfonia;

-- 9. Listar orquestras e o número de concertos realizados 
SELECT o.nome AS orquestra, COUNT(c.id_concerto) AS total_concertos
FROM orquestra o
INNER JOIN concerto c ON o.id_orquestra = c.id_orquestra
GROUP BY o.nome;

-- 10. Listar músicos e os tipos de instrumentos que eles tocam 
SELECT m.nome_completo AS musico, i.tipo AS tipo_instrumento
FROM musico m
LEFT JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
LEFT JOIN instrumento i ON mi.id_instrumento = i.id_instrumento;

-- 11. Listar orquestras e o número de sinfonias que já tocaram 
SELECT o.nome AS orquestra, COUNT(c.id_sinfonia) AS total_sinfonias
FROM orquestra o
INNER JOIN concerto c ON o.id_orquestra = c.id_orquestra
GROUP BY o.nome;

-- 12. Listar sinfonias e os instrumentos usados nelas 
SELECT s.nome AS sinfonia, i.nome AS instrumento
FROM sinfonia s
INNER JOIN musico_sinfonia ms ON s.id_sinfonia = ms.id_sinfonia
INNER JOIN musico_instrumento mi ON ms.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento;

-- 13. Listar músicos e as orquestras para as quais tocaram em concertos 
SELECT m.nome_completo AS musico, o.nome AS orquestra
FROM musico m
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN concerto c ON ms.id_sinfonia = c.id_sinfonia
INNER JOIN orquestra o ON c.id_orquestra = o.id_orquestra;

-- 14. Listar concertos realizados em um intervalo de datas 
SELECT o.nome AS orquestra, c.local, c.data_hora
FROM orquestra o
INNER JOIN concerto c ON o.id_orquestra = c.id_orquestra
WHERE c.data_hora BETWEEN '2024-01-01' AND '2025-12-31';

-- 15. Listar os concertos em que os músicos tocaram 
SELECT m.nome_completo AS musico, c.local AS local_concerto, c.data_hora
FROM musico m
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN concerto c ON ms.id_sinfonia = c.id_sinfonia;

-- 16. Listar músicos e os tipos de instrumentos tocados em sinfonias 
SELECT m.nome_completo AS musico, i.tipo AS tipo_instrumento
FROM musico m
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento;

-- 17. Listar músicos que tocaram em sinfonias e o número de instrumentos que tocaram 
SELECT m.nome_completo AS musico, COUNT(mi.id_instrumento) AS total_instrumentos
FROM musico m
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
GROUP BY m.nome_completo;

-- 18. Listar orquestras e sinfonias tocadas em concertos após 2024 
SELECT o.nome AS orquestra, s.nome AS sinfonia, c.data_hora
FROM orquestra o
INNER JOIN concerto c ON o.id_orquestra = c.id_orquestra
INNER JOIN sinfonia s ON c.id_sinfonia = s.id_sinfonia
WHERE c.data_hora > '2024-01-01';

-- 19. Listar músicos e instrumentos tocados em concertos em 2025 
SELECT m.nome_completo AS musico, i.nome AS instrumento, c.data_hora
FROM musico m
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN concerto c ON ms.id_sinfonia = c.id_sinfonia
WHERE c.data_hora BETWEEN '2025-01-01' AND '2025-12-31';

-- 20. Listar orquestras e os instrumentos mais usados pelos músicos 
SELECT o.nome AS orquestra, i.nome AS instrumento, COUNT(mi.id_instrumento) AS vezes_usado
FROM orquestra o
INNER JOIN musico m ON o.id_orquestra = m.id_orquestra
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento
GROUP BY o.nome, i.nome;

-- 21. Listar concertos e os músicos que tocaram 
SELECT c.local AS local_concerto, m.nome_completo AS musico
FROM concerto c
INNER JOIN musico_sinfonia ms ON c.id_sinfonia = ms.id_sinfonia
INNER JOIN musico m ON ms.id_musico = m.id_musico;

-- 22. Listar orquestras e as sinfonias tocadas por músicos com nacionalidade Brasileira 
SELECT o.nome AS orquestra, s.nome AS sinfonia, m.nacionalidade
FROM orquestra o
INNER JOIN musico m ON o.id_orquestra = m.id_orquestra
INNER JOIN musico_sinfonia ms ON m.id_musico = ms.id_musico
INNER JOIN sinfonia s ON ms.id_sinfonia = s.id_sinfonia
WHERE m.nacionalidade = 'Brasileira';

-- 23. Listar orquestras e músicos que tocaram instrumentos de corda 
SELECT o.nome AS orquestra, m.nome_completo AS musico, i.nome AS instrumento
FROM orquestra o
INNER JOIN musico m ON o.id_orquestra = m.id_orquestra
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento
WHERE i.tipo = 'Corda';

-- 24. Listar concertos e quantos músicos tocaram neles 
SELECT c.local AS local_concerto, COUNT(ms.id_musico) AS total_musicos
FROM concerto c
INNER JOIN musico_sinfonia ms ON c.id_sinfonia = ms.id_sinfonia
GROUP BY c.local;

-- 25. Listar sinfonias e quantos músicos tocaram nelas 
SELECT s.nome AS sinfonia, COUNT(ms.id_musico) AS total_musicos
FROM sinfonia s
INNER JOIN musico_sinfonia ms ON s.id_sinfonia = ms.id_sinfonia
GROUP BY s.nome;

-- 26. Listar músicos com nome completo concatenado com sua nacionalidade, ordenados por nome completo
SELECT CONCAT(m.nome_completo, ' - ', m.nacionalidade) AS Musico_Identidade
FROM musico m
ORDER BY m.nome_completo ASC;

-- 27. Listar orquestras e cidades concatenadas, ordenadas pela data de criação
SELECT CONCAT(o.nome, ' - ', o.cidade) AS Orquestra_Cidade, o.data_criacao
FROM orquestra o
ORDER BY o.data_criacao DESC;

-- 28. Listar músicos com nome completo e identidade concatenados, ordenados por nacionalidade
SELECT CONCAT(m.nome_completo, ' (', m.identidade, ')') AS Musico_Identidade
FROM musico m
ORDER BY m.nacionalidade ASC;

-- 29. Listar concertos com local e data concatenados, ordenados pela data do concerto
SELECT CONCAT(c.local, ' - ', c.data_hora) AS Concerto_Detalhes
FROM concerto c
ORDER BY c.data_hora DESC;

-- 30. Listar músicos e seus instrumentos concatenados, ordenados por nome do músico
SELECT CONCAT(m.nome_completo, ' toca ', i.nome) AS Musico_Instrumento
FROM musico m
INNER JOIN musico_instrumento mi ON m.id_musico = mi.id_musico
INNER JOIN instrumento i ON mi.id_instrumento = i.id_instrumento
ORDER BY m.nome_completo ASC;
