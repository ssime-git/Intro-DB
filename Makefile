clean:
	@docker rmi $$(docker images -q)

up:
	@docker-compose up -d

pgcli:
	@docker-compose run pgcli