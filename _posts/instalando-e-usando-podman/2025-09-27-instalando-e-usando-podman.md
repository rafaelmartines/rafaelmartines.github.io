---
title: Instalando e usando Podman 🦭📦
date: 2025-09-27 10:40:00 -03:00
tags: [wsl, linux, windows, podman]
categories: [Podman, WSL, Linux, Windows]
description: Utilizando o Podman
---

##  Introdução

[Como prometido na semana passada](/posts/meia-retrospectiva/), e também pra me ajudar a lembrar no futuro, aqui estão os comandos básicos pra subir uma imagem Docker usando Podman.

Antes de tudo, [certifique-se de que o WSL está ativado na máquina com a versão do Linux que você quer usar](/posts/instalando-o-wsl-no-trabalho/). No meu caso, tô rodando o Ubuntu 24.04 no momento deste post. Então bora instalar o Podman e o Podman Compose pra começar os trabalhos!

```shell
sudo apt update && sudo apt install -y podman podman-compose
```

para confirmar que está instalado digite:

```shell
podman ps -a
```

Simples assim.

##  Usando Podman Compose

Para compilar e subir sua imagem utilizando `docker-compose.yml` e `Dockerfile`, execute o seguinte comando no diretório do projeto:

```shell
podman-compose --podman-build-args='--format docker' up --build -d
```

O ponto crucial aqui é o argumento `--podman-build-args='--format docker'`, que instrui o Podman Compose a operar em modo de compatibilidade com o Docker. Sem essa flag, o Podman não consegue interpretar corretamente as variáveis de ambiente definidas no `docker-compose.yaml`, o que pode impedir a criação adequada dos containers.

##  Usando o Podman Build

Antes de realizar o deploy de uma aplicação, é recomendável simular o comportamento do ambiente de destino — como AWS, GCP, OpenShift, entre outros — em relação à sua imagem. Para isso, o ideal é compilar a imagem diretamente, sem utilizar o Compose. Isso permite validar o processo de build de forma mais próxima ao que será executado pelo orquestrador. Utilize o comando abaixo:

```shell
podman build --format docker -t nome_da_imagem:1.0.0 -f Dockerfile --build-arg PORT_FROM=<PORTA_INTERNA> --build-arg PORT_TO=<PORTA_EXTERNA> .
```

##   Comandos uteis

Listar todos os conteineres que foram criados, inclusive os que estão parados:

```shell
podman ps -a
```

Visualizar os logs do conteiner:

```shell
podman logs -f <nome_do_container>
```

Limpar cache de imagens criadas, muito util pra liberar espaço depois de tantos testes que provavelmente você irá fazer:

```shell
podman image prune -a
```

Entrar na imagem:

```shell
podman exec -it <nome_do_container> <terminal_do_linux_bash_ou_sh_por_exemplo>
```

##   Miscelânea

Agora dá pra compartilhar os posts no Bluesky também! Aproveitei que estava atualizando a [biblioteca do Font Awesome](https://fontawesome.com/) e já incluí essa opção. Afinal, o X anda cada vez mais insuportável — felizmente consegui me livrar dessa rede e não olho pra trás!
