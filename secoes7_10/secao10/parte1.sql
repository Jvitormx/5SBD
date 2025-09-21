-- Parte 1 – Subconsultas de Linha Única

-- 1. Liste os nomes dos clientes cujas contas possuem saldo acima da média geral de todas as contas registradas.
SELECT c.cliente_nome FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.saldo > (SELECT AVG(saldo) FROM conta);

-- 2. Exiba os nomes dos clientes cujos saldos são iguais ao maior saldo encontrado no banco.
SELECT c.cliente_nome FROM cliente c, conta ct WHERE c.cliente_cod = ct.CLIENTE_CLIENTE_COD AND ct.saldo = (SELECT MAX(saldo) FROM conta);

-- 3. Liste as cidades onde a quantidade de clientes é maior que a quantidade média de clientes por cidade.
SELECT cidade FROM cliente GROUP BY cidade HAVING COUNT(cliente_cod) > (SELECT AVG(contagem_clientes) FROM (SELECT COUNT(cliente_cod) as contagem_clientes FROM cliente GROUP BY cidade));