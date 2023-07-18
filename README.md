# Intro-DB

A weak introduction to database introduction

# Ressources:

1. Data source: https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Work with MongoDB: https://github.com/sonyarianto/docker-compose-mongodb/blob/master/README.md
3. https://www.baeldung.com/linux/mongodb-as-docker-container

# Notes

You can specify a docker compose file in the `docker-compose up` command using the following command:

```bash
docker-compose -f docker-compose-file.yml up
```

Where `docker-compose-file.yml` is the name of your docker compose file.

Source:
(1) docker compose up | Docker Documentation. https://docs.docker.com/engine/reference/commandline/compose_up/.
(2) docker compose | Docker Documentation. https://docs.docker.com/engine/reference/commandline/compose/.
(3) Use Docker Compose | Docker Documentation. https://docs.docker.com/get-started/08_using_compose/.


# Mongo

It is possible to use the `mongo` shell to interact with the MongoDB database. To do so, follow these steps:

1. Ensure that you have the MongoDB shell installed on your local machine. You can download it from the official MongoDB website: https://www.mongodb.com/try/download/shell.

2. Start the Docker Compose setup by running the following command in the terminal:

```bash
docker-compose up -d
```

3. Open a new terminal window and run the following command to enter the MongoDB container:

```bash
docker exec -it <container_id> mongo -u admin -p password --authenticationDatabase admin
```

Replace `<container_id>` with the actual container ID of the MongoDB container. You can find the container ID by running `docker ps` command.

4. You should now be in the MongoDB shell, connected to your database. You can execute various commands to interact with the database. For example, you can switch to a specific database, list collections, and perform queries.

Here's an example of using the `mongo` shell commands:

```bash
# Switch to the desired database
use sampledb

# Insert a document into the collection
db.samplecollection.insert({name: "Alice", age: 27})

# Query the collection
db.samplecollection.find()
```

You can enter additional MongoDB shell commands as needed to interact with the database. The `mongo` shell provides a powerful interface for managing and querying MongoDB databases.

Remember to replace `sampledb` and `samplecollection` with your actual database name and collection name.

If you prefer a more interactive experience, you can also use MongoDB GUI clients like MongoDB Compass or Robo3T to connect to the MongoDB container and perform database operations.

Let me know if you have any further questions!