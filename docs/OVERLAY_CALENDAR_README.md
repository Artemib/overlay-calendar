# OverlayCalendar Component

Расширенный компонент календаря для MoonShine с богатым функционалом и гибкой настройкой.

## Основные возможности

- ✅ Выбор одиночных дат и диапазонов
- ✅ Быстрые периоды (сегодня, вчера, неделя, месяц)
- ✅ Внешние триггеры и целевые инпуты
- ✅ Гибкое форматирование вывода
- ✅ Кастомизация стилей и иконок
- ✅ Валидация дат и ограничения
- ✅ Поддержка доступности (ARIA)
- ✅ Интеграция с иконками MoonShine

## Быстрый старт

```php
use App\MoonShine\UI\Components\OverlayCalendar;

// Базовое использование
OverlayCalendar::make('date_field')
    ->render();

// С кастомизацией
OverlayCalendar::make('custom_date', 'Выберите дату')
    ->icon('calendar-days', '#8b5cf6')
    ->addClass('border-2 border-blue-500 rounded-lg')
    ->placeholder('Нажмите для выбора')
    ->render();
```

## API Reference

### Основные методы

#### `make(string $name, ?string $placeholder = null)`
Создает новый экземпляр календаря.

```php
OverlayCalendar::make('birthday', 'Дата рождения')
```

#### `value(?string $value)`
Устанавливает начальное значение.

```php
->value('2024-01-15')
```

### Режимы работы

#### `singleDateOnly(bool $single = true)`
Включает режим выбора только одной даты (без диапазонов).

```php
->singleDateOnly(true)
```

#### `showQuickPeriods(bool $show = true)`
Показывает/скрывает быстрые периоды.

```php
->showQuickPeriods(false)
```

#### `quickPeriods(array $periods)`
Настраивает доступные быстрые периоды.

```php
->quickPeriods(['today', 'yesterday', 'current_month'])
```

### Внешние триггеры

#### `openWith(string $triggerSelector, string $targetSelector, ?string $targetEndSelector = null, string $event = 'click')`
Настраивает внешний триггер и целевые инпуты.

```php
// Один целевой инпут
->openWith('#openBtn', '#resultInput')

// Два инпута для диапазона
->openWith('#openBtn', '#startInput', '#endInput')

// Событие focus
->openWith('#dateField', '#dateField', null, 'focus')
```

### Форматирование

#### `format(string $format)`
Устанавливает формат вывода даты.

```php
->format('Y.m.d H:i:s')  // 2024.01.15 14:30:00
->format('d.m.Y')        // 15.01.2024
```

Поддерживаемые символы:
- `Y` - год (4 цифры)
- `m` - месяц (01-12)
- `d` - день (01-31)
- `H` - час (00-23)
- `i` - минуты (00-59)
- `s` - секунды (00-59)

#### `rangeDelimiter(string $delimiter, ?string $delimiterForValue = null)`
Настраивает разделитель для диапазонов.

```php
// Одинаковый разделитель везде
->rangeDelimiter(' — ')

// Разные разделители для отображения и value
->rangeDelimiter(' — ', '|')
```

#### `includeEndOfDay(bool $include = true)`
Включает конец дня (23:59:59) для конечной даты диапазона.

```php
->includeEndOfDay(true)
```

### Валидация

#### `minDate(string $date)`
Устанавливает минимальную дату.

```php
->minDate('2024-01-01')
```

#### `maxDate(string $date)`
Устанавливает максимальную дату.

```php
->maxDate('2025-12-31')
```

#### `disabledDates(array $dates)`
Отключает указанные даты.

```php
->disabledDates(['2024-12-25', '2024-12-31'])
```

### Кастомизация

#### `addClass(string $classes)`
Добавляет CSS классы к инпуту.

```php
->addClass('border-2 border-blue-500 rounded-lg shadow-md')
```

#### `addStyles(string $styles)`
Добавляет инлайн стили к инпуту.

```php
->addStyles('padding: 12px; background: linear-gradient(...);')
```

#### `icon(string $icon, ?string $color = null)`
Настраивает иконку.

```php
// Иконка MoonShine
->icon('calendar-days')

// Иконка MoonShine с цветом
->icon('calendar-days', '#8b5cf6')

// Кастомная SVG иконка
->icon('<svg>...</svg>')
```

#### `placeholder(string $placeholder)`
Устанавливает кастомный placeholder.

```php
->placeholder('Выберите дату рождения')
```

### Цвета

#### `primaryColor(string $color)`
Цвет для одиночных дат.

```php
->primaryColor('#3b82f6')
```

#### `rangeColor(string $color)`
Цвет для диапазонов.

```php
->rangeColor('#10b981')
```

#### `inRangeColor(string $bg, ?string $text = null)`
Цвет фона и текста в диапазоне.

```php
->inRangeColor('#fde68a', '#7c2d12')
```

## Примеры использования

### 1. Базовый календарь
```php
OverlayCalendar::make('date_field')
    ->render();
```

### 2. Календарь только для одной даты
```php
OverlayCalendar::make('birthday', 'Дата рождения')
    ->singleDateOnly()
    ->icon('calendar-days', '#8b5cf6')
    ->render();
```

### 3. Внешний триггер с двумя инпутами
```php
OverlayCalendar::make('date_range')
    ->openWith('#openBtn', '#startDate', '#endDate')
    ->format('d.m.Y')
    ->rangeDelimiter(' — ')
    ->includeEndOfDay(true)
    ->render();
```

### 4. Календарь с валидацией
```php
OverlayCalendar::make('appointment_date', 'Дата записи')
    ->minDate('2024-01-01')
    ->maxDate('2024-12-31')
    ->disabledDates(['2024-12-25', '2024-12-31'])
    ->placeholder('Выберите дату записи')
    ->render();
```

### 5. Полностью кастомизированный
```php
OverlayCalendar::make('custom_calendar', 'Кастомный календарь')
    ->addClass('border-2 border-purple-500 rounded-lg shadow-lg')
    ->addStyles('padding: 16px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;')
    ->icon('calendar-days', '#ffffff')
    ->format('d.m.Y H:i:s')
    ->rangeDelimiter(' — ', '|')
    ->includeEndOfDay(true)
    ->placeholder('Выберите дату и время')
    ->render();
```

## Интеграция с MoonShine

### В ресурсах
```php
use App\MoonShine\UI\Components\OverlayCalendar;

public function components(): array
{
    return [
        OverlayCalendar::make('date_field')
            ->icon('calendar-days')
            ->render(),
    ];
}
```

### В формах
```php
public function form(): array
{
    return [
        OverlayCalendar::make('appointment_date')
            ->singleDateOnly()
            ->minDate(now()->format('Y-m-d'))
            ->render(),
    ];
}
```

## Доступность

Компонент поддерживает:
- ✅ Клавиатурную навигацию (Tab, Enter, Space, Escape)
- ✅ ARIA атрибуты (role, aria-label, aria-expanded)
- ✅ Screen readers
- ✅ Фокус-индикаторы

## Производительность

- ✅ Ассеты подключаются только один раз на странице
- ✅ Версионирование файлов для кеширования
- ✅ Оптимизированная JS логика
- ✅ Обработка ошибок

## Браузерная поддержка

- ✅ Chrome 60+
- ✅ Firefox 55+
- ✅ Safari 12+
- ✅ Edge 79+

## Лицензия

MIT License
