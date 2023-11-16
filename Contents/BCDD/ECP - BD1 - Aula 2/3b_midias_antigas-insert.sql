insert into categoria values ('Drama');
insert into categoria values ('Comédia');
insert into categoria values ('Aventura');
insert into categoria values ('Terror');
insert into categoria values ('Suspense');
insert into categoria values ('Policial');
insert into categoria values ('Ação');
insert into categoria values ('Romance');
select * from categoria;

insert into filme (idfilme, titulo, categoria) values (1, 'A hora do rush', 'Comédia');
insert into filme (idfilme, titulo, categoria) values (2, 'A Freira', 'Terror');
insert into filme (idfilme, titulo, categoria) values (3, 'American Pie', 'Comédia');
insert into categoria values ('Animação');
insert into filme (idfilme, titulo, categoria) values (4, 'Wall-E', 'Animação');
insert into filme (idfilme, titulo, categoria) values (5, 'Vingadores', 'Ação');
insert into filme (idfilme, titulo, categoria) values (6, 'Orgulho e preconceito', 'Romance');
insert into filme (idfilme, titulo, categoria) values (7, 'Transformers', 'Ação');
insert into filme (idfilme, titulo, categoria) values (8, 'Tá dando onda', 'Animação');
insert into filme (idfilme, titulo, categoria) values (9, 'De volta para o futuro', 'Aventura');
insert into filme (idfilme, titulo, categoria) values (10, 'Um estranho no ninho', 'Suspense');
select * from filme;

insert into fita (idFilme, nrofita) values (1, 100);
insert into fita (idFilme, nrofita) values (1, 101);
insert into fita (idFilme, nrofita) values (1, 102);
insert into fita (idFilme, nrofita) values (2, 110);
insert into fita (idFilme, nrofita) values (2, 111);
insert into fita (idFilme, nrofita) values (3, 120);
select * from fita;

insert into ator values (1, 'Mel Gibson', '03/01/1956');
insert into ator values (2, 'Jackie Chan', NULL);
insert into ator values (3, 'Fábio Assunção', NULL);
insert into ator values (4, 'Angelina Jolie', '04/06/1975');
select * from ator;

insert into estrela values (5, 1);
insert into estrela values (5, 3);
insert into estrela values (10, 2);
insert into estrela values (6, 4);
select * from estrela;

insert into cliente values (173709, 'Guilherme Venícios Favretto', '54996825858');
insert into cliente values (173722,'Pedro Marcelo Roso Manica', '9815769940');
insert into cliente values (173726, 'Wesley de Oliveira Tisian','54991573038');
insert into cliente values (173706, 'Gabriel dos Santos Tres',  '54999093884');
insert into cliente values (173702, 'André Costa Pellin', '54999458140');
insert into cliente values (69844, 'Diego Darci Langaro',  '54996105010');
insert into cliente values (166496, 'Renato Vargas Junior',  '54991622576');
insert into cliente values (146676, 'Homero Menezes Vargas Kemmerich',  '54996637862');
insert into cliente values (173705, 'Eduarda Cristina Pissolatto', '54992043380');
insert into cliente values (173720, 'Maria Eduarda Bondezan Barandas', '54981460482');			
select * from cliente;

insert into emprestimo (nrofita, nrocliente, dtret) values (100, 173709, CURRENT_DATE);
insert into emprestimo (nrofita, nrocliente, dtret) values (102, 173720, CURRENT_DATE);
insert into emprestimo (nrofita, nrocliente, dtret) values (110, 173726, CURRENT_DATE);
insert into emprestimo (nrofita, nrocliente, dtret) values (120, 166496, CURRENT_DATE);
select * from emprestimo;
