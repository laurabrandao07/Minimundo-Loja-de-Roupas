# Trabalho de Banco de Dados - Loja de Roupas Estilo Livre

**Nome:** Laura Brandão Costa
**Matrícula:** RGM: 46757724
**Disciplina:** Banco de Dados

---

## Sobre o Trabalho
Este projeto é um banco de dados relacional criado no MySQL Workbench para gerenciar as vendas de uma loja de roupas fictícia chamada "Estilo Livre".

O banco de dados se chama `sistema_vendas`.

## Estrutura
O sistema possui 6 tabelas principais conforme o diagrama desenhado:
1. **Cliente:** Cadastro dos clientes (com CPF e telefone).
2. **Vendedor:** Cadastro dos funcionários (com matrícula).
3. **Produto:** Estoque de roupas (com tamanho e preço).
4. **Categoria:** Tipos de roupa (Ex: Casual, Social).
5. **Venda:** Registro das vendas realizadas.
6. **Itens:** Detalhes dos produtos em cada venda.

## Arquivos do Projeto
O trabalho está dividido em 3 scripts SQL que devem ser executados na ordem abaixo:

* **01_criacao_estrutura.sql**: Contém os comandos para criar o banco de dados e as tabelas com as chaves primárias e estrangeiras. Também apaga as tabelas antigas se necessário.
* **02_insercao_dados.sql**: Insere os dados de teste nas tabelas (clientes, produtos, vendas, etc).
* **03_consultas_e_manipulacao.sql**: Contém as consultas (SELECT) e os comandos de alteração (UPDATE) e exclusão (DELETE) solicitados na atividade.

## Instruções de Execução
Para rodar o projeto no MySQL Workbench:

1. Abra o script **01_criacao_estrutura.sql** e execute para criar as tabelas.
2. Abra o script **02_insercao_dados.sql** e execute para preencher os dados.
3. Abra o script **03_consultas_e_manipulacao.sql** e execute para ver as consultas e testes de manipulação funcionando.
