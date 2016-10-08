# Instruções

## Instalar o PostgreSQL no Cloud9

```shell
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

echo "UPDATE pg_database SET datistemplate=FALSE WHERE datname='template1';" > utf8.sql;
echo "DROP DATABASE template1;" >> utf8.sql;
echo "CREATE DATABASE template1 WITH owner=postgres template=template0 encoding='UTF8';" >> utf8.sql;
echo "UPDATE pg_database SET datistemplate=TRUE WHERE datname='template1';" >> utf8.sql

psql -U postgres -h localhost -a -f utf8.sql;
```

## Copiar a aplicação para o seu ambiente

```shell
git clone https://github.com/estagioemprogramacao/md5_generator.git
```

## Preparar a aplicação

```shell
cd md5_generator
bundle install  # instala gems
rake db:create  # cria banco de dados
rake db:migrate # cria estrutura (tabelas, índices) do banco de dados
```

## Executar a aplicação

```shell
rails s
```

Acessar pelo endereço do seu ambiente, por exemplo:

[http://localhost:3000/](http://localhost:3000/)
