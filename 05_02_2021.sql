--! Comando Insert - inserir registo numa tabela

--19.
INSERT INTO postal (codigo, localidade) VALUES (4415, 'Olival')

--20.
INSERT INTO postal (localidad, codigo) VALUES ('Creastuma')

--21.
INSERT INTO postal VALUES (412, 'Creastuma')

--22.
INSERT INTO postal VALUES ('Crestuma', 4413) --!Erro

--23.
INSERT INTO pessoa (id, nome, salario, cod_postal) VALUES (99, 
'Renigaldo Faria', 25, 1000, 4415)