# 🚀 Быстрый старт - OverlayCalendar

## 📦 Что входит в пакет

```
overlay-calendar-component/
├── src/                          # Исходный код
│   ├── OverlayCalendar.php       # Основной компонент
│   └── OverlayCalendarServiceProvider.php
├── assets/                       # Ассеты
│   ├── overlay-calendar.js       # JavaScript
│   └── overlay-calendar.css      # Стили
├── lang/                         # Переводы
│   ├── ru/overlay_calendar.php   # Русский
│   └── en/overlay_calendar.php   # Английский
├── examples/                     # Примеры
│   └── CalendarDemo.php          # Демо страница
├── docs/                         # Документация
│   └── OVERLAY_CALENDAR_README.md
├── install.sh                    # Скрипт установки
├── INSTALLATION.md               # Инструкция
├── README.md                     # Описание пакета
├── composer.json                 # Composer конфиг
├── LICENSE                       # Лицензия
└── CHANGELOG.md                  # История изменений
```

## ⚡ Установка за 3 шага

### 1. Автоматическая установка
```bash
cd your-laravel-project
chmod +x overlay-calendar-component/install.sh
./overlay-calendar-component/install.sh
```

### 2. Ручная установка
```bash
# Копируем файлы
cp overlay-calendar-component/src/OverlayCalendar.php app/MoonShine/UI/Components/
cp overlay-calendar-component/assets/* public/
cp overlay-calendar-component/lang/* lang/

# Очищаем кеш
php artisan config:clear
php artisan view:clear
```

### 3. Настройка MoonShine
```php
// app/Providers/MoonShineServiceProvider.php
use App\MoonShine\UI\Components\OverlayCalendar;

public function boot(): void
{
    MoonShine::components([
        OverlayCalendar::class,
    ]);
}
```

## 🎯 Первое использование

```php
// В ресурсе MoonShine
use App\MoonShine\UI\Components\OverlayCalendar;

public function form(): array
{
    return [
        OverlayCalendar::make('appointment_date')
            ->singleDateOnly()
            ->icon('calendar-days', '#8b5cf6')
            ->render(),
    ];
}
```

## 🔧 Основные возможности

### Внешний триггер
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

## 📚 Документация

- [Полная документация](docs/OVERLAY_CALENDAR_README.md)
- [Инструкция по установке](INSTALLATION.md)
- [Примеры использования](examples/)

## 🆘 Поддержка

- 📧 Email: artem@example.com
- 🐛 Issues: GitHub Issues
- 📖 Документация: [docs/](docs/)

---

**Готово! Ваш календарь работает! 🎉**
