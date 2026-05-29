create database db_semana08;
 
create table db_semana08.Cliente(
    cliente_id int auto_increment primary key,
    nome varchar(100) not null,
    idade int not null,
    email varchar(100) not null,
    senha varchar(100) not null
);
 
insert into db_semana08.Cliente(nome, idade, email, senha)
values("Kaiojorge", 24, "Kaiomelhor9@gmail.com", "kjgol"),
    ("Neymar", 34, "neymarvaipracopa@gmail.com", "copadomundo2026"),
    ("Cristiano Ronaldo", 41, "melhordahistoria@gmail.com", "papaicris");
    ("luan santos",17, "teamocarol@gmail.com","mineiro123"),
    ("Carol santos" 17. "irmadalara@gmail.com", "irmas123"),
select * from db_semana08.Cliente;
select * from db_semana08.Cliente
    where cliente_id = 1;
 
select * from db_semana08.Cliente
    where email = "neymarvaipracopa@gmail.com";
 
select * from db_semana08.Cliente order by nome asc;
select * from db_semana08.Cliente order by idade asc;
select * from db_semana08.Cliente order by email asc;

select * from db_semana08.cliente
     order by idade asc;
 
select * from db_semana08.cliente
    where nome like 'santos';


































