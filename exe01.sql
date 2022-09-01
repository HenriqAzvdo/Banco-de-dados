-- Criar o Banco de Dados
create database db_rh;

-- Selecionar o db_rh
USE c

-- Criar a Tabela tb_colaborador
create table tb_colaborador(
id bigint auto_increment,
nome varchar (100) not null,
idade int not null,
cpf varchar (14) not null,
funcao varchar (100) not null,
primary key (id, cpf)
); 

--  Adicionando coluna salário
ALTER table tb_colaborador add salario decimal(10, 2);

/* Inserindo dados na Tabela Colaborador*/
insert into tb_colaborador(nome, idade, cpf, funcao, salario)
values ("Henrique", 28, "010.101.010-10", "Desenvolvedor Mobile Jr.", 8000.00);

insert into tb_colaborador(nome, idade, cpf, funcao, salario)
values ("José", 21, "020.202.020-20", "Administrador", 3500.00);

insert into tb_colaborador(nome, idade, cpf, funcao, salario)
values ("Maria", 25, "030.303.030-30", "Gerente", 10000.00);

insert into tb_colaborador(nome, idade, cpf, funcao, salario)
values ("Vinicius", 30, "040.404.040-40", "Analista de contabilidade", 6000.00);

insert into tb_colaborador(nome, idade, cpf, funcao, salario)
values ("Carol", 23, "050.505.050-50", "Assitente de Recusos Humanos", 2000.00);

/*
Consultar os dados

select colunas from tabela where condicoes

*/

-- Visualizar todos os dados da tabela
select * from tb_colaborador;

-- Visualizar todos os salários maior que 2000.00
select * from tb_colaborador where salario > 2000.00;

-- Visualizar todos os salários menor que 2000.00
select * from tb_colaborador where salario < 2000.00;

/* Alterar dado do salário*/
update tb_colaborador set salario = 1980.00 where id = 2;