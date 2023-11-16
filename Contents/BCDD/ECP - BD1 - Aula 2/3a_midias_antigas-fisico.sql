create table categoria (
   categoria  char(10) not null,
   primary key (categoria)
);

create table filme (
    idFilme    integer     not null,
    titulo     varchar(50) not null,
    categoria  char(10) not null,
    primary key (idFilme),
    foreign key (categoria) references Categoria
);

create table fita (
    NroFita   integer     not null,
    idFilme   integer     not null,
    primary key (NroFita),
    foreign key (idFilme) references Filme
);

create table ator (
    idAtor     integer     not null,
    NomeReal   varchar(50) not null,
    DtNasc     Date        ,
    primary key (idAtor)
);

create table estrela (
    idFilme   integer     not null,
    idAtor     integer     not null,
    primary key (idFilme, idAtor),
    foreign key (idFilme) references Filme,
    foreign key (idAtor)  references Ator
);

create table cliente (
    nroCliente integer     not null,
    Nome       varchar(50) not null,
    Telefone   varchar(15)         ,
    Endereco   varchar(50)         ,	
    primary key (nroCliente)
);

create table emprestimo (
    NroFita      integer     not null,
    nroCliente   integer     not null,
    DtRet        date        not null,
    DtDev        date                ,   
    primary key (NroFita, nroCliente, DtRet),
    foreign key (nroFita) references Fita,
    foreign key (nroCliente) references Cliente
);

