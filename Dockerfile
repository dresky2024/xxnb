# Шаг 1: Берем за основу чистый и легкий Linux Ubuntu
FROM ubuntu:latest

# Шаг 2: Устанавливаем внутрь нашего контейнера утилиту curl
RUN apt-get update && apt-get install -y curl

# Шаг 3: Создаем внутри контейнера рабочую папку
WORKDIR /app

# Шаг 4: Копируем наш готовый скрипт с вашего компьютера внутрь контейнера
COPY check_site.sh /app/check_site.sh

# Шаг 5: Говорим контейнеру автоматически запускать этот скрипт при старте
CMD ["bash", "/app/check_site.sh"]

