-- Parte 3 – GROUP BY, HAVING, ROLLUP e Operadores de Conjunto 

-- 9. Exiba a média de saldo por cidade dos clientes.
SELECT c.cidade, AVG(ct.saldo) FROM conta ct, cliente c WHERE c.cliente_cod = ct.cliente_cliente_cod GROUP BY c.cidade;

-- 10. Liste apenas as cidades com mais de 3 contas associadas a seus moradores.
SELECT c.cidade FROM cliente c, conta ct WHERE c.cliente_cod = ct.cliente_cliente_cod AND COUNT(ct.conta_numero) > 3 GROUP BY c.cidade

-- 11.Utilize a cláusula ROLLUP para exibir o total de saldos por cidade da agência e o total geral.

-- 12. Faça uma consulta com UNION que combine os nomes de cidades dos clientes e das agências, sem repetições.