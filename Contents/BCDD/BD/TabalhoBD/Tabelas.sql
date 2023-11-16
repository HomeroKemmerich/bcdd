create table Usuario(
    NroCliente      integer         not null,
    Nome            varchar(60)     not null,
    CPF             char(11)        not null,
    DtNasc          date            not null,
    Email           varchar(30),
    Fone            char(11),
    primary key (NroCliente)
);

create table Instrutor(
    NroInstrutor    integer         not null,
    NomeInstrutor   varchar(60)     not null,
    Email           varchar(30)     not null,
    Fone            char(11)        not null,
    primary key (NroInstrutor)
);

create table Estande(
    NroStand        integer         not null,
    primary key (NroStand)
);


create table ModeloArma(
    CodModelo       varchar(10)     not null,
    Fabricante      varchar(30)     not null,
    Categoria       varchar(3)      not null,
    TipoDisparo     char(4)         not null,
    primary key (CodModelo)
);

create table Arma(
    NroArma         integer         not null,
    CodModelo       varchar(10)     not null,
    primary key (NroArma),
    foreign key (CodModelo) references ModeloArma         
);

create table Bateria(
    NroBateria      integer         not null,
    DataBat         date            not null,
    NroInstrutor    integer         not null,
    NroStand        integer         not null,
    NroCliente      integer         not null,
    NroArma         integer         not null,
    primary key (NroBateria),
    foreign key (NroInstrutor) references Instrutor,
    foreign key (NroStand) references Estande,
    foreign key (NroCliente) references Usuario,
    foreign key (NroArma) references Arma
);

create table BateriaArmas(
    NroArma         integer         not null,
    NroBateria      integer         not null,
    primary key (NroArma, NroBateria),
    foreign key (NroArma) references Arma,
    foreign key (NroBateria) references Bateria 
);

create table Municao(
    CodMunicao      integer         not null,
    Calibre         varchar(9)      not null,
    Preco           numeric(4,2)     not null,
    primary key (CodMunicao)
);

create table BateriaMunicao(
    CodMunicao      integer         not null,
    CodBateria      integer         not null,
    Qtd             integer         not null,
    primary key (CodMunicao),
    foreign key (Bateria) references Bateria,
    foreign key (CodMunicao) references Municao
);

