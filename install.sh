#!/bin/bash

# OverlayCalendar Component Installer
# Автоматическая установка компонента календаря

set -e

echo "🚀 Установка OverlayCalendar Component..."

# Проверяем, что мы в Laravel проекте
if [ ! -f "artisan" ]; then
    echo "❌ Ошибка: Запустите скрипт в корне Laravel проекта"
    exit 1
fi

# Создаем директории если их нет
echo "📁 Создание директорий..."
mkdir -p app/MoonShine/UI/Components
mkdir -p public/js
mkdir -p public/css
mkdir -p lang/ru
mkdir -p lang/en

# Копируем файлы
echo "📋 Копирование файлов..."

# Компонент
if [ -f "src/OverlayCalendar.php" ]; then
    cp src/OverlayCalendar.php app/MoonShine/UI/Components/
    echo "✅ Компонент скопирован"
else
    echo "❌ Файл src/OverlayCalendar.php не найден"
    exit 1
fi

# Ассеты
if [ -f "assets/overlay-calendar.js" ]; then
    cp assets/overlay-calendar.js public/js/
    echo "✅ JavaScript файл скопирован"
else
    echo "❌ Файл assets/overlay-calendar.js не найден"
    exit 1
fi

if [ -f "assets/overlay-calendar.css" ]; then
    cp assets/overlay-calendar.css public/css/
    echo "✅ CSS файл скопирован"
else
    echo "❌ Файл assets/overlay-calendar.css не найден"
    exit 1
fi

# Переводы
if [ -f "lang/ru/overlay_calendar.php" ]; then
    cp lang/ru/overlay_calendar.php lang/ru/
    echo "✅ Русские переводы скопированы"
fi

if [ -f "lang/en/overlay_calendar.php" ]; then
    cp lang/en/overlay_calendar.php lang/en/
    echo "✅ Английские переводы скопированы"
fi

# Создаем пример страницы
echo "📄 Создание демо страницы..."
mkdir -p app/MoonShine/Pages
if [ -f "examples/CalendarDemo.php" ]; then
    cp examples/CalendarDemo.php app/MoonShine/Pages/
    echo "✅ Демо страница создана"
fi

# Очищаем кеш
echo "🧹 Очистка кеша..."
php artisan config:clear
php artisan view:clear
php artisan cache:clear

echo ""
echo "🎉 Установка завершена!"
echo ""
echo "📚 Следующие шаги:"
echo "1. Добавьте в app/Providers/MoonShineServiceProvider.php:"
echo "   use App\MoonShine\UI\Components\OverlayCalendar;"
echo "   MoonShine::components([OverlayCalendar::class]);"
echo ""
echo "2. Добавьте демо страницу (опционально):"
echo "   use App\MoonShine\Pages\CalendarDemo;"
echo "   return [CalendarDemo::class];"
echo ""
echo "3. Откройте /admin/page/calendar-demo для тестирования"
echo ""
echo "📖 Полная документация: docs/OVERLAY_CALENDAR_README.md"
