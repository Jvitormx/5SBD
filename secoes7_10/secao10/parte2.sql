-- Parte 2 – Subconsultas Multilinha

-- 4. Liste os nomes dos clientes com saldo igual a qualquer um dos dez maiores saldos registrados.
SELECT c.cliente_nome FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.saldo IN (SELECT saldo FROM conta ORDER BY saldo DESC FETCH FIRST 10 ROWS ONLY);

-- 5. Liste os clientes que possuem saldo menor que todos os saldos dos clientes da cidade de Niterói.
SELECT c.cliente_nome FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.saldo < ALL (SELECT ct2.saldo FROM conta ct2, cliente c2 WHERE c2.cliente_cod = ct2.cliente_cliente_cod AND c2.cidade = 'Niterói');

-- 6. Liste os clientes cujos saldos estão entre os saldos de clientes de Volta Redonda.
SELECT c.cliente_nome FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND ct.saldo BETWEEN (SELECT MIN(ct2.saldo) FROM cliente c2, conta ct2 WHERE c2.cliente_cod = ct2.cliente_cliente_cod AND c2.cidade = 'Volta Redonda') AND (SELECT MAX(ct3.saldo) FROM cliente c3, conta ct3 WHERE c3.cliente_cod = ct3.cliente_cliente_cod AND c3.cidade = 'Volta Redonda');