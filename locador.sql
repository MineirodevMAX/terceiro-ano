 create database db_locadora;
 
create table db_locadora.tb_veiculos(
    cod_veiculo int auto_increment primary key,
    modelo varchar (100),
    marca varchar(100),
    ano int, status varchar(20),
    preco_diaria decimal(10,2)
);
 
create table db_locadora.tb_clientes(
    cliente_id int auto_increment primary key,
    nome varchar (100),
    email varchar (100),
    cidade varchar (50),
    idade int,
    categoriaCliente varchar(20)
);
 
insert into db_locadora.tb_veiculos(modelo, marca, ano, status, preco_diaria)
values("NIVUS", "VOLKSWAGEN", "2025", "NOVO", "450,00"),
        ("320i", "BMW", "2020", "USADO", "500,00"),
        ("Q3", "AUDI", "2018", "USADO", "470,00"),
        ("TERA", "VOLKSWAGEN", "2026", "NOVO", "430,00"),
        ("CRETA", "HYUNDAI", "2026", "NOVO", "435,00");
 
insert into db_locadora.tb_clientes(nome, email, cidade, idade, categoriaCliente)
values("GUSTAVO", "DIMIS.DA_BIQUINHO_DE_FOGUETE@GMAIL.COM", "SÃO PAULO", "18", "OURO"),
        ("SORRISO", "GOLEIRO.LIGAPESTE@GMAIL.COM", "SÃO PAULO", "18", "BRONZE"),
        ("MINEIRO", "HOMEM_DA_CAROL@GMAIL.COM", "MINAS GERAIS", "18", "OURO"),
        ("MOSCA", "HOMEMFINO@GMAIL.COM", "SÃO PAULO", "18", "PRATA"),
        ("DIELME", "DIELMEPÈ@GMAIL.COM", "SÃO PAULO", "32", "BRONZE");
       
select * from db_locadora.tb_veiculos;
select * from db_locadora.tb_clientes;
 












































































