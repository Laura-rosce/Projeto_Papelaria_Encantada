	===inserção na tabela tbvendedor===
insert into encantada.tbVendedor (id_ven, nome_ven, telefone_ven)
values (1, 'Carol', 8888888),
	   (2, 'Layanne', 777777),
	   (3, 'Karolayne', 666666),
	   (4, 'Laura', 444444)
	   
	===inserção na tabela tbcliente===
insert into encantada.tbCliente (cpf, endereco, nome_cliente, telefone_cliente)
values (12345678, 'Rua Genesio Pitanga', 'Liz', 400289),
	   (78912367, 'Rua Edinardo Mota', 'Leonardo', 5483027),
	   (37356227, 'Rua Maria Senhorinha','Denyse', 667845),
	   (44561223, 'Rua Vascondino Pereira da Silva', 'Benedito', 233544),
	   (35468129, 'Rua Joana Pereira de Macedo', 'Sophia', 546213),
	   (99465725, 'Rua Celina Barros Cabral', 'Arthur', 489612),
	   (25478960, 'Rua Isabel Ferreira', 'Heitor', 84902756),
	   (70245698, 'Rua do grude', 'Ana Julia', 456001)

	===inserção na tabela tbproduto===
insert into encantada.tbProduto (id_pro, nome_pro, categoria, estoque, preco)
values (1, 'caneta brilhosa', 'caneta', 20, 2.00),
		(2, 'caderno da Mavel', 'caneta', 50, 35.50),
	(3, 'caneta galáxia', 'caneta', 20, 2.00),
	(4, 'borracha do Mickey', 'borracha', 20, 2.00),
	(5, 'caderno das princesas', 'caderno', 30, 29.00),
	(6, 'pincel Piloto', 'pincel', 20, 3.00),
	(7, 'cartolina azul', 'papel', 100, 2.00),
	(8, 'cartolina vermelha','papel', 100, 2.00),
	(9, 'resma de papel', 'papel', 100, 25.99),
	(10, 'borracha Mercuri', 'borracha', 20, 0.50),
	(11, 'caderno tilibra', 'caderno', 30, 45.00),
	(12, 'fita durex', 'fita', 40, 15.99),
	(13, 'grampeado', 'grampeador', 20, 15.00)

	
	===inserção na tabela tbcliente===
insert into encantada.tbPedido (quant, nome_ped, data )
values  (9, 'caneta brilhosa', 2023-12-19),
	 (3, 'borracha do Mickey', 2023-12-20),
	 (1, 'caderno Marvel', 2023-12-20),
	 (10, 'caneta galáxia', 2023-12-19),
	 (2, 'caderno das princesas', 2023-12-21),
	 (3, 'pincel Piloto', 2024-01-05),
	 (8, 'cartolina azul', 2024-01-06),
	 (2, 'cartolina vermelha', 2023-12-10),
 	 (8, 'resma de papel', 2023-12-20);
	 
	 
	 
	=== ATUALIZAÇÃO DO ESTOQUE DE PRODUTOS ===
update encantada.tbProduto set estoque = 11 where id_pro = 1;
update encantada.tbProduto set estoque = 17 where ip_pro = 4;
update encantada.tbProduto set estoque = 49  where ip_pro = 2;
update encantada.tbProduto set estoque = 10 where ip_pro = 3;
update encantada.tbProduto set estoque = 28 where ip_pro = 5;
update encantada.tbProduto set estoque = 17 where ip_pro = 6;
update encantada.tbProduto set estoque = 92  where ip_pro = 7 ;
update encantada.tbProduto set estoque = 98  where ip_pro = 8;
update encantada.tbProduto set estoque = 92 where ip_pro = 9;
update encantada.tbProduto set preco = 25.00 where id_pro = 13;
update encantada.tbProduto set preco = 11.00 where id_pro = 12;


	=== ATUALIZAÇÃO DE CADASTRO DE CLIENTE ===
update encantada.tbCliente set telefone_cliente =  667845 where cpf = 37356227;


	=== ATUALIZAÇÃO DE CADASTRO DE VENDEDOR ===
update encantada.tbVendedor set telefone_ven = 456908 where id_ven = 3;
update encantada.tbVendedor set telefone_ven = 789345 where id_ven = 2;


	=== SELEÇÃO DOS DADOS DA TABELA DE PRODUTOS POR ORDEM ALFABÉTICA ===
select nome_pro, preco from encantada.tbProduto order by nome_pro asc;
select nome_pro ,preco  from encantada.tbProduto order by nome_pro desc;
select * from encantada.tbProduto where categoria = ‘caneta’;


	=== SELEÇÃO DOS DADOS DA TABELA DE PRODUTOS POR CATEGORIA ===
select *  from encantada.tbProduto where categoria = ‘caderno’;


	=== SELEÇÃO DOS DADOS DA TABELA DE PRODUTOS POR PREÇO ===
select nome_pro, preco from encantada.tbProduto where preco < 20.00;


	=== VERIFICAR SE PRECISA RENOVAR ESTOQUE ===
select id_pro, nome_pro, estoque from encantada.tbProduto where estoque > 5;


	=== SELEÇÃO DAS TABELAS COMPLETAS === 
select * from encantada.tbProduto;
select * from encantada.tbVendedor;
select * from encantada.tbCliente;
select * from encantada.tbPedido;


	=== SUBCONSULTA  DOS PREÇOS QUE SÃO MAIORES QUE A MEDIA DOS PREÇOS ===
select id_pro ,nome_pro, preco from encantada.tbProduto where preco > (select avg(preco) from encantada.tbProduto);

