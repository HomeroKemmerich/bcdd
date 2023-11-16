create table curso (
	idCurso			integer 		not null,
	descricao		varchar(30) 	not	null,
	duracao			integer			not null,
	primary key(idCurso) 
);

insert into curso values (1, 'Planilha eletrônica', 60);
insert into curso values (2, 'Pacote Google', 30);

create table professor(
	matricula 	integer			not null,
	nome		varchar(50)		not null,
	email		varchar(50)		not null,
	constraint pk_professor primary key (matricula)
);

insert into professor values (1, 'Juliano', 'tonezer@ei.br');
insert into professor values (2, 'Ana', 'ana@ei.br');


create table sala (
	NroSala 	integer		not null,
	--restringe o tipo a sala ou laboratorio
	Tipo		char(4)		check (tipo in ('SALA', 'LAB')),
	Capacidade	integer		not null,
	constraint 	pk_sala	primary key (NroSala)
);

insert into sala values (101, 'SALA', 50);
insert into sala values (9, 'LAB', 20);

create table aluno(
	matricula	integer		not null,
	nome 		varchar(50)	not null,
	email		varchar(50)	not null,
	constraint	pk_aluno	primary key (matricula)
);

insert into aluno values (1010, 'Antônio', 'tonho@gmail.com');
insert into aluno values (1025, 'Ricardo', 'rique@gmail.com');
insert into aluno values (1230, 'Patricia', 'pati@gmail.com');


create table turma (
	codTurma	integer	not null,
	inicio		date	not null,
	fim			date			,
	idCurso		integer	not null,
	NroSala		integer	not null,
	constraint	pk_turma	primary key (codTurma),
	constraint	fk_turma_curso	foreign key (idCurso) references curso,
	constraint	fk_turma_sala	foreign key (NroSala) references sala 	
);

insert into turma values (100, '10/10/2019', NULL, 1, 9);
insert into turma values (101, '10/10/2019', NULL, 2, 101);

create table profturma(
	codTurma 		integer 	not null,
	matriculaProf 	integer 	not null,
	constraint pk_profturma	primary key	(codTurma, matriculaProf),
	constraint fk_pt_turma	foreign key (codTurma) references turma,
	constraint fk_pt_prof	foreign key (matriculaProf) references professor,
);

insert insert into profturma values (100,1);
insert insert into profturma values (101,1);
insert insert into profturma values (101,2);

create table matriculados (
	CodTurma		integer		not null,
	matriculaAluno		integer 	not null,
	nroFaltas		integer		,
	conceito		char(1)         ,
	constraint pk_matriculados primary key (CodTurma, matriculaAluno),
	constraint fk2_matr_turma foreign key (CodTurma) references Turma,
	constraint fk1_matr_aluno foreign key (matriculaAluno) references Aluno
);
insert into matriculados values (100, 1010, NULL, NULL);
insert into matriculados values (100, 1025, NULL, NULL);

insert into matriculados values (101, 1010, NULL, NULL);
insert into matriculados values (101, 1025, NULL, NULL);
insert into matriculados values (101, 1230, NULL, NULL);

--Álgebra relacional
--PI matricula (ALUNO)
select matricula, nome
from aluno;


--ID dos cursos com menos de 30 dias
--Álgebra relacional
--Pi idcurso
--Sigma duracao <= 30
-- (CURSO)
select idCurso
from curso
where duracao <= 30;

--turma X sala
select *
from turma;

select * 
from sala;

--PI *
--(turma X sala)
select * 
from turma, sala;
 * 

--PI codturma, tipo, capacidade
--SIGMA turma.NroSala = sala.NroSala
select codTurma, tipo, Capacidade
from turma, sala
where turma.NroSala = sala.NroSala;