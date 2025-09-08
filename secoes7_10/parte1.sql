-- Parte 1 – Junções e Produto Cartesiano

-- 1. Usando a sintaxe proprietária da Oracle, exiba o nome de cada cliente junto com o número de sua conta.
SELECT cliente.cliente_nome, conta.conta_numero FROM cliente, conta WHERE cliente.cliente_cod = conta.cliente_cliente_cod;

-- 2. Mostre todas as combinações possíveis de clientes e agências (produto cartesiano).
SELECT cliente.cliente_nome, agencia.agencia_nome FROM cliente, agencia;

-- 3. Usando aliases de tabela, exiba o nome dos clientes e a cidade da agência onde mantêm conta.
SELECT c.cliente_nome, a.agencia_cidade FROM cliente c, conta ct, agencia a WHERE c.cliente_cod = ct.cliente_cliente_cod AND a.agencia_cod = ct.agencia_agencia_cod;