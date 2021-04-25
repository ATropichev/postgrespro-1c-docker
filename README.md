# postgrespro-1c-docker
[Postgres Pro с поддержкой 1С](https://postgrespro.ru/products/1c) в контейнере [Docker](https://www.docker.com/)

Собрано для тестирования. 

***Для использования в production-среде требуется серьёзная доработка.***

В качестве образца взяты файлы отсюда:

https://github.com/docker-library/postgres/tree/master/13

https://github.com/alexanderfefelov/docker-postgrespro-1c

Для запуска можно использовать docker-compose:
Пример `docker-compose.yml`
```
version: '3.1'

services:

  postgres:
    build:
      context: https://github.com/ATropichev/postgrespro-1c-docker.git
    image: atropichev/postgrespro-1c-docker:13
    container_name: postgres
    hostname: postgres
    environment:
      POSTGRES_PASSWORD: SuperSecretPassword

  adminer:
    image: adminer
    container_name: adminer
    hostname: adminer
    depends_on:
      - postgres
```
Дополнительная информация по теме:

[Установка сервера 1с 8.3.16.1063 + postgres pro 12 на linux debian 9.5](http://linux-bash.ru/menusistem/120-1cpostgresprodebian.html)
