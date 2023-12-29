---
title: Instalando WSL em ambiente corporativo 🐧
date: 2023-12-29 11:47:00 -03:00
modified: 2023-12-29 11:47:00 -03:00
tags: [wsl, linux, windows]
description: A Microsoft Store é bloqueada onde você trabalha? Eis o que fazer
---

# Introdução

Este ano de 2023 foi um virada de chave na minha carreira como desenvolvedor de software, de desenvolvedor PHP e para Coldfusion, fiquei bem animado em trabalhar com uma nova linguagem de programação de forma profissional depois de tanto tempo com o elefantinho 🐘 sendo meu ganha pão.

O Coldfusion é uma linguagem de programação que [foi criada em 1995 pelo J. J. Alliere, ficou sob o guarda-chuva da Macromedia e hoje está sob os cuidados da Adobe](https://www.adobe.com/products/coldfusion-family.html "Adobe Coldfusion") e apesar dos anos de existência, ela não ficou pra trás e sim vem se mantendo com novidades, em parte graças a comunidade que até mesmo criou um [servidor alternativo gratuito](https://www.lucee.org/ "Lucee") para não precisar depender de pagar as licença da Adobe.

E qual a primeira coisa que todo mundo pensa quando lembra de trabalhar com produtos da Adobe? Mac OS, correto? Mas a menos que você trabalhe com os produtos de diagramação, video ou fotos da Adobe, a empresa não vai ter fornecer um Mac, então sobrou o Windows, até ai ok, porém com tantas tecnologias hoje como Docker, programar local no Windows é meio vintage, eis que sim o Adobe Coldfusion funciona em Linux porque ele é um "Apache Tomcat" disfarçado, ou seja Java e conforme você vai estudando a linguagem você percebe que ele tem grande integração com Java, principalmente para criar objetos. Mas porque escrevi tudo isso? bom quem já desenvolveu em NodeJS ou até mesmo confeccionou páginas com React sabe que essas linguagem tem ferramentas que compilam o código e geram arquivos que são interpretados pelo motor de renderização e o Coldfusion possui isso, principalmente quando começamos a lidar com componentes singleton e essas ferramentas funcionam muito bem em ambiente Linux e normalmente quando você não tem poder de barganha pra usar Linux, sobra trabalhar com Windows e... WSL 🐧. O WSL normalmente é instalado via Microsoft Store, mas em ambiente corporativo a loja da Microsoft é bloqueada e agora? Sim tem alternativa.

# Instalando WSL em ambiente corporativo
## Requerimentos

* Windows 10 ou Windows 11 
* 16GB de memória no mínimo, já que você vai executar praticamente outro sistema operacional na sua máquina. 
* Muito importante, permissões para instalar e Remover Recursos do Windows
* Virtualização ativada no sistema bios do computador.

## Ativando os recursos

Normalmente para instalar o WSL e o Ubuntu em computadores com Windows 10 ou Windows 11, basta ir em “Ativar ou desativar os recursos do Windows”, habilitar o “Hyper-V”, “Subsistema de Linux para Windows” e instalar o Ubuntu seguindo as instruções abaixo:

<figure>
    <img src="/web/instalando-o-wsl-no-trabalho/1.png" alt="Ativando o WSL">
    <figcaption>Ativando o WSL</figcaption>
</figure>

<figure>
    <img src="/web/instalando-o-wsl-no-trabalho/2.png" alt="Ativando o WSL">
    <figcaption>Ativando o WSL</figcaption>
</figure>

Depois basta [acessar essa URL](https://raw.githubusercontent.com/microsoft/WSL/master/distributions/DistributionInfo.json "Microsoft WSL") e baixar o pacote de instalação de acordo com a figura abaixo:

<figure>
    <img src="/web/instalando-o-wsl-no-trabalho/3.png" alt="Lista de pacotes">
    <figcaption>Lista de pacotes</figcaption>
</figure>

E pronto, WSL instalado na máquina corporativa, agora basta usar Docker Desktop com WSL ativado e usufruir dos recursos do sistemas de arquivo do Linux.

Feliz 2024 🍾
