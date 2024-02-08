create table pessoa (
	id bigint,
	nome varchar(50),
	idade integer,
	SEXO VARCHAR(1)
);

create table pessoa (
	id bigint not null,
	nome varchar(50) not null,
	idade integer constraint check_idade CHECK (idade > 0 and idade < 120),
	SEXO VARCHAR(1) not null
);

drop table pessoa;

alter table pessoa
add column sexo boolean;

alter table pessoa
add column nome_m varchar(50);

alter table pessoa
rename column nome_m to nome_mae;

alter table pessoa
alter column nome_mae type varchar(30);

alter table pessoa
alter column nome_mae type character;

ALTER TABLE pessoa 
ALTER COLUMN nome_mae 
SET DEFAULT 'NULO';

ALTER TABLE pessoa 
ALTER COLUMN nome_mae 
DROP DEFAULT;

ALTER TABLE pessoa 
ALTER COLUMN nome_mae 
SET NOT NULL;

ALTER TABLE pessoa 
ALTER COLUMN nome_mae 
DROP NOT NULL;

ALTER TABLE pessoa 
ADD CONSTRAINT check_idade 
CHECK (
	idade > 0
	and idade <100
);

ALTER TABLE pessoa_1 
RENAME TO pessoa;

ALTER TABLE pessoa
drop column sexo;

alter table pessoa
ADD COLUMN SEXO VARCHAR(1);

truncate pessoa;

drop table pessoa;


select * from pessoa;

insert into pessoa (id, nome, idade, sexo) 
values (1,'Bruna', 29, 'F');
insert into pessoa (id, nome, idade, sexo) 
values (2,'Luiz', 36, 'M');
insert into pessoa (id, nome, idade, sexo) 
values (2,'Matheus', 0, 'M');
insert into pessoa (id, nome, idade, sexo) 
values (2,'Matheus', 200, null);
insert into pessoa (id, nome, idade, sexo) 
values (2,'Matheus', 10, 'M');
insert into pessoa (id, nome, idade, sexo) 
values (4,'Maurício', 36, 'M');
insert into pessoa (id, nome, idade, sexo) 
values (5,'Gustavo', 36, 'M');
insert into pessoa (id, nome, idade, sexo) 
values (6,'Samuel', 40, 'M');

update pessoa set nome = 'Bruna';
update pessoa set nome = 'Luiz' where id = 1;
update pessoa set nome = 'Luiz', idade = 38 where id = 1;

delete from tb_pessoa;

delete from tb_pessoa where id = 1;

select * from pessoa where nome like('Luiz');
select * from pessoa where nome like('R%');
select * from pessoa where nome like('%s');
select * from pessoa where nome like('%dri%');
select * from pessoa where nome like('_o_');
select * from pessoa where nome not like('R%');
select nome from pessoa;
select upper(nome) from pessoa;
select * from pessoa where idade >= 10 and idade < 39;
select * from pessoa where idade >= 10 or nome like('Luiz');

select * from pessoa order by nome;
select * from pessoa order by nome asc;
select * from pessoa order by nome desc;

select distinct(nome) from pessoa;

select * from pessoa where nome in ('Luiz', 'Bruna');

select * from pessoa where idade between 10 and 30;
