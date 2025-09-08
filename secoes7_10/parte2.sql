-- Parte 2 – Funções de Grupo, COUNT, DISTINCT e NVL

-- 4. Exiba o saldo total de todas as contas cadastradas.
SELECT SUM(saldo) FROM conta;

-- 5. Mostre o maior saldo e a média de saldo entre todas as contas.
SELECT MAX(saldo) as "maior saldo", AVG(saldo) as "média de saldo" FROM conta;

-- 6. Apresente a quantidade total de contas cadastradas.
SELECT COUNT(*) FROM conta;

-- 7. Liste o número de cidades distintas onde os clientes residem.
SELECT DISTINCT cidade FROM cliente;

-- 8. Exiba o número da conta e o saldo, substituindo valores nulos por zero.
SELECT  NVL(conta_numero,0), NVL(saldo, 0) FROM conta;