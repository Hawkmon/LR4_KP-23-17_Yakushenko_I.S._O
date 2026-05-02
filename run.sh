#!/bin/bash

echo "=== Запуск Django-сервера ==="
python3 manage.py runserver 0.0.0.0:8000 &

echo "Сервер запущен"
echo "Откройте: https://$(hostname).repl.co"