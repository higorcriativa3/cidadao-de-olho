# API Cidadão de Olho
A API Cidadão de Olho consome os dados da [ALMG - Assembleia Legislativa de Minas Gerais](http://dadosabertos.almg.gov.br/ws/ajuda/sobre)
e entrega o top 5 deputados que mais solicitaram verbas indenizatórias por mês, no ano de 2019, e as redes sociais mais usadas pelos deputados.

## Tecnologias usadas
Foi utilizado o ```PHP 5.2.0``` vanilla (sem frameworks), biblioteca ```PDO``` e banco de dados ```MariaDB``` .

## Para rodar a aplicação
Crie um banco de dados chamado ```cidadao_de_olho``` e importe o arquivo SQL localizado na pasta ```model``` .

Caso precise mudar as configurações do banco, basta alterar no arquivo ```model/dbconfig.php``` .

## Como usar a API

### Web Service Top 5
```localhost```
Basta acessar ```localhost:8080/[diretorio]/api/deputados/top5``` , onde ```diretorio``` é a pasta raíz do projeto.

```dominio proprio```
Basta acessar ```[dominio]/[diretorio]/api/deputados/top5``` , onde ```dominio``` é o domínio da hospedagem e ```diretorio``` é a pasta raíz do projeto.

### Web Service Redes Sociais
```localhost```
Basta acessar ```localhost:8080/[diretorio]/api/deputados/redes``` , onde ```diretorio``` é a pasta raíz do projeto.

```dominio proprio```
Basta acessar ```[dominio]/[diretorio]/api/deputados/redes``` , onde ```dominio``` é o domínio da hospedagem e ```diretorio``` é a pasta raíz do projeto.

### Recomendações
O processo de "popularizar" o banco é demorado, principalmente no recurso de contar os pedidos de verba por deputado ```model/createRefunds.php``` ,
usar o arquivo SQL em ```model/cidadao_de_olho.sql``` é a opção mais rápida.

## Telas
