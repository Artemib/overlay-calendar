# 🚀 Настройка GitHub репозитория

## 📋 Шаги для создания репозитория

### 1. Создайте репозиторий на GitHub

1. Перейдите на [GitHub.com](https://github.com)
2. Нажмите **"New repository"** или **"+"** → **"New repository"**
3. Заполните данные:
   - **Repository name**: `overlay-calendar`
   - **Description**: `Advanced calendar component for MoonShine with rich functionality and flexible customization`
   - **Visibility**: Public (рекомендуется)
   - **Initialize**: НЕ ставьте галочки (у нас уже есть файлы)

### 2. Подключите локальный репозиторий

```bash
# В папке overlay-calendar-component выполните:
git remote add origin https://github.com/YOUR_USERNAME/overlay-calendar.git
git push -u origin main
```

### 3. Альтернативный способ (если у вас есть SSH ключи)

```bash
git remote add origin git@github.com:YOUR_USERNAME/overlay-calendar.git
git push -u origin main
```

## 🏷️ Создание релиза

### 1. Создайте тег для версии

```bash
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0
```

### 2. Создайте релиз на GitHub

1. Перейдите в **Releases** → **Create a new release**
2. Выберите тег `v1.0.0`
3. Заголовок: `OverlayCalendar Component v1.0.0`
4. Описание:
```markdown
## 🎉 Первый релиз OverlayCalendar Component

### ✨ Основные возможности
- 🎯 Гибкие триггеры (внешние кнопки, фокус, клик)
- 📅 Режимы выбора (одна дата или диапазон)
- 🎨 Кастомизация (стили, иконки, цвета)
- 🌐 Локализация (русский, английский)
- ♿ Доступность (ARIA, клавиатурная навигация)
- ✅ Валидация дат (min/max, отключенные даты)
- 🔧 Форматирование (кастомные форматы вывода)
- 📱 Адаптивность (работает на всех устройствах)

### 📊 Статистика
- **22 примера** использования
- **18 методов API** для настройки
- **100% покрытие** основного функционала
- **0 зависимостей** кроме MoonShine

### 🚀 Быстрый старт
```bash
# Установка
chmod +x install.sh
./install.sh

# Использование
OverlayCalendar::make('date_field')->render();
```

### 📚 Документация
- [Быстрый старт](QUICK_START.md)
- [Инструкция по установке](INSTALLATION.md)
- [Полная документация](docs/OVERLAY_CALENDAR_README.md)
```

## 🔧 Настройка репозитория

### 1. Добавьте темы (Topics)
В настройках репозитория добавьте теги:
- `laravel`
- `moonshine`
- `calendar`
- `component`
- `ui`
- `php`
- `alpinejs`

### 2. Настройте About секцию
- **Website**: `https://github.com/YOUR_USERNAME/overlay-calendar`
- **Topics**: `laravel, moonshine, calendar, component, ui`

### 3. Добавьте README badges
Обновите README.md с вашими данными:
```markdown
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Laravel](https://img.shields.io/badge/Laravel-10%2B-red.svg)](https://laravel.com)
[![MoonShine](https://img.shields.io/badge/MoonShine-3.x-blue.svg)](https://moonshine-laravel.com)
```

## 📦 Публикация как Composer пакет

### 1. Обновите composer.json
Замените `artemib` на ваш GitHub username:
```json
{
    "name": "YOUR_USERNAME/overlay-calendar",
    "description": "Advanced calendar component for MoonShine...",
    "authors": [
        {
            "name": "Your Name",
            "email": "your@email.com"
        }
    ]
}
```

### 2. Публикация на Packagist
1. Зарегистрируйтесь на [Packagist.org](https://packagist.org)
2. Добавьте репозиторий: `https://github.com/YOUR_USERNAME/overlay-calendar`
3. Настройте webhook для автоматического обновления

## 🎯 Готово!

После выполнения всех шагов ваш репозиторий будет доступен по адресу:
`https://github.com/YOUR_USERNAME/overlay-calendar`

И установка будет возможна через:
```bash
composer require YOUR_USERNAME/overlay-calendar
```
