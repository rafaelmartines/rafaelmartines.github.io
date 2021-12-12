---
title: Colocando esse sítio num container 🐳
date: 2021-12-11 21:50:00 -03:00
modified: 2021-12-12 08:35:00 -03:00
tags: [docker, site, alpine, compose]
description: Não mexo nesse sítio desde quando eu migrei para Windows 10 e agora no Windows 11.
---
# Colocando esse sítio num container 🐳

Não mexo nesse sítio desde quando eu migrei para Windows 10 e agora no Windows 11. Então a primeira coisa que fiz, foi procurar uma imagem correta, pensei, "bom, o Jekyll é feito com Ruby" então, fui lá e tentei subir um container, aconteceu o problema do container ficar reiniciando. Segunda tentativa, descobri que tem um docker do Jekyll, então tentei subir o container novamente, mesmo erro de reinicialização. Então decidi montar do zero, peguei uma imagem do alpine que é super leve e montei o Dockerfile assim:

```dockerfile
FROM alpine:3.15.0

RUN apk update \
    && apk add gcc g++ make ruby-full ruby-dev \
    && gem install jekyll bundler \
    && mkdir app

WORKDIR /app

COPY . .

RUN BUNDLE_GEMFILE=/app/Gemfile bundle install

EXPOSE 4000
```

Em seguida deixei o docker-compose.yaml assim:

```yaml
version: "3"

services:
  jekyll:
    container_name: jekyll
    tty: true
    volumes:
      - ./:/app
    build: .
    restart: unless-stopped
    ports:
      - "4000:4000"
```

Seguindo o tutorial do próprio site do Jekyll, pra iniciar o servidor você precisa digitar o seguinte comando no shell:

```shell
bundle exec jekyll serve
```

Iniciou tudo normalmente, teoricamente bastava eu acessar localmente digitando o endereço localhost:4000 no navegador, deu conexão recusada, testei via curl tanto dentro do WSL quanto no Windows, nada, só funcionava quando eu entrava dentro do container, dai sim eu recebia o HTML da página principal via curl.

Desde quinta dia 09 de Dezembro de 2021 até o momento deste post, procurei a solução, seja no Stack Overflow, Reddit, etc, Então me deparei com um comentário na sessão de issues do Github do Docker e uma pessoa abençoada comentou que o servidor dentro do Docker precisa ser iniciado no endereço 0.0.0.0 para que o host consiga acessar via localhost, então iniciar o serviço com o comando abaixo:

```shell
bundle exec jekyll serve --host=0.0.0.0
```

Funcionou...

Como diria um ex-gestor:

> Aprendizado pela dor, é para sempre.

Agora que descobri isso, posso voltar a postar coisas aqui.