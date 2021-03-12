--1. (Mostra tudo da tabela pessoa)
SELECT *
FROM pessoa

--2.  (Mostra os nomes das pessoas)
SELECT nome
FROM pessoa

--3. (Mostra os nomes e idades das pessoas maiores de 26 anos)
SELECT nome, idade
FROM pessoa
WHERE idade > 26

--4.
SELECT id, idade, nome
FROM pessoa
WHERE idade >= 29 AND idade < 60

--5.
SELECT nome, idade, salario
FROM pessoa
WHERE idade < 20 OR idade > 40

--6.
SELECT nome, salario
FROM pessoa
WHERE idade > 30 

--7.
SELECT nome, idade, salario
FROM pessoa
WHERE idade >= 30 AND idadde <= 40

--8.
SELECT nome, idade, salario
FROM pessoa
WHERE idade >= 30 OR idadde <= 40

--! Exemplo)
/**
 * Pretende-se mostrar a idade e localidade de todos os individuos
 da tabela pessoa cujo o salario seja superior ao salario minimo (665$)
*/
SELECT nome, idade, localidade
FROM pessoa
WHERE salario > 665

--! Ex.10)
/**
 * Pretende-se mostrar a idade e localidade de todos os individuos
 da tabela pessoa cujo o salario seja superior ao salario minimo (665$)
*/
SELECT nome, salario, idade
FROM pessoa
WHERE salario >= 665 and salario <= 1000

--? BETWEEN - intervalo de valores

--11.
--! Único que não tenho :(

--12.
SELECT nome, idade
FROM pessoa
WHERE idade BETWEEN 30 AND 40