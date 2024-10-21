#start  Apache zookeeper (from docker):
#start terminal:
docker ps

# start kafka server :
docker exec -it fbf3730c6cad /bin/bash


# create a kafka topic :
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic firstTopic


# start the producer :
kafka-console-producer --broker-list localhost:9092 --topic firstTopic


# start the consumer :
kafka-console-consumer --bootstrap-server localhost:9092 --topic firstTopic --from-beginning


