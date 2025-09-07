--Parte 3 - Ordenações, Operados Lógicos e Funções

--9. Exiba os dados de todas as contas com saldo superior a R$9.000, ordenados do maior para o menor saldo.
SELECT * FROM conta WHERE saldo > 9.000 ORDER BY saldo DESC;

--10. Liste os clientes que moram em Nova Iguaçu ou que tenham "Silva" no nome;
SELECT * FROM cliente WHERE cidade = "Nova Iguaçu" OR cliente_nome LIKE "%Silva%";

--11. Exiba o saldo das contas com arredondamento para inteiro mais próximo.
SELECT conta_numero, ROUND(saldo) FROM conta;

--12. Exiba o nome de todos os clientes em letras maiúsculas
SELECT UPPER(cliente_nome) FROM cliente;

--13 Exiba os nomes dos clientes que não são das cidades de Teresópolis nem Campos dos Goytacazes.
SELECT cliente_nome FROM cliente WHERE cidade NOT IN ('Teresópolis','Campos dos Goytacazes');