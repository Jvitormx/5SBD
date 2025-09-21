-- Parte 3 – Subconsultas Correlacionadas

-- 7. Exiba os nomes dos clientes cujos saldos são maiores que a média de saldo das contas da mesma agência.
SELECT c.cliente_nome FROM cliente c, conta ct, agencia a WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.agencia_agencia_cod = a.agencia_cod AND (SELECT AVG(ct2.saldo) FROM cliente c2, conta ct2 WHERE c2.cliente_cod = ct2.cliente_cliente_cod AND ct2.agencia_agencia_cod = a.agencia_cod);

-- 8. Liste os nomes e cidades dos clientes que têm saldo inferior à média de sua própria cidade.
SELECT c.cliente_nome, c.cidade FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.saldo < (SELECT AVG(ct2.saldo) FROM cliente c2, conta ct2 WHERE c2.cliente_cod = ct2.cliente_cliente_cod AND c2.cidade = c.cidade);