-- Parte 4 – Subconsultas com EXISTS e NOT EXISTS

-- 9. Liste os nomes dos clientes que possuem pelo menos uma conta registrada no banco.
SELECT DISTINCT c.cliente_nome "possui conta registrada" FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND EXISTS (Select * FROM cliente c2 WHERE c2.cliente_cod = ct.cliente_cliente_cod);

-- 10. Liste os nomes dos clientes que ainda não possuem conta registrada no banco.
SELECT c.cliente_nome "não possui conta registrada" FROM cliente c WHERE NOT EXISTS (SELECT * FROM conta ct WHERE ct.cliente_cliente_cod = c.cliente_cod);