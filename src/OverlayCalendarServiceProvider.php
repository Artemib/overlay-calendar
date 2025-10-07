<?php

declare(strict_types=1);

namespace Artemib\OverlayCalendar;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;

class OverlayCalendarServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        // Публикуем ассеты
        $this->publishes([
            __DIR__ . '/../assets' => public_path('vendor/overlay-calendar'),
        ], 'overlay-calendar-assets');

        // Публикуем переводы
        $this->publishes([
            __DIR__ . '/../lang' => lang_path('vendor/overlay-calendar'),
        ], 'overlay-calendar-lang');

        // Загружаем переводы
        $this->loadTranslationsFrom(__DIR__ . '/../lang', 'overlay-calendar');

        // Регистрируем Blade компонент
        Blade::component('overlay-calendar', OverlayCalendar::class);
    }

    public function register(): void
    {
        // Регистрируем сервисы
    }
}
