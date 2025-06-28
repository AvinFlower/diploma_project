.PHONY: lint test run build clean # Указывает, что это не имена файлов, а команды

# flake8 src/                       	Проверка кода на ошибки и стиль
# pytest src/tests/                		Запуск всех тестов
# python src/main.py               		Запуск основного скрипта
# docker build -t drone-router .   		Собираем Docker-образ
# find . -type f -name "*.pyc" -delete  Удаление временных .pyc-файлов

lint:
	flake8 src/

test:
	pytest src/tests/

run:
	python src/main.py

build:
	docker build -t drone-router .

clean:
	find . -type f -name "*.pyc" -delete
