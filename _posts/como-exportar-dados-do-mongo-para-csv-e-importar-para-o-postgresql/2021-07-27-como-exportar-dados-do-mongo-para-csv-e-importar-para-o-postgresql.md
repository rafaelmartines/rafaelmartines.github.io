---
title: Como exportar dados do mongo para CSV e importar para o PostgreSQL
date: 2021-07-27 10:34:00 -03:00
modified: 2021-07-27 10:34:00 -03:00
tags: [mongodb, dados, csv, postgresql, pgsql]
description: Por causa de uma tarefa que surgiu na empresa, fui procurar formas prática de exportar os dados para CSV do MongoDB.
---

Por causa de uma tarefa que surgiu na empresa, fui procurar formas prática de exportar os dados para CSV do MongoDB que estão numa estrutura que se esperando de um banco não relacional, para então importar este mesmo CSV para PostgreSQL.

Primeiro passo é ter o MongoDB Database Tools instalado na máquina para usar o comando mongoexport, [basta ir no site](https://www.mongodb.com/try/download/database-tools), selecionar a plataforma, no meu caso Ubuntu 20.04 x86_63, baixar o arquivo *.deb e instalar com o comando:

```sh
sudo dpkg -i <nome-do-pacote>
```

E depois instalar o client do PostgreSQL com o comando:

```sh
sudo apt install postgresql-client
```

Para essa esse tarefa eu executei o seguinte comando no shell para exportar os dados para CSV:

```shell
mongoexport --host <host-do-banco-de-dados> --db <nome-do-banco-de-dados> --collection <nome-da-collection> --type=csv --query='<query-de-consulta>' --fields=<campos-a-serem-exportados-separados-por-virgula> -o <nome-do-arquivo>.csv
```

Com o client do PostgreSQL instalado, executei os seguinte comando para conectar com o banco de dados.

```shell
psql -d "host=<host-do-banco-de-dados-postgresql> port=5432 dbname=<nomd-do-banco-de-dados> user=<nome-do-usuario>"
```

Depois de digitar a senha de conexão no prompt de comando, você vai estar dentro do shell do PostgreSQL, dai basta executar a seguinte linha:

```sql
\copy <tabela-banco-dados>(campos-da-tabela-separado-por-virgula) from '<caminho-do-arquivo>.csv' DELIMITER ',' CSV HEADER;
```
