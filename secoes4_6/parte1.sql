-- Parte 1 – Funções de Caracteres, Números e Datas

-- 1. Exiba os nomes dos clientes com todas as letras em maiúsculas.
SELECT UPPER(cliente_nome) FROM cliente;

-- 2. Exiba os nomes dos clientes formatados com apenas a primeira letra maiúscula.
SELECT INITCAP(cliente_nome) FROM cliente;

-- 3. Mostre as três primeiras letras do nome de cada cliente.
SELECT SUBSTR(cliente_nome, 1,3) FROM cliente;

-- 4. Exiba o número de caracteres do nome de cada cliente.
SELECT cliente_nome, LENGTH(cliente_nome) FROM cliente;

-- 5. Apresente o saldo de todas as contas, arredondado para o inteiro mais próximo.
SELECT ROUND(saldo) FROM conta;

-- 6. Exiba o saldo truncado, sem casas decimais.
SELECT TRUNC(saldo) FROM conta;

-- 7. Mostre o resto da divisão do saldo da conta por 1000.
SELECT MOD(saldo, 1000) FROM conta;

-- 8. Exiba a data atual do servidor do banco.
SELECT SYSDATE FROM dual;

-- 9. Adicione 30 dias à data atual e exiba como "Data de vencimento simulada".
SELECT SYSDATE+30 AS Data de vencimento simulada FROM dual;

-- 10.Exiba o número de dias entre a data de abertura da conta e a data atual.
SELECT SYSDATE - data_abertura FROM conta;