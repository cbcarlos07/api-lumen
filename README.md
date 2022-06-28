

# Aplicação pronta em Laravel

## Se tiver usando o windows precisa instalar o make

Segue link de sugestão da instalação do Make

https://coffops.com/usando-comando-make-projetos-windows/

Ou

https://stackoverflow.com/a/32127632

## Passos para executar

Caso seja necessário criar a rede, rode o comando abaixo

   docker network create -d bridge mysql-network

1. Dentro da raiz do projeto execute o comando?

    make up

Pode ser, que no final do comando dê um problema, mas pode seguir normalmente

    Error response from daemon: Error processing tar file(exit status 1): unlinkat /etc/apache2/sites-available/000-default.conf: device or resource busy

2. Executar o comando para criar o banco de dados e tabelas

    make database

3. Executar o comando para criar dados 

    make seed

## Rotas dos produtos

Todos os produtos [GET]
    
    http://localhost:8002/product

Por Id [GET]
    
    http://localhost:8002/product/1

Criar [POST]
    
    http://localhost:8002/product

    {
        "title": "Produto API",
        "type": "LIMPEZA",
        "description": "DEScricao do produto",
        "price": 2.50,
        "rating": 5
    }

Atualização [PUT]

    http://localhost:8002/product/1

    {
        "title": "Produto API",
        "type": "LIMPEZA",
        "description": "DEScricao do produto",
        "price": 2.50,
        "rating": 5
    }

Remoção [DELETE]

    http://localhost:8002/product/1

Arquivo [JSON](https://github.com/cbcarlos07/api-laravel/blob/main/img/Insomnia_2022-06-27.json)