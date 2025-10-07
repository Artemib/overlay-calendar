#!/bin/bash

# OverlayCalendar Component - GitHub Setup Script
# Скрипт для быстрой настройки GitHub репозитория

set -e

echo "🚀 Настройка GitHub репозитория для OverlayCalendar Component..."

# Проверяем, что мы в git репозитории
if [ ! -d ".git" ]; then
    echo "❌ Ошибка: Запустите скрипт в папке с git репозиторием"
    exit 1
fi

# Запрашиваем данные пользователя
echo ""
echo "📝 Введите данные для GitHub репозитория:"
echo ""

read -p "GitHub username: " GITHUB_USERNAME
read -p "Repository name (по умолчанию: overlay-calendar): " REPO_NAME
read -p "Описание (по умолчанию: Advanced calendar component for MoonShine): " DESCRIPTION

# Устанавливаем значения по умолчанию
REPO_NAME=${REPO_NAME:-overlay-calendar}
DESCRIPTION=${DESCRIPTION:-Advanced calendar component for MoonShine}

echo ""
echo "📋 Данные для создания репозитория:"
echo "Username: $GITHUB_USERNAME"
echo "Repository: $REPO_NAME"
echo "Description: $DESCRIPTION"
echo ""

read -p "Продолжить? (y/n): " CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "❌ Отменено пользователем"
    exit 1
fi

# Обновляем composer.json с правильным именем
echo "🔧 Обновление composer.json..."
sed -i.bak "s/artemib\/overlay-calendar/$GITHUB_USERNAME\/$REPO_NAME/g" composer.json
rm composer.json.bak

# Обновляем README.md с правильными ссылками
echo "📝 Обновление README.md..."
sed -i.bak "s/artemib\/overlay-calendar/$GITHUB_USERNAME\/$REPO_NAME/g" README.md
rm README.md.bak

# Коммитим изменения
echo "💾 Сохранение изменений..."
git add composer.json README.md
git commit -m "Update repository references for GitHub"

# Создаем тег версии
echo "🏷️ Создание тега версии..."
git tag -a v1.0.0 -m "Release version 1.0.0"

echo ""
echo "✅ Локальные изменения готовы!"
echo ""
echo "📋 Следующие шаги:"
echo ""
echo "1. Создайте репозиторий на GitHub:"
echo "   https://github.com/new"
echo "   Name: $REPO_NAME"
echo "   Description: $DESCRIPTION"
echo "   Visibility: Public"
echo "   НЕ инициализируйте (у нас уже есть файлы)"
echo ""
echo "2. Подключите репозиторий:"
echo "   git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
echo ""
echo "3. Загрузите код:"
echo "   git push -u origin main"
echo ""
echo "4. Загрузите тег:"
echo "   git push origin v1.0.0"
echo ""
echo "5. Создайте релиз на GitHub:"
echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME/releases/new"
echo "   Tag: v1.0.0"
echo "   Title: OverlayCalendar Component v1.0.0"
echo ""
echo "🎉 Готово! Ваш репозиторий будет доступен по адресу:"
echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""

# Создаем файл с командами для копирования
cat > github-commands.txt << EOF
# Команды для настройки GitHub репозитория

# 1. Подключение репозитория
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# 2. Загрузка кода
git push -u origin main

# 3. Загрузка тега
git push origin v1.0.0

# 4. Проверка статуса
git remote -v
git status
EOF

echo "📄 Команды сохранены в файл: github-commands.txt"
echo "   Скопируйте и выполните команды из этого файла"
