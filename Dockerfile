FROM python:3.12

# Установим Poetry
RUN pip install poetry

# Задаём рабочую директорию
WORKDIR /app

# Копируем только конфиги для ускорения кэша
COPY pyproject.toml poetry.lock ./

# Устанавливаем зависимости без виртуалки
RUN poetry config virtualenvs.create false \
 && poetry install --no-root

# Копируем всё остальное
COPY . .

# Точка входа
CMD ["python", "src/main.py"]
