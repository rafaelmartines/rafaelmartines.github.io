---
title: Meia Retrospectiva
date: 2025-09-21 19:20:00 -03:00
tags: [retrospectiva, wsl, podman]
categories: [Blogging, Retrospectiva]
description: Uma pequena revisão dos ultimo acontecimento durante o tempo que não atualizei o blog
---
Faz bastante tempo desde a última atualização deste site — e muita coisa aconteceu nesse intervalo. Algumas boas, como o amadurecimento dos projetos que acompanho no trabalho, além de um novo projeto que tem sido especialmente divertido de participar (embora essa afirmação tenha validade de cerca de 12 minutos). Outras nem tanto, como a suspensão do trabalho remoto. E, mais recentemente, um upgrade na máquina que utilizo na empresa.

**“Mas por que isso seria ruim?”**

Bom, [em um post anterior ensinei como instalar o WSL na máquina](/posts/instalando-o-wsl-no-trabalho/) para poder usar o Docker. O problema é que o Docker Desktop — excelente ferramenta que se integra ao WSL — é gratuito apenas para uso pessoal. No ambiente corporativo, exige uma licença proporcional ao número de usuários. Com isso, a área de segurança da informação passou a restringir os direitos de instalação para todos, inclusive para o time de TI. Agora, qualquer instalação precisa passar por um processo de aprovação, incluindo justificativa, verificação de homologação pela empresa, e autorização do gerente responsável.

As aplicações que gerencio funcionam muito melhor em contêineres, especialmente por facilitar o processo de deploy e garantir que ele ocorra sem a necessidade de reuniões com a equipe de middleware para entender por que algo não funcionou.

Desde o último post, experimentei o [Bazzite ](https://bazzite.gg/)— uma distribuição Linux que transforma sua máquina em algo semelhante a um Steam Deck, mas sem estar limitado ao hardware da Valve. Trata-se de uma distribuição imutável, o que dificulta a instalação de qualquer software que não esteja disponível na loja oficial de aplicativos, que no caso do Bazzite é o Flatpak. Seguindo tutoriais na internet, descobri que é possível utilizar o Podman nessa distribuição. Diferente do Docker, o Podman é gratuito tanto para uso pessoal quanto corporativo.

No próximo post — e prometo a mim mesmo que ele sairá ainda esta semana — vou mostrar como substituir o Docker pelo Podman de forma simples, especialmente porque o Podman é compatível com a sintaxe do Docker.

A única parte realmente chata é que você precisará convencer a área de segurança a habilitar o WSL na sua máquina, já que isso exige privilégios de administrador. Mas, uma vez feito isso, você estará livre para trabalhar com mais autonomia.
