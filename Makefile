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
	@docker-compose -f docker-compose-mongodb.yml up -d

mongoshell:
	wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
	echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
	sudo apt update
	sudo apt install -y mongodb-mongosh
	mongosh --host localhost --port 27017 -u admin -p password --authenticationDatabase admin