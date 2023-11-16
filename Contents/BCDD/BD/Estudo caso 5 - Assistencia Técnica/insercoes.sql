insert into Cliente values (1, 'Homero Menezes Vargas Kemmerich', '01954836007', '54996637862', '146676@upf.br');
insert into Cliente values (2, 'Renato Vargas Junior', '04769733097', '54991622576', '166496@upf.br');
insert into Cliente values (3, 'Eduarda Cristina Pissolatto', '02254313002', '54992043380', '173705@upf.br');

insert into Servicos values (1, 'Formatação de PC', 'Formate seu computador', 49.99);
insert into Servicos values (2, 'Formatação de Pen-Drive', 'Limpamos tudo o que você precisar hehe', 24.99);
insert into Servicos values (3, 'Instalação do Windows', 'Não perca as novidades da Microsoft', 119.99);

insert into Pecas values (1, 'Monitor', 'Monitor LED 4K 60fps', 799.99);
insert into Pecas values (2, 'Pen-Drive', 'Pen-Drive 8GB', 19.99),
insert into Pecas values (3, 'Licensa Windows', 'Windows 10 com Office 365', 499.99);

insert into ServPeca values (3, 3, 1);

insert into Orcamento values (1, '12/09/2019', 1599.98, 2);
insert into Orcamento values (2, '12/09/2019', 619.98, 3);
insert into Orcamento values (3, '12/09/2019', 799.99, 1);


insert into OrcPeca values (1, 1, 2, 799.99); 
insert into OrcServico values (3, 2, 1, 119.99);
insert into OrcPeca values (1, 3, 1, 799.99);


