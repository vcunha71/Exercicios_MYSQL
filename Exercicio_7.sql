create table departamento(

	id int not null auto_increment,
    nome varchar(30),
    primary key(id)
)default charset utf8;


create table empregado (
	id int not null auto_increment,
    salario int,
    departamento_id int,
    primary key(id),
    foreign key (departamento_id) references departamento(id)
)default charset utf8;


select departamento.nome
from departamento,empregado
where departamento.id = empregado.departamento_id
and empregado.salario > 2500;