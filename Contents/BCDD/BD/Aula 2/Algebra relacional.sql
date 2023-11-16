--mostrart o nome de todos os pilotos cadastrados
--  PI nome (PILOTO)
select nome
from piloto;

--mostrar todos os pilotos da equipe 1
--  SIGMA nroequipe = 1 (PILOTO)
select *
from piloto
where nroequipe = 1;

--mostrar todos os pilotos e o nome da sua equipe
--  PI piloto.nropiloto, piloto.nome, equipe.nome
--  SIGMA piloto.nroequipe = equipe.nroequipe
--  (piloto x equipe)

select piloto.*, equipe.nome
from piloto, equipe
where piloto.nroequipe = equipe.nroequipe;

--  PI piloto.nropiloto, piloto.nome, equipe.nome
--  (piloto |X| (piloto.nome = equipe.nroequipe) equipe)
select piloto.*, equipe.nome
from piloto join equipe
    on piloto.nroequipe = equipe.nroequipe;

-- mostra o piloto e o nome do seu país
--  PI piloto.nropiloto, piloto.nome, pais.nome
--  SIGMA piloto.siglapais = pais.siglapais
-- (piloto X pais)
select piloto.*, pais.nome
from piloto, pais
where piloto.siglapais = pais.siglapais;

-- mostra o piloto, nome do país e o nome da equipe
--  PI piloto.nropiloto, piloto.nome, pais.nome, equipe.nome
--  SIGMA piloto.sigla pais = pais.siglapais ^ piloto.nroequipe = equipe.nroequipe 
--  (piloto X pais X equipe)
select piloto.*, pais.nome, equipe.nome
from piloto, pais, equipe
where piloto.siglapais = pais.siglapais and piloto.nroequipe = equipe.nroequipe;

--nome_piloto, nome_pais_piloto, nome_equipe, nome_pais_equipe
--  PI piloto.nome, pais_piloto.nome, equipe_nome, pais_equipe
--  SIGMA piloto.nro
select piloto.nome, pais_piloto.nome, equipe.nome, pais_equipe.nome
from piloto, pais pais_piloto, equipe, pais pais_equipe
where   piloto.nroequipe = equipe.nroequipe and
        piloto.siglapais = pais_piloto.siglapais and
        equipe.siglapais = pais_equipe.siglapais;

-- select piloto.nome, pais_piloto.nome, equipe.nome, pais_equipe.nome
-- from    piloto join pais pais_piloto on piloto.siglapais = pais_piloto.siglapais
--         join equipe on 


--mostra corrida e circuito

-- mostrar os 5 primeiros colocados na corrida de 14/03/2019:
-- mostra posição final, nome do piloto, nome pais piloto, nome equipe, nome pais equipe, nome pais circuito, nome circuito 
select resultado.posfinal, 