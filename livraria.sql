create database if not exists db_livraria;

create table if not exists db_livraria.clientes_online(
    id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    cidade varchar(100) not null
);

create table if not exists db_livraria.clientes_fisicos(
    id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    cidade varchar(100) not null
);

insert into db_livraria.clientes_online(nome,email, cidade)
    values('Ana silva', 'ana@email.com', 'sao paulo'),
          ('Carlos santos','carlos@email.com', 'rio de janeiro'),
          ('Carol oliveira', 'carol@email.com', 'sao paulo'),
          ('kaio jorge','kaio@email.com', 'sao paulo');
          

insert into db_livraria.clientes_fisicos(nome,email, cidade)
    values('Carlos santos','carlos@email.com','Sao paulo'),
          ('Luan santos', 'luan@email.com', 'Minas gerais'),
          ('Carol oliveira', 'carol@email.com', 'sao paulo'),
          ('matheus pereira','mp10@email.com','Minas gerais');

select * from db_livraria.clientes_online;

select * from db_livraria.clientes_fisicos;

-- 1) UNION: Retorne todos os clientes que compram emm
-- qualquer uma das lojas (on-line ou fisica) sem duplicar
-- informações

select nome, email, cidade from db_livraria.clientes_online
UNION
select nome, email, cidade from db_livraria.clientes_fisicos;

-- 2) INTERSECT: Encontre os clientes que compraram tanto na
-- loja on-line quanto na loja fisica.
 select nome, email, cidade from db_livraria.clientes_online
INTERSECT
select nome, email, cidade from db_livraria.clientes_fisicos;

-- 3) EXCEPT: Liste os clientes que compram na lojaa online,
-- mas não compram na loja fisica.

select nome, email, cidade, from db_livraria.clientes_online;
EXCEPT
select nome, email, cidade, from db_livraria.clientes_fisicos;


















