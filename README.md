# O que é necessário para instalar?

* Instalar o docker e o docker-compose:
    ## Ubuntu
    ```sh
    sudo apt install docker.io docker-compose
    ```

* Subir o container:
    ```sh
    docker-compose up -d
    ```
* Entrar no container:
    ```sh
    docker exec -it jekyll /bin/sh
    ```
* Subir o jekyll com o comando:
    ```sh
    bundle exec jekyll serve --host=0.0.0.0
    ```
