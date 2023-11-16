/* --------------------------------------- */
/*  inser��o de linhas - modelo F�rmula 1  */
/* --------------------------------------- */

-- https://www.tecepe.com.br/olimpiadas/paises/a.htm
-- Pais (SiglaPais, Nome)
insert into Pais (siglapais, Nome) values ('BRA', 'Brasil');
insert into Pais (siglapais, Nome) values ('ITA', 'It�lia');
insert into Pais (siglapais, Nome) values ('ALE', 'Alemanha');
insert into Pais (siglapais, Nome) values ('AUS', 'Austr�lia');
insert into Pais (siglapais, Nome) values ('USA', 'Estados Unidos da Am�rica');
insert into Pais (siglapais, Nome) values ('ENG', 'Inglaterra');
insert into Pais (siglapais, Nome) values ('CAN', 'Canad�');
insert into Pais (siglapais, Nome) values ('FRA', 'Fran�a');
insert into Pais (siglapais, Nome) values ('SWI', 'Su��a');
insert into Pais (siglapais, Nome) values ('FIN', 'Finl�ndia');
insert into Pais (siglapais, Nome) values ('MEX', 'M�xico');
insert into Pais (siglapais, Nome) values ('MON', 'M�naco');
insert into Pais (siglapais, Nome) values ('DEN', 'Dinamarca');
insert into Pais (siglapais, Nome) values ('THA', 'Tail�ndia');
insert into Pais (siglapais, Nome) values ('RUS', 'R�ssia');
insert into Pais (siglapais, Nome) values ('HOL', 'Holanda');
insert into Pais (siglapais, Nome) values ('ESP', 'Espanha');
insert into Pais (siglapais, Nome) values ('POL', 'Pol�nia');
insert into Pais (siglapais, Nome) values ('AUT', '�ustria');

	
/*-------------------------------------------------------------------------------------------------------*/
-- https://br.motorsport.com/f1/teams/    ou  https://www.formula1.com/en/championship/teams.html
-- Equipe (NroEquipe, Nome, SiglaPais)
--     	SiglaPais referencia Pais
insert into Equipe (nroequipe, siglapais, Nome) values (1, 'ITA', 'Scuderia Ferrari');
insert into Equipe (nroequipe, siglapais, Nome) values (2, 'USA', 'Haas F1 Team');
insert into Equipe (nroequipe, siglapais, Nome) values (3, 'ENG', 'McLaren');
insert into Equipe (nroequipe, siglapais, Nome) values (4, 'ALE', 'Mercedes');
insert into Equipe (nroequipe, siglapais, Nome) values (5, 'CAN', 'Racing Point');
insert into Equipe (nroequipe, siglapais, Nome) values (6, 'AUT', 'Red Bull Racing');
insert into Equipe (nroequipe, siglapais, Nome) values (7, 'FRA', 'Renault F1 Team');
insert into Equipe (nroequipe, siglapais, Nome) values (8, 'SWI', 'Alfa Romeo Racing');
insert into Equipe (nroequipe, siglapais, Nome) values (9, 'ITA', 'Toro Rosso');
insert into Equipe (nroequipe, siglapais, Nome) values (10, 'ENG', 'Williams');


/*-------------------------------------------------------------------------------------------------------*/
-- https://br.motorsport.com/f1/drivers/  ou  https://www.formula1.com/en/championship/drivers.html
-- Piloto (NroPiloto, Nome, SiglaPais, NroEquipe)
--	SiglaPais referencia Pais
--	NroEquipe referencia Equipe
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 5, 1, 'ALE', 'Sebastian Vettel');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 3, 7, 'AUS', 'Daniel Ricciardo');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 4, 3, 'ENG', 'Lando Norris');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 7, 8, 'FIN', 'Kimi Raikkonen');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 8, 2, 'FRA', 'Romain Grosjean');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 10, 6, 'FRA', 'Pierre Gasly');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 11, 5, 'MEX', 'Sergio Perez');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 16, 1, 'MON', 'Charles Leclerc');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 18, 5, 'CAN', 'Lance Stroll');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 20, 2, 'DEN', 'Kevin Magnussen');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 23, 9, 'THA', 'Alexander Albon');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 26, 9, 'RUS', 'Daniil Kvyat');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 27, 7, 'ALE', 'Nico Hulkenberg');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 33, 6, 'HOL', 'Max Verstappen');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 44, 4, 'ENG', 'Lewis Hamilton');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 55, 3, 'ESP', 'Carlos Sainz Jr.');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 63, 10, 'ENG', 'George Russell');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 77, 4, 'FIN', 'Valtteri Bottas');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 88, 10, 'POL', 'Robert Kubica');
insert into Piloto (nropiloto, nroequipe, siglapais, Nome) values ( 99, 8, 'ITA', 'Antonio Giovinazzi');

-- 'GP da Austr�lia'
-- Circuito (CodCircuito, Nome, Cidade, SiglaPais)
-- 		SiglaPais referencia Pais
insert into circuito (CodCircuito, Nome, Cidade, SiglaPais) values (1, 'Circuito de Albert Park', 'Melbourne', 'AUS');

-- https://motorsport.uol.com.br/f1/results/2019/
insert into corrida (DataCorrida, Tempo, NroVoltas, CodCircuito) values ('14/03/2019', '1:25:27.325', 58, 1);
-- Corrida (DataCorrida, Tempo, NroVoltas, CodCircuito)
--			Codcircuito referencia Circuito


-- GRID 	 https://motorsport.uol.com.br/f1/results/2019/gp-da-australia-420779/?st=GRID
-- RESULTADO https://motorsport.uol.com.br/f1/results/	
-- Resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo)
--		DataCorrida referencia Corrida
--		NroPiloto referencia Piloto
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 77,  2,  1, '1:25:48.211');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 44,  1,  2, '1:25:27.325');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 33,  4,  3, '1:26:24.434');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019',  5,  3,  4, '1:25:49.845');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 16,  5,  5, '1:26:25.555');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 20, 18,  6, '1:25:19.902');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 27,  6,  7, '1:26:54.481');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019',  7, 12,  8, '1:26:15.259');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 18,  8,  9, '1:25:33.709');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 26, 13, 10, '1:25:32.524');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 10,  7, 11, '1:25:27.325');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019',  4, 19, 12, '1:25:19.322');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 11, 14, 13, '1:26:16.497');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 23, 15, 14, '1:26:37.862');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 99, 10, 15, '1:25:35.160');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 63,  9, 16, '1:25:34.461');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 88, 11, 17, '1:25:35.495');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019',  8, 20, 18, '13:54.933');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019',  3, 16, 19, '1:26:17.005');
insert into resultado (DataCorrida, NroPiloto, PosLargada, PosFinal, Tempo) values ('14/03/2019', 55, 17, 20, '1:26:19.211');
