create table Produto(
	CodProduto		integer			NOT NULL,
	DescProduto		varchar(30)		NOT NULL,
	Preco			number(10,2)	NOT NULL,
	
	primary key (CodProduto)
);

create table Fornecedor(
	CodForn			integer 		NOT NULL,
	Nome			varchar(35)		NOT NULL,
	
	primary key (CodForn)	
);

create table Compra(
	CodCompra		integer			NOT NULL,
	DataHora		timestamp		NOT NULL,
	CodForn			integer			NOT NULL,
	
	primary	key (CodCompra),
	foreign key (CodForn) references Fornecedor 	
);

create table ProdutoCompra(
	CodCompra		integer			NOT NULL,
	CodProduto		integer			NOT NULL,
	Qtd_Compra		integer			NOT NULL,
	Preco_Compra	number(10,2)	NOT NULL,

	primary key (CodCompra, CodProduto),
	foreign key (CodCompra) references Compra,
	foreign key (CodProduto) references Produto
);

insert into Produto values (122, "Mouse Gamer Logitech", 259.99);
insert into Produto values (044, "Cadeira Gamer", 899.99);

insert into Fornecedor values (01, "Kabum.com.br");
insert into Fornecedor values (09, "Amazon.com.br");

insert into Compra values (1, Current_Timestamp, 01);
insert into Compra values (2, Current_Timestamp, 01);

insert into ProdutoCompra values (1, 1, 1, 259.99);
insert into ProdutoCompra values (2, 2, 1, 899.99);