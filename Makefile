#================================
#== DOCKER Targets
#================================
COMPOSE := @docker compose

remove-services:
	$(COMPOSE) down

build-app:
	$(COMPOSE) up --build -d

start-services: 
	$(COMPOSE) start db
	$(COMPOSE) start php_app	
	$(COMPOSE) start phpmyadmin

stop-services:
	$(COMPOSE) stop php_app
	$(COMPOSE) stop phpmyadmin
	$(COMPOSE) stop db 

restart-services: stop-services start-services