create table encantada.tbCliente(
	cpf int primary key,
	endereco varchar (100) not null,
	nome_cliente varchar (50) not null,
	telefone_cliente int not null
);

create table encantada.tbProduto (
	id_pro int primary key,
	nome_pro varchar (50) not null,
	categoria varchar (50) not null,
	estoque int,
	preco int not null
);

create table encantada.tbVendedor (
	id_ven int primary key,
	nome_ven varchar (50) not null,
	telefone_ven int not null
);

create table encantada.tbPedido(
	id int primary key,
	cpf int,
	id_ven int,
	id_pro int, 
	quant int not null,
	nome_ped varchar (50),
	data date,
	foreign key (cpf) references encantada.tbCliente (cpf),
	foreign key (id_ven) references encantada.tbVendedor(id_ven),
	foreign key (id_pro) references encantada.tbProduto (id_pro)
);
