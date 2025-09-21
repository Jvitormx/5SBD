-- Parte 5 – Subconsulta Nomeada com WITH

-- 11.Usando a cláusula WITH, calcule a média de saldo por cidade e exiba os clientes que possuem saldo acima da média de sua cidade.
WITH media_cidade AS (SELECT cidade, AVG(saldo) AS media_saldo FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod GROUP BY cidade) SELECT c.cliente_nome, c.cidade, ct.saldo FROM cliente c, conta ct, media_cidade mc WHERE c.cliente_cod = ct.cliente_cliente_cod AND c.cidade = mc.cidade AND ct.saldo > mc.media_saldo;