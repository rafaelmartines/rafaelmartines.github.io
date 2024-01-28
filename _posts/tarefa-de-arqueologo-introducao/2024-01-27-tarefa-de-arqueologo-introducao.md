---
title: Tarefa de arqueólogo - Introdução 👴
date: 2024-01-27 13:20:00 -03:00
last_modified_at: 2024-01-28 08:00:00 -03:00
tags: [coldfusion, windows, blogging]
categories: [Blogging, Coldfusion]
description: Um pouco antes de escrever esse artigo, me deparei com um sistema legado construido em Coldfusion 11...
---
Um pouco antes de escrever esse artigo, me deparei com um sistema legado construído em Coldfusion 11, isso mesmo, a última versão do Coldfusion antes da Adobe mudar para o esquema anual, que no caso, a próxima versão viria a ser o Adobe Coldfusion 2016 e para modificar, atualizar e colocar em “produção”, o processo é feito da maneira mais arcaica que vocês podem imaginar.

Então pensei, é possível tratar desse “vovô” numa estrutura mais moderna e confortável? Pra isso queria tentar reproduzir primeiro como foi feito pra entender o processo e então tentar colocar numa estrutura moderna e de fácil manutenção.

Este artigo será dividido em várias partes, para tentar entender como que faz para funcionar uma aplicação Coldfusion 11 com servidor Windows e com base nisso o objetivo final vai ser criar um contêiner que reproduza o servidor para assim poder fazer a manutenção do sistema sem precisar fazer do jeito que nossos ancestrais faziam para dar suporte pra aplicação.

A primeira parte da missão que foi a mais complexa: Onde vou achar o instalador do Coldfusion 11 sem ter que mandar e-mail pra Adobe solicitando um instalador? sério gente eu entendo que é interessante estimular os usuários a usarem as versões mais recentes dos seus softwares, mas a vida real infelizmente é bem diferente, foi ai que eu achei um link com instalação do Coldfusion 11 para Windows, Linux, MacOS 10 "Cheetah" e Oracle Solaris, pretendo depois subir esses arquivos na minha conta do MEGA ou até mesmo no meu próprio Google Drive, por questão de backup, mas enfim...

Mas devemos sempre desconfiar, certo? Então por segurança vamos mexer nisso em ambiente controlado seguindo os passos a seguir:

1. Instalar o Oracle VM Virtualbox;

2. Baixar uma ISO do Windows Server 2012 R2 (que era o Windows Server lançado na época);

3. Instalar o Windows Server com a instalação assistida desmarcada;

4. Configurar a rede do Oracle Virtualbox em modo Bridge (Dispositivos > Rede > Configurações de Rede...) para que o PC hospedeiro tenha acesso o Windows Server;

5. Instalar o Microsoft Edge (essa parte é opcional, mas ninguém merece o Internet Explorer 11);

6. Baixar e começar a instalação do Coldfusion 11 marcando a opção Developer Edition;

<figure>
    <img src="/web/tarefa-de-arqueologo-introducao/windows-server-coldfusion-11.png" alt="Instalação do Coldfusion 11">
    <figcaption>Instalação do Coldfusion 11</figcaption>
</figure>

Durante a instalação o Coldfusion vai pedir aquele pacote de redistribuição .Net da Microsoft, caso você não tenha instalado a instalação vai abortar pra instalar pra você o pacote de Microsoft e dai só recomeçar a instalação do Coldfusion.

Como todo bom instalador de Windows, Next... Next... e onde pedir senha, eu coloquei admin, porém num determinado momento o Coldfusion vai chegar nessa tela.

<figure>
    <img src="/web/tarefa-de-arqueologo-introducao/windows-server-coldfusion-11-4.png" alt="Solicitando configuração do Webserver">
    <figcaption>Solicitando configuração do Webserver</figcaption>
</figure>

Aparentemente pra questão de desenvolvimento, você pode marcar a opção "Built-in web server que é um Apache Tomcat, porém se estamos pensando em uma estrutura em docker, o correto é configurar integração com Webserver, por padrão o Coldfusion da suporte para IIS e Apache, configuraremos isso no próximo artigo.
