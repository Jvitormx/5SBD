--Parte 2 - Filtros, Projeções e Concatenação

--4. Liste os nomes dos clientes da cidade de Macaé
SELECT nome FROM cliente_nome WHERE cidade = 'Macaé';

--5 Exiba o código e o nome de todos os clientes com código entre 5 e 15
SELECT cliente_cod, cliente_nome FROM cliente WHERE cliente_cod BETWEEN  5 AND 15;

--6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí
SELECT * FROM cliente WHERE cidade IN ('Niterói', 'Volta Redonda', 'Itaboraí');

--7. Exiba o nome dos clientes que começam com a letra "F"
SELECT cliente_nome FROM cliente WHERE cliente_nome LIKE 'F%';

/*8. Exiba uma frase com a seguinte estrutura para todos os clientes:
Exemplo: João Santos mora em Nova Iguaçu.
Utilize concatenação e alias para nomear a coluna como "Frase"*/
SELECT cliente_nome || ' mora em ' || cliente_cidade AS Frase FROM cliente;