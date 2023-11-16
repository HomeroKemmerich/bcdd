create table pais (
   siglapais     char(3)    	not null,
   nome          varchar(30)	not null,
   primary key (siglapais)
);

create table equipe (
   nroequipe	integer		not null,
   nome		varchar(30)	not null,
   siglapais     char(3)    	not null,
   primary key (nroequipe),
   foreign key(siglapais) references Pais
);

create table piloto (
   nropiloto	integer		not null,
   nome		varchar(30)	not null,
   siglapais    char(3)    	not null,
   nroequipe	integer		not null,
   primary key (nropiloto),
   foreign key(siglapais) references Pais,
   foreign key(nroequipe) references Equipe
);

-- Circuito (CodCircuito, Nome, Cidade, SiglaPais)
create table circuito (
   codcircuito	integer		not null,
   nome			varchar(30)	not null,
   cidade		varchar(30)	not null,
   siglapais    char(3)    	not null,
   primary key (codcircuito),
   foreign key(siglapais) references Pais
);

-- Corrida (DataCorrida, Tempo, NroVoltas, CodCircuito)
--	Codcircuito referencia Circuito
create table corrida (
   datacorrida	date		not null,
   tempo		time		not null,
   nrovoltas	integer		not null,
   codcircuito	integer		not null,
   primary key (datacorrida),
   foreign key(codcircuito) references Circuito
);

-- Resultado (DataCorrida, NroPiloto, PosicaoLargada, PosicaoFinal, Tempo)
--	DataCorrida referencia Corrida
--	NroPiloto referencia Piloto
create table resultado (
   datacorrida	date		not null,
   nropiloto	integer		not null,
   poslargada	integer		not null,
   posfinal		integer		not null,
   tempo		time		not null,
   primary key (datacorrida, nropiloto),
   foreign key(datacorrida) references corrida,
   foreign key(nropiloto) references piloto
);
