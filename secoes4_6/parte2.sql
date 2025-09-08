-- Parte 2 – Conversão de Dados e Tratamento de Nulos 

-- 11.Apresente o saldo de cada conta formatado como moeda local.
SELECT TO_CHAR(saldo, 'R$99999.99') FROM conta; 

-- 12. Converta a data de abertura da conta para o formato 'dd/mm/yyyy'.
SELECT TO_CHAR(data_abertura, 'dd/mm/yyyy') FROM conta; 

-- 13.Exiba o saldo da conta e substitua valores nulos por 0.
SELECT NVL(saldo, 0) FROM conta;

-- 14.Exiba os nomes dos clientes e substitua valores nulos na cidade por 'Sem cidade'.
SELECT cliente_nome, NVL(cidade, 'Sem cidade') FROM cliente;

/* 15. Classifique os clientes em grupos com base em sua cidade:
o 'Região Metropolitana' se forem de Niterói
o 'Interior' se forem de Resende
o 'Outra Região' para as demais cidades */

SELECT cliente_nome, 
CASE cidade
WHEN 'Niterói' THEN 'Região Metropolitana'
WHEN 'Resende' THEN 'Interior'
ELSE 'Outra Região'
END AS "Grupo"
FROM cliente;