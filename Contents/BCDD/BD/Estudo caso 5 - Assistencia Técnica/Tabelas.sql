Create table Peca(
	CodPeca		integer			NOT NULL,
	NomePeca	varchar(30)		NOT NULL,
	DescPeca	varchar(35),
	VlrPeca		numeric(7,2)	NOT NULL,
	primary key (CodPeca)
);

Create table Servico(
	CodServ		integer		NOT NULL,
	NomeServ	varchar(30) NOT NULL,
	DescServ	varchar(35),
	VlrServ		numeric(7,2),
	primary key (CodServ)
);

Create table Cliente(
	CodCliente	integer 	NOT NULL,
	NomeCliente	varchar(35)	NOT NULL,
	CPFNPJ		integer		NOT NULL,	
	Phone		integer		NOT NULL,
	Mail		integer		NOT NULL,
	primary	key (CodCliente)
);

Create table Orcamento(
	OrcID		integer			NOT NULL,
	Data		date 			NOT NULL,
	VlrTotal	numeric(8,2)	NOT NULL,
	CodCliente	integer			NOT NULL,	
	primary key (OrcID),
	foreign key (CodCliente) references Cliente
);

Create table ServPeca(
	CodPeca		integer		NOT NULL,
	CodServ		integer		NOT NULL,
	QtdPeca		integer		NOT NULL,
	primary key (CodPeca, CodServ),
	foreign key (CodPeca) references Peca,
	foreign key (CodServ) references Servico
);

Create table OrcPeca(
	CodPeca		integer		NOT NULL,
	OrcID		integer		NOT NULL,
	QtdPeca		integer		NOT NULL,
	VlrPeca		numeric(7,2),
	primary key (CodPeca, OrcID),
	foreign key (CodPeca) references Peca,
	foreign key (OrcID) references Orcamento
);

Create table OrcServico(
	CodServ		integer		NOT NULL,
	OrcID		integer		NOT NULL,
	QtdServ		integer		NOT NULL,
	VlrServ		numeric(7,2),
	primary key (CodServ, OrcID),
	foreign key (CodServ) references Servico,
	foreign key (OrcID) references Orcamento
);

