delete from aluno;
delete from cidade;
delete from curso;

select * from Cidade;
insert into cidade (codcidade, nome, uf) values (1, 'Passo Fundo', 'RS');
insert into cidade (codcidade, nome, uf) values (2, 'Tapejara', 'RS');
insert into cidade (codcidade, nome, uf) values (3, 'Ibiaçá', 'RS');
insert into cidade (codcidade, nome, uf) values (4, 'Marau', 'RS');
insert into cidade (codcidade, nome, uf) values (5, 'Erechim', 'RS');
insert into cidade (codcidade, nome, uf) values (6, 'Carazinho', 'RS');
insert into cidade (codcidade, nome, uf) values (7, 'Soledade', 'RS');

select * from curso;
insert into curso (codcurso, nome) values (1, 'Engenharia de Computação');
insert into curso (codcurso, nome) values (2, 'Ciência da Computação');
insert into curso (codcurso, nome) values (3, 'Análise de Desenlv. Sistemas');

select * from aluno;
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
            values (173709, 'Guilherme Venícios Favretto', '23/07/1998', '54996825858', 2, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173722,'Pedro Marcelo Roso Manica', '24/11/2000', '9815769940', 1 , 1);					
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173726, 'Wesley de Oliveira Tisian', '08/04/2000','54991573038',1,1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173706, 'Gabriel dos Santos Tres', '09/05/2000', '54999093884', 1, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173702, 'André Costa Pellin', '06/12/1999', '54999458140', 3, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (69844, 'Diego Darci Langaro', '16/08/1986', '54996105010', 1, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (166496, 'Renato Vargas Junior', '11/05/1999', '54991622576', 1, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (146676, 'Homero Menezes Vargas Kemmerich', '11/03/2001', '54996637862', 6, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173705, 'Eduarda Cristina Pissolatto', '05/03/2001', '54992043380', 4, 1);
insert into aluno (matricula, nome, dtnasc, telefone, codcidade, codcurso) 
			values (173720, 'Maria Eduarda Bondezan Barandas', '04/11/2000', '54981460482', 5, 1);			
			