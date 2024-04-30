use loja;

DROP TABLE IF EXISTS ContaReceber;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Municipio;
DROP TABLE IF EXISTS Estado;

create table Estado (
	ID int auto_increment,
    nome varchar(50) not null,
    UF char(2) not null,
    
    primary key(ID)
);

create table Municipio (
	ID int auto_increment,
    Estado_ID int,
    nome varchar(80) not null,
    Cod_IBGE int,
    
    primary key(ID),
    foreign key(Estado_ID) references Estado(ID),
    index fk_Municipio_Estado_idx (Estado_ID)
);

create table Cliente (
	ID int auto_increment,
    nome varchar(80) not null,
    CPF char(11) not null,
    celular char(11),
    End_moradia varchar(200) not null,
    End_numero varchar(10) not null,
    End_municipio int,
    CEP char(8),
    Municipio_ID int,
    
    primary key(ID),
    foreign key(Municipio_ID) references Municipio(ID),
    index fk_Cliente_Municipio1_idx(Municipio_ID)
);

create table ContaReceber (
	ID int auto_increment,
    Cliente_ID int,
    fatura_venda_ID int,
    data_conta date not null,
    data_vencimento date not null,
    valor decimal(18,2) not null,
    situacao enum('1', '2', '3') not null,
    
    primary key (ID),
    foreign key(Cliente_ID) references Cliente(ID),
    index fk_ContaReceber_Cliente_idx(Cliente_ID	)
);