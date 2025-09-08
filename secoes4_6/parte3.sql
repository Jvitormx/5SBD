-- Parte 3 – Junções entre Tabelas 

-- 16.Exiba o nome de cada cliente, o número da conta e o saldo correspondente.
SELECT c.cliente_nome, ct.conta_numero, ct.saldo FROM cliente c JOIN conta ct ON (c.cliente_cod = ct.cliente_cliente_cod);

-- 17. Liste os nomes dos clientes e os nomes das agências onde mantêm conta.
SELECT c.cliente_nome, a.agencia_nome FROM cliente c JOIN conta ct ON(c.cliente_cod = ct.cliente_cliente_cod) JOIN agencia a ON(ct.agencia_agencia_cod = a.agencia_cod);

-- 18. Mostre todas as agências, mesmo aquelas que não possuem clientes vinculados (junção externa esquerda).
SELECT a.agencia_cod, a.agencia_nome, c.cliente_nome FROM agencia a LEFT OUTER JOIN conta ct ON(a.agencia_cod = ct.agencia_agencia_cod) LEFT OUTER JOIN cliente c ON(ct.cliente_cliente_cod = c.cliente_cod);