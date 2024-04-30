# Relatório de Aula Prática

Disciplina: Programação em Banco de Dados
Data: 29/04/2024

## Introdução
O objetivo desta atividade prática foi criar um banco de dados para uma loja fictícia, implementar tabelas com relacionamentos definidos por um diagrama entidade-relacionamento (DER), inserir dados nas tabelas e criar uma visão (VIEW) para consultar informações específicas.

O banco de dados foi desenvolvido usando MySQL Workbench e o Visual Studio Code. A partir do DER fornecido, criei um banco de dados chamado "Loja", contendo tabelas relacionadas a clientes, municípios, estados e contas a receber.

## Métodos
A prática foi dividida em três etapas principais:

### Criação da Estrutura do Banco de Dados
  
Utilizando comandos DDL (Data Definition Language), criei as tabelas necessárias para o banco de dados.

As tabelas foram:

- Estado: Inclui ID, nome e UF do estado.
- Município: Inclui ID, nome do município, código IBGE e um relacionamento com a tabela Estado.
- Cliente: Contém informações sobre os clientes, como CPF, nome, celular, endereço, e um relacionamento com a tabela Município.
- ContaReceber: Registra as contas a receber, incluindo ID, datas de vencimento, valor, e um campo "Situação" do tipo ENUM para indicar o estado da conta (1 = Conta registrada, 2 = Conta cancelada, 3 = Conta paga).



### Inserção de Dados
  
Para inserir dados no banco de dados, utilizei comandos DML (Data Manipulation Language). Criei um script chamado "inserir.sql" para popular todas as tabelas criadas. Cada tabela recebeu pelo menos três registros. Exemplos de dados inseridos:

- Estado: Bahia, Minas Gerais, São Paulo.
- Município: Salvador, Muriaé, São Paulo.
- Cliente: Figuras históricas, CPF, endereço, etc.
- ContaReceber: Relacionamentos com Cliente, valor, datas etc.
  
### Consulta de Dados
Com comandos DQL (Data Query Language), criei uma visão para consultar todas as contas a receber que ainda não foram pagas (Situação = 1). 

A visão inclui informações como:
- ID da conta a receber.
- Nome e CPF do cliente associado à conta.
- Data de vencimento.
- Valor da conta.

### Resultados
Com as etapas realizadas, temos os seguintes resultados:

- Estrutura do banco de dados criada com sucesso, respeitando o DER proposto.
- Inserção de dados realizada em todas as tabelas, com pelo menos três registros por tabela.
- Criação de uma visão que permite consultar todas as contas que ainda não foram pagas.

### Conclusão

A atividade prática proporcionou uma experiência valiosa na criação de bancos de dados e operação com SQL. Desde a definição da estrutura até a inserção e consulta de dados, conseguimos cumprir todas as etapas propostas. A visão criada oferece uma maneira fácil de visualizar contas que ainda estão pendentes, uma funcionalidade essencial em um sistema de gestão de uma loja.
