# Chat com action cable!

## Stack

* Ruby 2.6.3
* Rails 6.0.2
* PostgreSql

## Como preparar o ambiente?

---
Instalar rvm
---
[https://rvm.io/rvm/install](Link URL)

---
Instalar Ruby
---
```
rvm install 2.6.3
```
---
Instalar o Bundler
```
gem install bundler
```

---
Instalar as gems
---
```
bundle install
```

---
Instalar o PostgreSql
---
### Ubuntu
```
sudo apt-get install postgresql postgresql-contrib libpq-dev
```


### macOS
```
brew install postgresql
```

Para que seja mais simples gerenciar os bancos de dados de desenvolvimento, crie um usuário no PostgreSQL com o mesmo nome do seu usuário Ubuntu.

```
sudo -u postgres createuser -rds $USER
```

Depois, crie um banco de dados com o mesmo nome de seu usuário.
```
$ createdb $USER
```

Finalmente, você pode acessar o console do PostgreSQL com o comando psql.
```
$ psql
psql (9.4.2)
Type "help" for help.

user=#
```

---
Executando as migrations
---
```
rails db:create db:migrate db:seed
```
---
Instalando as dependências do node_modules
---
```
yarn install
```
## Executar em modo de desenvolvimento
```
rails s
```

## Code Maintenance
- João Evangelista Santiago Neto