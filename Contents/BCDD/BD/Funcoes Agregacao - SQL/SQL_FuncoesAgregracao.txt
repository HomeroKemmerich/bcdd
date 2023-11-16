-- SQL - Funções de Agregação
create table produtos (
	codigo			integer			not null,
	descricao		varchar(30)		not null,
	precovenda		numeric (10,2)  not null,
	precocusto		numeric (10,2)  not null,
	categoria		integer			not null,
	primary key (codigo)
);

insert into produtos values (1, 'Caderno',  5.45, 1.00, 1);
insert into produtos values (2, 'Caneta' ,  1.20, 0.50, 1);
insert into produtos values (3, 'CD'     ,  1.00, 0.10, 2);
insert into produtos values (4, 'Mouse'  , 14.00, 5.00, 2);

-- https://www.devmedia.com.br/sql-funcoes-de-agregacao/38463

-- https://sqlzoo.net/wiki/SUM_and_COUNT
