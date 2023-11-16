insert into Pais values (1, 'Inglaterra');
insert into Autor (CodAutor, NomeAutor, DtNasc, IdPais) values (1, 'Neil Gaiman', '10/11/1960', 1);
insert into Livro (CodLivro, TituloLivro, Tema, Situacao, CodAutor) values (1, 'Deuses Americanos', 'Ficção', 'Lido', 1);

insert into Pais values (2, 'África do Sul');
insert into Pais values (3, 'Nova Zelândia');
insert into Autor (CodAutor, NomeAutor, DtNasc, DtFal, IdPais) values (2, 'J. R. R. Tolkien', '03/01/1892', '02/09/1973', 2);
insert into Livro (CodLivro, TituloLivro, Tema, Situacao, CodAutor) values (2, 'O Senhor dos Anéis', 'Fantasia', 'Lido', 2);
insert into Filme values (1, 'O Senhor dos Anéis', 'Peter Jackson', 2002, 'Assistido', 2, 3);

insert into Pais values (4, 'Estados Unidos');
insert into Autor (CodAutor, NomeAutor, DtNasc, IdPais) values (3, 'Rick Riordan', '05/06/1964', 4);
insert into Livro (CodLivro, TituloLivro, Tema, Situacao, CodAutor) values (3, 'Percy Jackson e o Ladrão de Raios', 'Fantasia', 'Lido', 3);
insert into Filme values (2, 'Percy Jackson e o Ladrão de Raios', 'Chris Colombus', 2010, 'Assistido', 3, 4);

insert into Filme values (3, 'O Senhor dos Anéis e as Duas Torres', 'Peter Jackson', 2002, 'Não-assistido', 2, 3);

insert into AutorLivro values (2, 2);
insert into AutorLivro values (2, 4);
insert into AutorLivro values (1, 1);
insert into AutorLivro values (3, 3);

Select * from Pais;
select * from AutorLivro;
select * from Livro;
select * from Filme order by AnoEstreia;
