clean:
	@docker rmi $$(docker images -q)

up:
	@docker-compose up -d

pgcli:
	@docker-compose run pgcli

reset_git:
	git reset --hard HEAD~1

install_deps:
	pip install -r requirements.txt

get_data:
	wget https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2014-01.parquet

setup: up pgcli install_deps

up_mongo:
	@docker-compose -f docker-compose-mongodb.yml up