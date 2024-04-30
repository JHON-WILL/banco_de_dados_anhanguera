use Loja;

drop view if exists ContasNaoPagas;

create view ContasNaoPagas as

select
    cr.ID as ID_ContaReceber,
    c.nome as Nome_Cliente,
    c.CPF as CPF_Cliente,
    cr.data_vencimento as Data_Vencimento,
    cr.valor as Valor_Conta

from
    ContaReceber cr

inner join
    Cliente c

on 
    cr.Cliente_ID = c.ID

where
    cr.situacao = '1';