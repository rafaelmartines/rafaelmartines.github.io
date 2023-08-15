---
title: Comandos úteis - Parte 1
date: 2023-08-15 11:38 -03:00
modified: 2023-08-15 11:38 -03:00
tags: [windows, comandos, ]
description: Não mexo nesse sítio desde quando eu migrei para Windows 10 e agora no Windows 11.
---


Hoje, pelo menos no momento desse post eu resolvi dar uma organizada no meu Google Drive seguindo [ótimas dicas que peguei num vídeo do Jeff Su](https://www.youtube.com/watch?v=MM-MPS57qKA "ótimas dicas que peguei num vídeo do Jeff Su") e me deparei com um arquivo que nomei de comandos úteis com vários comandos que fui achando conforme ia navegando pela internet, então resolvi fazer um compilado deles aqui.

## Grep no Windows.

Embora o Windows tenha os comandos `Findstr` no prompt de comando e o `Select-String` no PowerShell, na época eu [instalei o GnuWin32 pra ter acesso aos comandos do Linux no Windows](https://gnuwin32.sourceforge.net/ "instalei o GnuWin32 pra ter acesso aos comandos do Linux no Windows"), depois de isntalado basta digitar o seguinte comando no prompt do Windows:

```shell
"x:\Program Files\GnuWin32\bin\grep.exe" --exclude-dir="pristine" -nr "texto a ser pesquisado" X:\diretorio\onde\vai\pesquisar\*.* > X:\diretorio\onde\quer\salvar\grep.txt
```

Onde o "X" representa a unidade de disco.

### Contar quantos ocorrências de um texto.

Para saber quantas vezes um texto aparece dentro de um diretório, o comando é:

```bash
grep "<Accounts>" custom/integration/xml/Admin/Accounts.xml | wc -l
```

### Para separar a linha em um arquivo

Se precisar separar em um arquivo uma linha inteira baseado em um parâmetro de pesquisa:

```bash
grep "Update" arquivo.bean.log > arquivo.update.log
```

### Remover pasta por linha de comando no Windows

Todo mundo sabe que excluir um pasta com um grande volume de arquivos no Windows, pode demorar muito, mesmo inclusive quando os arquivos estão em um SSD, para ficar mais rápido, é possível realizar essa tarefa com o seguinte comando:

```bash
rd /s/q pasta-a-ser-removida
```

### Exportar uma lista de diretórios em arquivo no Windows

Se você precisa por alguma razão, listar em arquivo todos os diretórios de uma determinada pasta, basta executar o seguinte comando:

```bash
dir /s /b>FileList.txt
```

### Exibindo as ultimas linhas de um arquivo no ShellExibindo as ultimas linhas de um arquivo no Shell

Muito util para validar logs que são preenchidos durante uma rotina, esse comando vai exibindo as ultimas linhas:

```bash
tail <nome-do-arquivo>.<extensão>
```
Abaixo o comando pra mostrar o número de ultimas linhas representado pelo valor atrelado ao parametro **-n**:

```bash
tail -n <número-das-últimas-linhas-que-você-quer-exibir> <nome-do-arquivo>.<extensão>
```

E por enquanto é isso, próximo post será alguns comandos no SQL Server.
