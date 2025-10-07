# 📦 Публикация на Packagist.org

## 🎯 Цель
Сделать пакет доступным для установки через:
```bash
composer require Artemib/overlay-calendar
```

## 📋 Шаги для публикации

### 1. Регистрация на Packagist
1. Перейдите на [packagist.org](https://packagist.org)
2. Нажмите **"Sign up"** или **"Log in"**
3. Авторизуйтесь через GitHub

### 2. Добавление пакета
1. Нажмите **"Submit"** в верхнем меню
2. Введите URL репозитория: `https://github.com/Artemib/overlay-calendar`
3. Нажмите **"Check"**
4. Если все ОК, нажмите **"Submit"**

### 3. Настройка автообновления
1. В настройках пакета найдите **"GitHub Service Hook"**
2. Скопируйте URL webhook
3. Перейдите в настройки GitHub репозитория
4. **Settings** → **Webhooks** → **Add webhook**
5. Вставьте URL и сохраните

## 🔧 Альтернативный способ (через API)

Если хотите, я могу опубликовать через API:

```bash
# Нужен API токен Packagist
curl -X POST https://packagist.org/api/create-package \
  -H "Content-Type: application/json" \
  -d '{
    "repository": {
      "url": "https://github.com/Artemib/overlay-calendar"
    }
  }'
```

## ✅ После публикации

### Установка станет доступна:
```bash
composer require Artemib/overlay-calendar
```

### Обновление пакета:
- При каждом push в main ветку
- При создании новых тегов
- Packagist автоматически обновит пакет

## 🎯 Текущий статус

**Пакет готов к публикации:**
- ✅ composer.json настроен
- ✅ Репозиторий на GitHub
- ✅ Тег v1.0.0 создан
- ✅ Структура пакета корректна

**Осталось только:**
- 📝 Зарегистрироваться на Packagist
- 🔗 Добавить репозиторий
- 🔄 Настроить webhook

## 🚀 Хотите, чтобы я сделал это?

Если дадите API токен Packagist, я могу:
1. Опубликовать пакет автоматически
2. Настроить webhook
3. Проверить, что все работает

Или можете сделать это вручную по инструкции выше.
