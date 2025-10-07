<?php

declare(strict_types=1);

namespace App\MoonShine\Pages;

use App\MoonShine\UI\Components\OverlayCalendar;
use MoonShine\Laravel\Pages\Page;
use MoonShine\UI\Components\Layout\Box;
use MoonShine\UI\Components\Layout\Divider;
use MoonShine\UI\Fields\Text;
use MoonShine\UI\Components\ActionButton;
use Illuminate\Support\HtmlString;

class CalendarDemo extends Page
{
    protected ?string $alias = 'calendar-demo';

    public function getBreadcrumbs(): array
    {
        return [
            '#' => $this->getTitle()
        ];
    }

    public function getTitle(): string
    {
        return $this->title ?: 'CalendarDemo';
    }

    protected function components(): iterable
    {
        return [
            // 1. Базовый календарь
            Box::make('1. Базовый календарь', [
                OverlayCalendar::make('basic_calendar')->render(),
            ]),

            Divider::make(),

            // 2. Только одна дата
            Box::make('2. Только одна дата', [
                OverlayCalendar::make('single_date', 'Дата рождения')
                    ->singleDateOnly()
                    ->icon('calendar-days', '#8b5cf6')
                    ->render(),
            ]),

            Divider::make(),

            // 3. Внешний триггер
            Box::make('3. Внешний триггер', [
                ActionButton::make('Открыть календарь')
                    ->setAttribute('id', 'externalBtn')
                    ->primary()
                    ->icon('calendar-days'),

                Text::make()
                    ->setAttribute('id', 'resultInput')
                    ->placeholder('Результат появится здесь'),

                OverlayCalendar::make('external_calendar')
                    ->openWith('#externalBtn', '#resultInput')
                    ->render(),
            ]),

            Divider::make(),

            // 4. Валидация дат
            Box::make('4. Валидация дат', [
                OverlayCalendar::make('validated_calendar', 'Только 2024-2025')
                    ->minDate('2024-01-01')
                    ->maxDate('2025-12-31')
                    ->disabledDates(['2024-12-25', '2024-12-31'])
                    ->render(),
            ]),

            Divider::make(),

            // 5. Кастомный стиль
            Box::make('5. Кастомный стиль', [
                OverlayCalendar::make('styled_calendar', 'Красивый календарь')
                    ->addClass('border-2 border-purple-500 rounded-lg shadow-lg')
                    ->addStyles('padding: 16px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white;')
                    ->icon('calendar-days', '#ffffff')
                    ->placeholder('Выберите дату')
                    ->render(),
            ]),
        ];
    }
}
