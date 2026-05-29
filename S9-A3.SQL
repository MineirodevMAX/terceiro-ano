create database if not exists db_join;

create table if not exists db_join.produtos(
    id_produto int auto_increment primary key,
    nome varchar(100) not null,
    categoria varchar(100) not null,
    preco decimal(10, 2) not null
);
 
create table if not exists db_join.vendas(
    id_venda int auto_increment primary key,
    quantidade int not null,
    data_venda date not null,
    id_produto int not null,
    foreign key(id_produto) references db_join.produtos(id_produto)
);
 
insert into db_join.produtos(nome, categoria, preco)
    values("computador", "Eletrônicos", 3500),
          ("Cadeira", "Móveis", 200),
          ("Cama", "Móveis", 1000),
          ("Tênis", "Calçados", 3000),
          ("Mesa Gamer", "Eletrônicos", 1500);
 
select * from db_join.produtos;
 
insert into db_join.vendas(quantidade, data_venda, id_produto)
    values(2, "2026-04-14", 1),
          (3, "2026-04-15", 2),
          (4, "2026-03-15", 3),
          (5, "2026-03-16", 4),
          (6, "2026-05-13", 5),
          (7, "2026-05-13", 1);

select * from db_join.vendas(quantidade,data_venda,id_produto)