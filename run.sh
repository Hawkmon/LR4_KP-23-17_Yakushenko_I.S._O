#!/bin/bash

echo "=== Проверка окружения ==="

python3 --version || { echo "Python3 не установлен"; exit 1; }

python3 -c "import django" 2>/dev/null && echo "Django установлен" || { echo "Django не установлен. Установите: pip install django"; exit 1; }

echo ""
echo "Запуск Django-сервера"
python3 manage.py runserver 0.0.0.0:8000 &

echo "Сервер запущен"