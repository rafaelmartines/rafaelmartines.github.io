# O que é necessário para instalar?

* Instalar o podman e o podman-compose:

## Ubuntu

```sh
sudo apt install podman podman-compose
```

* Subir o container:

```sh
podman-compose --podman-build-args='--format docker' up
```

* Entrar no container:

```sh
podman exec -it jekyll sh
```

* Subir o jekyll com o comando:

```sh
bundle exec jekyll serve --host=0.0.0.0
```
