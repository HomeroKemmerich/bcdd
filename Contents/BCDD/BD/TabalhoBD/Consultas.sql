--selecionar os modelos de arma disponíveis
-- PI ModeloArma
select * from ModeloArma;

-- selecionar as armas disponíveis no clube
-- PI NroArma, CodModelo (Arma)
select NroArma, CodModelo from Arma;

--selecionar as armas M1A
-- PI
-- SIGMA Arma.CodModelo = 'M1A'
-- (Arma)
select *
from Arma
where CodModelo = 'M1A';

--selecionar quantas armas o clube possui
select count(NroArma)
from Arma;

--selecionar os Rifles de Assalto de disparo semi-automático
-- PI CodArma, TipoDisparo
-- SIGMA TipoDisparo = 'SEMI'
-- (Arma)
select CodModelo, TipoDisparo
from ModeloArma 
where Categoria = 'RA' AND TipoDisparo = 'SEMI';

--Selecionar qual o valor a ser pago na Bateria 107
select (Qtd * Municao.Preco)
from BateriaMunicao, Municao, Bateria
where Bateria.NroBateria = 107;
