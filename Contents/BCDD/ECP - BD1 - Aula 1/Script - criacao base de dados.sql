-- 
create table Cidade (
    CodCidade	integer		NOT NULL,
    Nome	varchar(35)     NOT NULL,
    UF		char(2)         NOT NULL,
    primary key (CodCidade)    	
);

create table Curso (
    CodCurso	integer		NOT NULL,
    Nome	varchar(30)     NOT NULL,
    primary key (CodCurso)
);

create table Aluno (
    Matricula   integer		NOT NULL,
    Nome	varchar(50)     NOT NULL,
    DtNasc      date            NOT NULL,
    Telefone    varchar(11)             ,
    CodCidade	integer		NOT NULL, 
    CodCurso	integer		NOT NULL,
    primary key (matricula),
    foreign key (CodCidade) references Cidade,
    foreign key (CodCurso) references Curso
);

-- (54) 98115-2969  // varchar(15)
-- 54981152969      // varchar(11)
