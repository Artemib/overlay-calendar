# OverlayCalendar Component

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Laravel](https://img.shields.io/badge/Laravel-10%2B-red.svg)](https://laravel.com)
[![MoonShine](https://img.shields.io/badge/MoonShine-3.x-blue.svg)](https://moonshine-laravel.com)

Продвинутый компонент календаря для MoonShine с богатым функционалом и гибкой кастомизацией.

## ✨ Особенности

- 🎯 **Гибкие триггеры** - внешние кнопки, фокус, клик
- 📅 **Режимы выбора** - одна дата или диапазон
- 🎨 **Кастомизация** - стили, иконки, цвета
- 🌐 **Локализация** - поддержка множества языков
- ♿ **Доступность** - ARIA, клавиатурная навигация
- ✅ **Валидация** - min/max даты, отключенные даты
- 🔧 **Форматирование** - кастомные форматы вывода
- 📱 **Адаптивность** - работает на всех устройствах

## 🚀 Быстрый старт

### Установка

```bash
# Скопируйте файлы в ваш проект
cp -r overlay-calendar-component/* your-project/

# Или установите как пакет
composer require artemib/overlay-calendar
```

### Базовое использование

```php
use App\MoonShine\UI\Components\OverlayCalendar;

// Простой календарь
OverlayCalendar::make('date_field')->render();

// С кастомизацией
OverlayCalendar::make('appointment_date')
    ->singleDateOnly()
    ->icon('calendar-days', '#8b5cf6')
    ->format('d.m.Y H:i:s')
    ->render();
```

## 📚 Документация

- [Инструкция по установке](INSTALLATION.md)
- [Полная документация](docs/OVERLAY_CALENDAR_README.md)
- [Примеры использования](examples/)

## 🎯 Основные возможности

### Внешние триггеры
```php
OverlayCalendar::make('calendar')
    ->openWith('#myButton', '#resultInput')
    ->render();
```

### Валидация дат
```php
OverlayCalendar::make('calendar')
    ->minDate('2024-01-01')
    ->maxDate('2024-12-31')
    ->disabledDates(['2024-12-25'])
    ->render();
```

### Кастомные стили
```php
OverlayCalendar::make('calendar')
    ->addClass('border-2 border-blue-500')
    ->addStyles('padding: 16px; background: linear-gradient(...);')
    ->icon('calendar-days', '#ffffff')
    ->render();
```

## 🔧 API Reference

### Основные методы

| Метод | Описание | Пример |
|-------|----------|--------|
| `make()` | Создание компонента | `OverlayCalendar::make('field')` |
| `openWith()` | Внешний триггер | `->openWith('#btn', '#input')` |
| `singleDateOnly()` | Только одна дата | `->singleDateOnly()` |
| `format()` | Формат вывода | `->format('d.m.Y H:i:s')` |
| `icon()` | Иконка | `->icon('calendar-days', '#8b5cf6')` |
| `addClass()` | CSS классы | `->addClass('border-2')` |
| `addStyles()` | Инлайн стили | `->addStyles('padding: 16px;')` |

### Валидация

| Метод | Описание | Пример |
|-------|----------|--------|
| `minDate()` | Минимальная дата | `->minDate('2024-01-01')` |
| `maxDate()` | Максимальная дата | `->maxDate('2024-12-31')` |
| `disabledDates()` | Отключенные даты | `->disabledDates(['2024-12-25'])` |

## 🌐 Поддерживаемые языки

- 🇷🇺 Русский
- 🇺🇸 English
- 🇩🇪 Deutsch (планируется)
- 🇫🇷 Français (планируется)

## 📊 Статистика

- **22 примера** использования
- **18 методов API** для настройки
- **100% покрытие** основного функционала
- **0 зависимостей** кроме MoonShine

## 🤝 Вклад в проект

1. Fork проекта
2. Создайте feature branch (`git checkout -b feature/amazing-feature`)
3. Commit изменения (`git commit -m 'Add amazing feature'`)
4. Push в branch (`git push origin feature/amazing-feature`)
5. Откройте Pull Request

## 📄 Лицензия

Этот проект лицензирован под MIT License - см. файл [LICENSE](LICENSE) для деталей.

## 🆘 Поддержка

- 📧 Email: artem@example.com
- 🐛 Issues: [GitHub Issues](https://github.com/artemib/overlay-calendar/issues)
- 📖 Документация: [docs/](docs/)

## 🙏 Благодарности

- [MoonShine](https://moonshine-laravel.com) - за отличную админ-панель
- [Alpine.js](https://alpinejs.dev) - за реактивность
- [Laravel](https://laravel.com) - за фреймворк

---

**Сделано с ❤️ для сообщества Laravel и MoonShine**
