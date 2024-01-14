-- selecionando todas as células de determinada tabela
SELECT * from categorias;
SELECT * from clientes;

-- selecionando um determinado número de colunas
select * from clientes limit 2;

-- selecionando e renomeando colunas, e aplicando limite de seleção
select Nome as 'nome', Sobrenome as 'username' from clientes limit 2;

-- ordenando em ordem crescente ou decrescente

select * from produtos order by Preco_Unit asc;
select * from produtos order by Preco_Unit desc;

-- filtros

-- filtrando todos os clientes do sexo feminino
select * from clientes where Sexo = 'F';

-- filtrando todos os clientes que tem pelo menos um filho
select * from clientes where Qtd_Filhos >= 1;

-- aplicação de mais de um filtro
select * from pedidos where ID_Loja = 2 and ID_Produto = 4;

-- filtrando todos os produtos que possuem uma margem de preço superior a 1500 reais
select * from produtos where Preco_Unit - Custo_Unit >= 1500;

-- mostrando todos os produtos da marca dell

select * from produtos where Marca_Produto = "DELL";

-- mostre apenas os pedidos feitos no dia 3/1/19

select * from pedidos where Data_Venda = '2019-01-03';

-- mostre apenas os produtos ou da dell ou da sansung

select * from produtos where Marca_Produto = 'DELL' or Marca_Produto = 'SAMSUNG';

-- contagem de dados de uma coluna

select count(Telefone) from clientes;

-- contagem do conjunto de dados de todas as colunas

select count(*) from clientes;

-- contagem distinta
-- aqui, é possível ver que existem quatro valores possíveis de escolaridade
select Escolaridade from clientes;
-- ao usar o count distinct, você pode visualizar isso mais claramente
select count(distinct Escolaridade) from clientes;

-- soma

select sum(Receita_Venda) from pedidos;

-- média

select avg(Renda_Anual) from clientes;

-- mínimo

select min(Renda_Anual) from clientes;

-- máximo

select max(Renda_Anual) from clientes;