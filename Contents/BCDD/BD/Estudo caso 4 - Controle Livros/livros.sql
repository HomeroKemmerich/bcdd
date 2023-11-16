Create table Pais (
	IdPais 		integer			NOT NULL,
	NomePais	varchar(30)		NOT NULL,
	primary key (IdPais)
);

Create table Autor(
	CodAutor	integer			NOT NULL,
	NomeAutor	varchar(35)		NOT NULL,
	DtNasc		date,
	DtFal		date,
	IdPais		integer			NOT NULL,
	primary key (CodAutor),
	foreign key (IdPais) references Pais
);

Create table Livro (
	CodLivro 	integer			NOT NULL,
	TituloLivro varchar(35)		NOT NULL,
	Tema 		varchar(20)		NOT NULL,
	Situacao	varchar(8),
	Prioridade	integer,
	CodAutor	integer			NOT NULL,
	primary key (CodLivro),
	foreign key (CodAutor) references Autor
);

Create table AutorLivro(
	CodAutor	integer			NOT NULL,
	CodLivro	integer			NOT NULL,
	primary key	(CodAutor, CodLivro),
	foreign key (CodLivro) references Livro,
	foreign key (CodAutor) references Autor
);

Create table Filme(
	CodFilme		integer			NOT NULL,
	TituloFilme		varchar(35)		NOT NULL,
	Diretor			varchar(35)		NOT NULL,
	AnoEstreia		integer			NOT NULL,
	SituacaoFilme	varchar(13)		NOT NULL,
	CodLivro 		integer			NOT NULL,
	IdPais			integer			NOT NULL,
	primary key (CodFilme),
	foreign key (CodLivro) references Livro,
	foreign key (IdPais) references Pais
);
