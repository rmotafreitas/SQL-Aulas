--? Comando UPDATE - alterar dados de uma tabela

--24. (aumenta 10% ao salario de todos os funcionários)
UPDATE pessoa 
SET salario = salario + salario * 0.10 

--25. 
UPDATE pessoa
SET salario = salario + salario * 0.20
WHERE nome = 'Renigaldo Faria'

--26. (alterar a idade de toda a gente)
UPDATE pessoa
SET idade = idade + 1

--27.
UPDATE pessoa
SET idade = idade + 2
WHERE nome = 'Reginaldo Faria'

--!Ex) 28. Os trabaladores da empresa, no final do ano, recebam um prémio de todos
--! 100$, acresentando esse valor no seu sálario
UPDATE pessoa
SET salario=salario+100

--? Comando DELETE - eliminar linhas de uma tabela, registos

--1. (matou o Reginaldo ) F
DELETE
FROM pessoa
WHERE id = 99

--2.
DELETE
FROM postal
WHERE localidade LIKE 'Crestuma*'

--!Ex) 29. Apaga o registo referente ao senhor Manuel Costa
DELETE
FROM pessoa
WHERE nome ='Manuel Costa'

--? Comando CRETAE TABLE - criação de tabelas em SQL 

--3.
CREATE TABLE empregado (id        Integer
                        Nome      Char(20), ***string
                        Morada    Char(50),
                        Data_nasc Date,
                        Salario   Float)    ***real

--!Ex) 30.
INSERT INTO empregado VALUES (1,"Ricardo","Rua das flores",11/10/2004,10000)
INSERT INTO empregado VALUES (2,"Lisbang", "Rua dos Carvalhos", 02/09/2022,1000)
INSERT INTO empregado VALUES (3,"David", "Rua da porta", 11/03/2000,2000)


