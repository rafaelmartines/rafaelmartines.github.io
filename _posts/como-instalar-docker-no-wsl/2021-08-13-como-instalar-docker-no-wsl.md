---
title: Como instalar docker no WSL
date: 2021-08-13 13:41:00 -03:00
modified: 2021-08-13 13:41:00 -03:00
tags: [windows, docker, wsl]
description: Durante as minhas férias, decidi parar de usar meu desktop pessoal para fazer coisas relacionadas ao meu trabalho
---

Durante as minhas férias, decidi parar de usar meu desktop pessoal para fazer coisas relacionadas ao meu trabalho, porque eu achava mais prático e obviamente meu PC pessoal, como da maioria dos desenvolvedores, é muito melhor que os laptops ou notebooks forcenidos por nossos empregadores, outro motivo também é por causa da [LGPD](http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/Lei/L13709.htm) que está começando a ser um assunto forte onde trabalho, ter dados sensíveis dos clientes no meu desktop pessoal não seria legal, então a decisão foi também tomada para evitar dores de cabeças futuras.

A partir dai, decidi voltar a usar o Windows, porém, também tenho alguns projetos de estudo, além também este blog para ir atualizando e não estava afim de fazer um dual boot com Linux. Qual seria a solução? Usar [WSL, também conhecido como Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/).

Depois de escolher a distribuição, entrei no terminal do Linux, e fiz a instalação do docker como de praxe.

```shell
sudo apt update
```

O comando acima pode ser necessário porque o Linux é instalado sem cache dos repositórios.

```shell
sudo apt install docker.io docker-compose
```

O docker tem um problema que por padrão tudo o que você precisa fazer em relação aos comandos dele, você precisa fazer com sudo, mas tem um "macete" para você não precisar fazer isso, basta adicionar seu usuário na lista de usuários com acesso ao docker. Basta digitar esse comando no terminal:

```shell
sudo gpasswd -a $(whoami) docker
```

O `$(whoami)` vai trazer o usuário conectado na sessão e adicionar ele no grupo do docker, mas, ainda sim ao executar algum comando do docker, como o `docker ps` o sistema ainda retorna erro dizendo algo como: "can't connect to Docker daemon", então o segredo é [instalar o Docker Destkop](https://www.docker.com/products/docker-desktop) seguir as instruções do instalador, principalmente na parte em que pergunta se deseja instalar os componentes do WSL, reiniciar o PC e pronto, você já pode executar os comandos do docker normalmente agora.