---
title: Instalando Robot 3T no Linux
date: 2021-08-26 18:20:00 -03:00
modified: 2021-08-26 18:20:00 -03:00
tags: [robo 3t, instalando, linux]
description: Como o Robo 3T ainda não é distribuído via flatpack que é a loja oficial de aplicativos do elementaryOS e que eu tenho curtindo bastante.
---
Como o Robo 3T [ainda não é distribuído via flatpack](https://github.com/Studio3T/robomongo/issues/1531) que é a loja oficial de aplicativos do elementaryOS, e que eu tenho curtindo bastante, resolvi fazer esse tutorial, sei que tem um monte desse tutorial por ai pesquisando no Google, mas é porque quero ter esses passos comigos pra consulta pessoal também, sem ter que ficar procurando ou favoritando.

> Pessoalmente, acho o Robo 3T mais prático de mexer do que o Compass, que é o aplicativo oficial.

Instalar o Robo 3T que é um client de MongoDB é bem chatinho no Linux. Aqui explico passo-a-passo a instação incluíndo o ícone.

1. Baixe o [pacote *.tar.gz no site oficial](https://robomongo.org/).
2. Descompacte e mova a pasta do Robo 3T conforme o comando abaixo:|
   ```sh
   sudo mv robo3t-1.4.4-linux-x86_64-e6ac9ec /opt/robo3t
   ```
3. Crie um link simbólico:
   ```sh
   sudo ln -s /opt/robo3t/bin/robo3t /usr/local/bin/robo3t
   ```
4. Agora vamos ao atalho com ícone no menu Aplicativos, crie uma pasta icon dentro da `/opt/robo3t` com o comando abaixo:
   ```sh
   sudo mkdir /opt/robo3t/icon
   ```
5. Baixe uma imagem PNG de sua preferência e salve na pasta criada no passo quatro, com o comando abaixo:
   ```sh
   sudo wget -O /opt/robo3t/icon/icon.png https://dashboard.snapcraft.io/site_media/appmedia/2018/09/logo-256x256.png
   ```
6. Agora, vamos criar o arquivo que vai mostrar o Robo 3T no menu Aplicações do elementaryOS.
   ```sh
   sudo touch /usr/share/applications/robo3t.desktop
   ```
7. Abra o arquivo e cole o texto abaixo:
   ```
   [Desktop Entry]
   Encoding=UTF-8
   Name=Robo 3T
   Comment=Robo 3T
   Exec=robo3t
   Icon=/opt/robo3t/icon/icon.png
   Terminal=false
   Type=Application
   Categories=GNOME;Application;Development;
   StartupNotify=true
   ```
