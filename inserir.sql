insert into Estado(nome, UF)
values
    ('Bahia', 'BA');

insert into Municipio(Estado_ID, cidade, Code_IBGE)
values
    ((select ID from Estado where UF = 'BA'), 'Salvador', 2927408);

insert into Cliente (nome_cliente, CPF, celular, End_moradia, End_numero, Municipio_ID, CEP)
values
    (
        'Pedro de Alcântara Francisco António João Carlos Xavier de Paula Miguel Rafael Joaquim José Gonzaga Pascoal Cipriano Serafim de Bragança e Bourbon',
        '01234567890', '71993379312', 'Tv. Pedra da Sereia', '5', (select ID from Municipio where cidade = 'Salvador'), '41950810'
    );

insert into ContaReceber (Cliente_ID, fatura_venda_ID, data_conta, data_vencimento, valor, situacao)
values
    ((select ID from Cliente where CPF = '01234567890'), 12345678900, '2024-04-29', '2024-05-29', 3141.13, '3');

insert into Estado(nome,UF)
values
    ('Minas Gerais', 'MG');

insert into Municipio(Estado_ID, cidade, Code_IBGE)
values
    ((select ID from Estado where UF = 'MG'), 'Muriaé', 3143906);

insert into Cliente (nome_cliente, CPF, celular, End_moradia, End_numero, Municipio_ID, CEP)
values
    (
        'Carolina Josefa Leopoldina Francisca Fernanda de Habsburgo-Lorena', '98765432100', '3237225000', 'Av. Constantino Pinto', '286',
        (select ID from Municipio where cidade = 'Muriaé'), '36880000'
    );

insert into ContaReceber (Cliente_ID, fatura_venda_ID, data_conta, data_vencimento, valor, situacao)
values
    ((select ID from Cliente where CPF = '98765432100'), 98765432100, '2024-04-28', '2024-05-28', 751.14, '1');

insert into Estado(nome, UF)
values
    ('São Paulo', 'SP');

insert into Municipio(Estado_ID, cidade, Code_IBGE)
values
    ((select ID from Estado where UF = 'SP'), 'São Paulo', 3550308);

insert into Cliente (nome_cliente, CPF, celular, End_moradia, End_numero, Municipio_ID, CEP)
values
    (
        'Pedro de Alcântara João Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocádio Miguel Gabriel Rafael Gonzaga de Bragança e Bourbon',
        '36985214753', '1137970500', 'R. Itapeva', '435',(select ID from Municipio where cidade = 'São Paulo'), '01332000'
    );

insert into ContaReceber (Cliente_ID, fatura_venda_ID, data_conta, data_vencimento, valor, situacao)
values
    ((select ID from Cliente where CPF = '36985214753'), 36985214753, '2024-04-27', '2024-05-27', 3702.15, '2');