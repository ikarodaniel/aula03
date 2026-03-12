create schema sucos_vendas;
use suco_vendas; 

select embalagens, tamanho from tabela_de_produtos;

select distinct embalagens, tamanho from tabela_de_produtos;

select distinct embalagens, tamanho, sabor, preco_da_lista from tabela_de_produtos where sabor ='Laranja';

select distinct cidade, bairro, estado from tabela_de_clientes where cidade = 'Rio de Janeiro';


select * from tabela_de_produtos limit 30;

-- Obtenha as 10 primeiras vendas 
-- Do dia 01/01/2017

select * from notas_fiscais where data_venda = '2017/01/01' limit 5,10;

#utilizando order by

select * from tabela_de_produtos order by preco_de_lista, embalagem;
select * from tabela_de_produtos order by preco_de_lista desc;

-- Qual ou quais foram as maiores vendas do produto "linha refrescante - 1 litro - morango/limão" em quantidade e preco?

select * from  tabela_de_produtos
 where nome_do_produto = 'linha refrescante - 1 litro - morango/limão';
 select * from itens_notas_fiscais
 where codigo_do_produto = '1101035'
 order by quantidade desc, preco desc;
 
 # agrupando os resultados (group by)
 
 select estado, sum(limite_de_credito) as preco_total
 from tabela_de_clientes group by estado;
 
 
 
-- 1 Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’, cujo bairro é ‘Jardins’. Ela está de férias?
 
 select nome, de_ferias, bairro from tabela_de_vendedores
 where nome = "Claudia Moraes" and bairro = "Jardins";
 
 -- 2 A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.

select * from tabela_de_vendedores where percentual_comissao >= 0.10;

-- 3 Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015. Por que o CPF desta tabela não é uma chave primária (PK)?

select * from notas_fiscais where  matricula = "00237" or data_venda = "015-01-12"
-- o cpf não é uma pk pois por cpf é possivel fazer mais de uma compra e na tabela mostra repitidamente o mesmo cpf, por isso o numero é utilizado como pk.