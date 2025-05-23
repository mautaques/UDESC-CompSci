--1
SELECT nome, cpf FROM medicos 
UNION
SELECT nome, cpf FROM pacientes

--2
SELECT nome, cpf FROM pacientes
INTERSECT
SELECT nome, cpf FROM funcinarios

--3
SELECT codp, nome FROM pacientes
EXCEPT
SELECT p.codp, p.nome FROM pacientes p 
JOIN consultas c p.codp=c.codp JOIN medicos m ON m.codm=c.codm AND m.nome='Pedro';

--4
SELECT p.codp, nome FROM pacientes p JOIN consultas c ON p.codp=c.codp
EXCEPT
SELECT p.codp, p.nome FROM pacientes p JOIN consultas c ON p.codp=c.codp
JOIN medicos m ON m.codm=c.codm AND m.nome!='Pedro';

--5
SELECT nome, cpf FROM funcionarios
EXCEPT
SELECT f1.nome, f1.cpf FROM funcionarios f1
JOIN funcionarios f2 ON f1.salario<f2.salario;