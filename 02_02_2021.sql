--! Seleção de expressões
--? AS
--1. 
SELECT id, Nome, idade, idade+1 (col02 ou expre1)
FROM pessoa
Order by nome

--2.
SELECT id, Nome, idade AS idadeagora, idade + 1 AS idademais1
FROM pessoa
Order by nome

--3.
SELECT id, Nome, salario AS salarioagora, salario * 0.10 AS imposto, salario * 0.10 AS salariofim
FROM pessoa
Order by nome

--4.
SELECT id, Nome, salario, salario * 0.10, salario * 0.10 + salario

--! Agrupando Informação
--7. 
SELECT SUM (salario) AS totalsalarios
FROM pessoa

--8.
SELECT MAX (salario) AS salariomaior
FROM pessoa

--9.
SELECT MIN (salario) as salariomenor
FROM pessoa

--10.
SELECT AVG (salario) AS mediasalario
FROM pessoa

--? EX) 11. (Menor idade)
SELECT MIN (idade) AS salariomaior
FROM pessoa

--? EX) 12. (Média idades)
SELECT AVG (idade) AS mediaidades
FROM pessoa

--? EX) 13. (Maior idade)
SELECT MAX (idade) AS maioridade
FROM pessoa

--? EX) 14. (Soma de idades)
SELECT SUM (idades) AS somaidades
FROM pessoa

--15.
SELECT COUNT(*) as totalregistos
FROM pessoa

--? EX) 16. (Quantos registos existem na tabela postal)
SELECT COUNT(*) as totalregistos
FROM postal

--17.
SELECT MIN (salario) AS menorsalario, MAX (salario) AS bigsal
FROM pessoa

--18.
SELECT FORMAT (AVG(idaide),'0.00') AS mediaidades
FROM pessoa