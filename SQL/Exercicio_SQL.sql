
/*relacionar a tabela photographers com a tabela photos*/
select * from photographers t join photos p on t.id = p.photographer_id


/* inserir 5 photografos */
insert into photographers(nome) values('diones');
insert into photographers(nome) values('diones1');
insert into photographers(nome) values('diones2');
insert into photographers(nome) values('diones3');
insert into photographers(nome) values('diones4');


/*inserir 3 fotos para cada photografo*/
insert into photos (title, _size, photographer_id) values ('beleza', 70, 1);
insert into photos (title, _size, photographer_id) values ('beleza2', 70, 1);
insert into photos (title, _size, photographer_id) values ('beleza3', 70, 1);
insert into photos (title, _size, photographer_id) values ('beleza', 70, 1);
insert into photos (title, _size, photographer_id) values ('beleza2', 70, 1);
insert into photos (title, _size, photographer_id) values ('beleza3', 70, 1);
insert into photos (title, _size, photographer_id) values ('tristeza', 70, 2);
insert into photos (title, _size, photographer_id) values ('tristeza2', 70, 2);
insert into photos (title, _size, photographer_id) values ('tristeza3', 70, 2);
insert into photos (title, _size, photographer_id) values ('tristeza', 70, 3);
insert into photos (title, _size, photographer_id) values ('tristeza2', 70, 3);
insert into photos (title, _size, photographer_id) values ('tristeza3', 70, 3);
insert into photos (title, _size, photographer_id) values ('tristeza', 70, 4);
insert into photos (title, _size, photographer_id) values ('tristeza2', 70, 4);
insert into photos (title, _size, photographer_id) values ('tristeza3', 70, 4);
insert into photos (title, _size, photographer_id) values ('tristeza', 70, 5);
insert into photos (title, _size, photographer_id) values ('tristeza2', 70, 5);
insert into photos (title, _size, photographer_id) values ('tristeza3', 70, 5);

/* para o teste de max e min*/
insert into photos (title, _size, photographer_id) values ('tristeza4', 40, 4);
insert into photos (title, _size, photographer_id) values ('tristeza5', 90, 4);

/* Trazer todas as fotos */
select title from photos

/*Selecione o tamanho máximo e mínimo das fotos inseridas;*/

select max(_size),min(_size) from photos;


/*Selecione o nome de todos os fotógrafos;*/
select nome from photographers

/*Selecione todas as fotos junto do nome de todos os fotógrafos;*/
select nome,title from photographers t join photos p on t.id = p.photographer_id;


/*Altere o nome de 1 fotógrafo aleatórios*/
update photographers 
set nome = 'escolhidos1' 
where nome in (select nome from photographers order by random() limit 1);


/*Apague todas as fotos de um fotógrafo em especial.*/
delete from photos where photographer_id = 4 