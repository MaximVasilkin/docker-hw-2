## Чтобы воспользоваться API, проделайте следующие шаги: ##

1. Загрузите, установите и запустите [Docker Desktop](https://www.docker.com/products/docker-desktop/)

2. Скопируйте репозиторий: 
    ```
    git clone https://github.com/MaximVasilkin/docker-hw-2
    ```
3. Перейдите в директорию с файлом ***Dockerfile***, затем выполните сборку:
    ```
    docker build --tag stocks_products .
    ```
4. Запустите контейнер:
    ```
    docker run -d -p 8000:8000 --name stocks_products stocks_products
    ```
Чтобы остановить контейнер, выполните:
    ```
    docker container stop stocks_products
    ```
