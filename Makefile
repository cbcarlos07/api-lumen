up:
	docker-compose up -d
	docker-compose restart php7_3
	docker-compose exec php7_3 chmod 777 -R storage/
	docker-compose exec php7_3 composer install
	docker-compose exec php7_3 php artisan key:generate
	docker-compose exec php7_3 php artisan config:cache
	docker-compose exec php7_3 php artisan config:clear
	docker-compose exec php7_3 apt-get install nano
	docker cp config/backend/000-default.conf php7_3:/etc/apache2/sites-available/
	
start:
	docker-compose up -d

stop:
	docker-compose down

database:
	docker-compose exec php7_3 php artisan mysql:createdb
	docker-compose exec php7_3 php artisan migrate

seed:
	docker-compose exec php7_3 php artisan db:seed

install:
	docker-compose exec php7_3 php composer install

migrate:
	docker-compose exec php7_3 php artisan migrate

drop:
	docker-compose exec php7_3 php artisan mysql:drop:database

configure:
	docker-compose exec php7_3 composer install
	docker-compose exec php7_3 php artisan key:generate
	docker-compose exec php7_3 php artisan config:cache
	docker-compose exec php7_3 php artisan config:clear
	docker-compose exec php7_3 apt-get install nano




