#Criação do banco de dados da empresa_xpto
create database empresa_xpto;

#Ativação do banco de dados
use empresa_xpto;

#criação da tabela funcionarios
create table funcionarios (
id int auto_increment ,
nome VARCHAR(60) ,
sobrenome VARCHAR(60) ,
salario DECIMAL(10,2) ,
primary key (id) 
);

drop table funcionarios;

#Inserir arquivos para o banco de dados
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines  terminated by '\n'
ignore 1 lines
(nome, sobrenome, salario) set id = null;

#Selecionar lista de funcionarios
select * from funcionarios;

#selecionar funcionarios com salario menor que 1238.11
select * from funcionarios where salario < 1238.11;

#selecionar em somente 5 funcionarios nome sobrenome ordenado pelo salario
select nome, sobrenome from funcionarios order by salario limit 5;

#selecionar em somente 5 funcionarios nome sobrenome ordenado pelo salario do menor para o maior
select nome, sobrenome from funcionarios order by salario desc limit 5;

#selecionar funcionarios onde nome é igual a carlo ou nome igual a gil
select * from funcionarios where nome = 'carlo' or nome = ' gil';

#selecionar funcionarios onde nome é igual a carlo ou nome igual a gil e salario maior a 15000
select * from funcionarios where (nome = 'carlo' or nome = ' gil')and salario > 15000;

#selecionar funcionarios onde sobrenome é igual a benn ou sobrenome é igual a ramet
select * from funcionarios where sobrenome = 'benn' or sobrenome = 'ramet';

#selecionar funcionarios onde sobrenome é igual a benn ou sobrenome é igual a ramet e salario é menor 5000
select * from funcionarios where (sobrenome = 'benn' or sobrenome = 'ramet') and salario < 5000;

#selecionar funcionarios onde salario entre 2000 e 3000
select * from funcionarios where salario between 5000 and 10000;

#selecionar nome sobrenome dos funcionarios onde salario entre 2000 e 3000
select nome, sobrenome from funcionarios where salario between 2000 and 3000;

#selecionar a soma do salario dos funcionarios
select SUM(salario) AS soma_salarios from funcionarios;

#selecionar media dos salarios dos funcionarios
select AVG(salario) AS media_salarios from funcionarios;

#selecionar a contagem do total dos funcionarios
select COUNT(*) AS total_funcionarios from funcionarios;

#selecionar maior salario dos funcionarios
select MAX(salario) AS maior_salarios from funcionarios;

#selecionar menor salario dos funcionarios
select MIN(salario) as menor_salario from funcionarios;

#selecionar a contagem do total de funcionarios onde salario seja maior que 15000
select count(*) as total from funcionarios where salario > 15000;

#selecionar contagem do total de funcionarios onde salario esteja entre 1212 e 5000
select count(*) as total from funcionarios where salario between 1212 and 5000;

#selecionar contagem do total de funcionarios ende salario esteja entre 10001 e 15000
select count(*) as total from funcionarios where salario between 10001 and 15000;

#selecionar contagem do total de funcionarios onde salario esteja entre 5001 e 10000
select count(*) as total from funcionarios where salario between 5001 and 10000;








