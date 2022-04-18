# real time chat app

# Set up
```
$ cp .env.default .env
$ docker-compose build
$ docker-compose run --rm app bundle exec rails db:create
$ docker-compose run --rm app bundle exec rails db:migrate
$ docker-compose up
```
