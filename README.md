![example workflow name](https://github.com/sorochinskii/yamdb_final/workflows/Yamdb%20workoflow/badge.svg)



# REST API для сервиса YaMDb — базы отзывов о фильмах, книгах, музыке и того, о чем можно написать отзыв. (Совместный проект студентов Яндекс.Практикум)

Проект YaMDb собирает отзывы (Review) пользователей на произведения (Title). Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий (Category) может быть расширен (например, можно добавить категорию «Изобразительное искусство» или «Ювелирка»).

**Сами произведения в YaMDb не хранятся, здесь нельзя посмотреть фильм или послушать музыку.**

В каждой категории есть произведения: книги, фильмы или музыка. Например, в категории «Книги» могут быть произведения «Винни Пух и все-все-все» и «Марсианские хроники», а в категории «Музыка» — песня «Давеча» группы «Насекомые» и вторая сюита Баха. Произведению может быть присвоен жанр из списка предустановленных (например, «Сказка», «Рок» или «Артхаус»). Новые жанры может создавать только администратор.
Благодарные или возмущённые читатели оставляют к произведениям текстовые отзывы (Review) и выставляют произведению рейтинг (оценку в диапазоне от одного до десяти). Из множества оценок автоматически высчитывается средняя оценка произведения.

## Подготовка к работе:

Клонируйте репозиторий на локальную машину.

```
git clone https://github.com/sorochinskii/infra_sp2

```

В директории проекта находится файл .env.example, в котором описаны все нужные переменные и их примерные значения. В этой же директории необходимо создать файл .env с актуальными значениями переменных.

Запустите процесс сборки и запуска контейнеров. Для запуска в фоновом режиме примените ключ -d

```
docker-compose up

```

Запустите терминал внутри контейнера (команду необходимо выполнить в папке с файлом docker-compose.yaml)

```
docker-compose exec web bash

```

Проведите миграцию для переноса моделей django на структуру базы данных

```
python manage.py migrate

```

Для работы с админкой django необходимо создать суперпользователя

```
python manage.py createsuperuser

```

Возможно загрузить в базу данных тестовые данные

```
python manage.py loaddata fixtures.json

```

Остановить работу и удалить контейнеры можно командой

```
docker-compose down

```

## Технологии

Код приложения написан на **[Python](https://www.python.org/)**. 

Для работы с данными применены фреймворки **[Django](https://www.djangoproject.com/)**, **[Django rest framework](https://www.django-rest-framework.org/)** . 

Для хранения и управления данными проекта используется СУБД **[PostgreSQL](https://www.postgresql.org/)** упакованная в контейнер docker **[postgres docker](https://hub.docker.com/_/postgres)**.

Для сборки контейнеров и развертывания приложений применен **[Docker](https://www.docker.com/)** и **[Docker-Compose](https://docs.docker.com/compose/)**.

Список использованных инструментов можно посмотреть в файле requirements.txt .

### Необходимые компоненты

Для развернывания приложения необходимо установить **[Docker](https://docs.docker.com/engine/install/)** и **[Docker-Compose](https://docs.docker.com/compose/install/)**

## Над проектом работали:

**[Руслан Фатхутдинов](github.com/RuslanFatkhutdinov)**. Управление пользователями: система регистрации и аутентификации, права доступа, работа с токеном, система подтверждения e-mail, поля.

**[Михаил Кудинов](https://github.com/kudinov-prog)**. Категории, жанры и произведения: модели, view и эндпойнты для них.

**[Александр Сорочинский](https://github.com/sorochinskii)**. Отзывы и комментарии: модели и view, эндпойнты, права доступа для запросов. Рейтинги произведений.
