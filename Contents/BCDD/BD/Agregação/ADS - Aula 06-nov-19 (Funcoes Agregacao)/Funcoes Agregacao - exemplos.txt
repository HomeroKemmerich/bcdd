select * from produtos;

select max(precovenda) from produtos;
select max(precovenda) from produtos WHERE CATEGORIA = 1;
select max(precocusto) from produtos;
select max(codigo) from produtos;

select min(precovenda) from produtos;
select min(precovenda) from produtos WHERE CATEGORIA = 1;
select min(precocusto) from produtos;
select min(codigo) from produtos;

select categoria, max(precovenda), min(precovenda)
from produtos
group by categoria;

select sum(precovenda) from produtos;
select sum(precocusto) from produtos;
select sum(precovenda) from produtos where categoria = 2;

select AVG(precovenda) from produtos;
select avg(precocusto) from produtos;
select avg(precovenda) from produtos where categoria = 2;

select count(*) from produtos;
select count(*) from produtos where categoria = 1;

select max(precovenda), min(precovenda), sum(precovenda), avg (precovenda),
       count(*)
from produtos;	   

select categoria, max(precovenda), min(precovenda), sum(precovenda), avg (precovenda),
       count(*)
from produtos
GROUP BY categoria
    having max(precovenda) > 10;	   

