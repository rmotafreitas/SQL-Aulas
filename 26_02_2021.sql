--! 13) Seleciona o ID, o nome, a idade e o salario de todas as pessoas, 
--!     cuja idaide não está entre os 30 e os 40 anos, usando o comando BETWEEN
--BETWEEN
SELECT Id, Nome, idade, salario
FROM pessoa
WHERE idade<30 OR idade>40

--14. equivalente
WHERE NOT (idade>-30 OR idade<=40)

--15. equivalente
WHERE idade NOT BETWEEN 30 AND 40

--16. equivalente
WHERE NOT (idade BETWEEN 30 AND 40)

--? Operdaor IN (escolher um conjunto de valores)
--? Sintaxe

SELECT ...
FROM ... 
WHERE valor [NOT] IN (Valor1, Valor2, ..., valorn)

Valor =1, valor =2, valor=3
Valor IN (1,2,3)

--? Exemplo
--17. 
SELECT *
FROM postal
WHERE localidade = 'Lisboa' OR localidade = 'Tomar'

--18.
SELECT *
FROM postal
WHERE localidade IN ('Lisboa', 'Tomar')

--19.
SELECT *
FROM postal
WHERE localidade <> 'Lisboa' AND localidade <> 'Tomar'

--20. 
SELECT *
FROM postal
WHERE localidade NOT IN ('Lisboa', 'Tomar')	

--21.
SELECT localidade, codigo
FROM postal
WHERE codigo NOT IN (1000, 1100, 2000)

--! 22) Seleciona da tabla pessoa todos os individuos cuja a idade é 20, 30 e 40 anos mostrar o Nome, idade, salario
SELECT Nome, idade, salario
FROM pessoa
WHERE idade IN ('20', '30', '40')

--! 23) Mostrar os individuos que não estão dentro das condições do 22
SELECT *
FROM pessoa
WHERE idade NOT IN ('20', '30', '40')

/**
 * LIKE: Operador utilizado para comparação de string, como sabem,
 uma string é um conjunto de caracteres, que funciona como um todo.
 Para utilizarmos string em SQL temos as colocar entre ''
*/

--24. 
SELECT *
FROM postal
WHERE localidade = 'Lisboa'

--? * Qualquer conjunto de caracteres (assdd) ou (a)
--? ? Substitui um unico caracter
--25.
SELECT *
FROM pessoa
WHERE nome LIKE 'A*'

--? Acrescentar: Anastácio Pereira, 39, 700, 100, 918 888 888  
--26.
SELECT *
FROM pessoas
WHERE nome LIKE '*as'

--! 27) Mostre da tabela pessoa todos os individuos cujo nome começa pela letra F
--!     visualizando o seu nome, idade e telefone
SELECT nome, idade, telefone
FROM pessoa
WHERE nome LIKE 'F*'

--! 28) Mostre todos os campos de cada individuo da tabela cujo o nome termina em "ra"
SELECT nome, idade, telefone
FROM pessoa
WHERE nome LIKE '*ra'

--? Ordenação
--? Sintaxe
SELECT campo1, campo2, campo3... campon, *(todos os campo)
FROM tabela1, tabela2,... tabelan
[WHERE condição ]
[ORDER BY ... ]

/**
 * Ordenação por coluna - permite deixar escolher a coluna pela
 qual queremos ordenar os nossos dados
*/

--29.
SELECT id, Nome, idade, salario
FROM pessoa
Order By idade ASC --? Ascedente

--30.
SELECT id, Nome, idade, salario
FROM pessoa
Order By idade

--31. 
SELECT id, Nome, idade, salario
FROM pessoa
Order By idade DESC --? Descente

--32.
SELECT id, Nome, idade, salario
FROM pessoa
Order By idade

--33.
SELECT id, Nome, idade, salario
FROM pessoa
Order By Nome

--!Ex de Ordenação) 34)
/*
 *Mostre da tabela pessoa cujo nome começa pela letra F
  a localidade, nome, idade e salario, ordenando o nome
  de forma descente
*/
SELECT nome, idade, telefone, salario
FROM pessoa
Order By Nome DESC
