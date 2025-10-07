# OverlayCalendar Component - Инструкция по установке

## 📋 Требования

- PHP 8.1+
- Laravel 10+
- MoonShine 3.x
- Alpine.js (включен в MoonShine)

## 🚀 Установка

### Шаг 1: Копирование файлов

1. **Скопируйте компонент:**
```bash
cp src/OverlayCalendar.php app/MoonShine/UI/Components/
```

2. **Скопируйте ассеты:**
```bash
cp assets/overlay-calendar.js public/js/
cp assets/overlay-calendar.css public/css/
```

3. **Скопируйте переводы:**
```bash
cp lang/ru/overlay_calendar.php lang/ru/
cp lang/en/overlay_calendar.php lang/en/
```

### Шаг 2: Настройка MoonShine

1. **Добавьте в `app/Providers/MoonShineServiceProvider.php`:**
```php
use App\MoonShine\UI\Components\OverlayCalendar;

public function boot(): void
{
    // Регистрируем компонент
    MoonShine::components([
        OverlayCalendar::class,
    ]);
}
```

2. **Добавьте в меню (опционально):**
```php
// В app/MoonShine/Layouts/MoonShineLayout.php
MenuItem::make('Calendar Demo', CalendarDemo::class)->icon('calendar-days'),
```

### Шаг 3: Создание демо страницы (опционально)

1. **Скопируйте пример:**
```bash
cp examples/CalendarDemo.php app/MoonShine/Pages/
```

2. **Добавьте в `app/Providers/MoonShineServiceProvider.php`:**
```php
use App\MoonShine\Pages\CalendarDemo;

public function pages(): array
{
    return [
        CalendarDemo::class,
    ];
}
```

## 🔧 Использование

### Базовое использование

```php
use App\MoonShine\UI\Components\OverlayCalendar;

// В ресурсе
public function components(): array
{
    return [
        OverlayCalendar::make('date_field')
            ->render(),
    ];
}

// В форме
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

### Продвинутое использование

```php
OverlayCalendar::make('custom_calendar', 'Выберите дату')
    ->addClass('border-2 border-blue-500 rounded-lg')
    ->addStyles('padding: 12px; background: linear-gradient(...);')
    ->icon('calendar-days', '#ffffff')
    ->format('d.m.Y H:i:s')
    ->rangeDelimiter(' — ', '|')
    ->includeEndOfDay(true)
    ->minDate('2024-01-01')
    ->maxDate('2024-12-31')
    ->disabledDates(['2024-12-25', '2024-12-31'])
    ->placeholder('Выберите дату и время')
    ->render();
```

## 🎨 Кастомизация

### CSS переменные

Вы можете переопределить CSS переменные:

```css
:root {
    --calendar-primary-color: #3b82f6;
    --calendar-range-color: #10b981;
    --calendar-inrange-color: #fde68a;
    --calendar-quick-active-bg: #2563eb;
    --calendar-apply-bg: #111827;
}
```

### Стили

```php
->addClass('my-custom-class')
->addStyles('border: 2px solid red; padding: 20px;')
```

## 🌐 Локализация

### Добавление нового языка

1. Создайте файл `lang/{locale}/overlay_calendar.php`
2. Скопируйте структуру из `lang/ru/overlay_calendar.php`
3. Переведите значения

### Использование переводов

```php
// В компоненте автоматически используется текущая локаль
OverlayCalendar::make('date_field')
    ->placeholder('overlay_calendar.custom_placeholder')
    ->render();
```

## 🔍 Отладка

### Проверка установки

1. Откройте страницу с календарем
2. Проверьте консоль браузера на ошибки
3. Убедитесь, что CSS/JS файлы загружаются

### Частые проблемы

**Проблема:** Календарь не открывается
**Решение:** Проверьте, что Alpine.js загружен

**Проблема:** Иконки не отображаются
**Решение:** Убедитесь, что MoonShine Icon компонент доступен

**Проблема:** Стили не применяются
**Решение:** Проверьте путь к CSS файлу

## 📚 Дополнительная документация

- [Полная документация](docs/OVERLAY_CALENDAR_README.md)
- [Примеры использования](examples/)
- [API Reference](docs/OVERLAY_CALENDAR_README.md#api-reference)

## 🆘 Поддержка

При возникновении проблем:

1. Проверьте требования
2. Убедитесь в правильности установки
3. Проверьте консоль браузера
4. Создайте issue с описанием проблемы

## 📄 Лицензия

MIT License
