insert into Usuario values (146676, 'Homero Menezes', '01954836007', '11/03/2001','hmvk000@gmail.com', '54996637862');
insert into Usuario values (187654, 'Gabriel Ribas', '02154789631', '03/12/1998','gabrielkemmerich12@gmail.com', '54997149554');
insert into Usuario values (184578, 'Marcelo Guedes', '00968523101', '05/06/2002','marcelokmg@gmail.com', '69981161789');

insert into Instrutor values (1256, 'Cássio da Costa', 'Cassio@bol.com', '54999864616');
insert into Instrutor values (4586, 'Matheus Oliveira', 'Oliveiram@uol.com.br', '54981533899');

insert into Estande values (01);
insert into Estande values (02);
insert into Estande values (03);
insert into Estande values (04);
insert into Estande values (05);
insert into Estande values (06);

insert into ModeloArma values ('MP5', 'Heckler & Koch', 'SMT','AUTO');
insert into ModeloArma values ('M16A4', 'Colt', 'RA','SEMI');
insert into ModeloArma values ('AK12', 'Kalashnikov', 'RA','AUTO');
insert into ModeloArma values ('FNMAG', 'FN Herstal', 'ML','AUTO');
insert into ModeloArma values ('FAL', 'FN Herstal', 'RB','SEMI');
insert into ModeloArma values ('M1A', 'Springfield Armory', 'RFA','SEMI');
insert into ModeloArma values ('R870', 'Remington', 'ESC','PUMP');
insert into ModeloArma values ('1911', 'Colt', 'PIS','SEMI');
insert into ModeloArma values ('G18', 'Glock', 'PIS','AUTO');

insert into Arma values (35, 'MP5');
insert into Arma values (16, 'M16A4');
insert into Arma values (02, 'M1A');
insert into Arma values (05, 'M1A');
insert into Arma values (08, '1911');
insert into Arma values (18, 'G18');
insert into Arma values (70, 'FAL');

insert into Municao values (556, '5.56 OTAN', 06.00);
insert into Municao values (3006, '7.62 OTAN', 08.00);
insert into Municao values (762, '7.62 SVT', 08.00);
insert into Municao values (922, '9mm Para', 03.00);
insert into Municao values (45, '.45 ACP', 04.00);
insert into Municao values (12, '12 G', 06.00);

insert into Bateria values (102, '16/11/2019', 1256, 04, 146676, 02);
insert into Bateria values(103, '17/11/2019', 4586, 06, 187654, 16);
insert into Bateria values(107, '18/11/2019', 1256, 02, 184578, 70);

insert into BateriaMunicao values(556, 103, 40);
insert into BateriaMunicao values(3006, 107, 40);

