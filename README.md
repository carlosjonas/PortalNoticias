# Portal de notícias
Sistema em laravel(12), aqui eu tenho 3 entidades, usuário, categoria e notícia. O sistema possuí autenticação com laravel breeze,também utilizo tinker e é dívidido em duas partes, uma parte com noticas e outra de gerenciamento das notícias, a configuração que eu está setada para o banco de dados é mysql, as configurações de instalação foram feitas pelo xampp
 ## Instalação:

Muitas duvidas podem ser tiradas na documentação do  [laravel](https://laravel.com/docs/12.x/).

- Na raiz do projeto execute os seguintes comandos a principio:

```bash
composer install
```

-Após isso você baixa o laravel breeze

```bash
composer require laravel/breeze --dev
```

- após isso confugure o arquivo ".env" com as configurações do banco de dados e então rode as migrates:

```bash
php artisan migrate
```

- o banco de dados está na pasta Banco de dados, após a inserção do banco faça a alimentação
