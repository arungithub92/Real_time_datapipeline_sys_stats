
# Real-Time Data Pipeline Using-Kafka

## Table of Contents
1. [Project Overview](#project-overview)
3. [Technologies Used](#technologies-used)
4. [Data Pipeline](#data-pipeline)
5. [Repository Structure](#repository-structure)
6. [How to Run](#how-to-run)
7. [Dashboard](#dashboard)
8. [Acknowledgments](#acknowledgments)
9. [Conclusion](#conclusion)
10. [Contacts](#contacts)

## Project Overview
This project implements a real-time data pipeline using `Apache Kafka`, Python's `psutil` & 'GPUtil' library for metric collection, and `MySQL Database` for data storage. The pipeline collects metrics data from the local computer, processes it through Kafka brokers, and loads it into a MySQL database. Additionally, a real-time dashboard is created using `Power BI`, providing a user-friendly interface for monitoring the collected metrics.

## Technologies Used
- **Python:** Utilized the psutil and GPUtil library for collecting metrics data and Kafka Python client for producing and consuming messages.
- **Apache Kafka:** Implemented a distributed streaming platform to handle real-time data processing and communication between producers and consumers.
- **Apache Zookeeper:** Used for coordinating and managing Kafka brokers.
- **MySQL Database:** Stored and managed the collected metrics data in a relational database.
- **Power BI:** Connected to the SQL Server database to visualize real-time metrics and create the dashboard.

# Data Pipeline

Here is the data pipeline :

![Data_pipeline](images/data_pipeline.png)

The data pipeline consists of the following steps:
1. **Data Collection:** Metrics data is collected from the local computer using the psutil & GPUtil Python library.
2. **Data Production:** The collected data is sent as messages to Kafka topics through a Kafka producer.
3. **Data Consumption:** Kafka consumers read the messages from the topics, process them, and load the data into MySQL Database.
4. **Dashboard Creation:** Power BI connects to the MySQL database and creates a real-time dashboard for monitoring the metrics data.

# Repository Structure

```bash 
Real-Time-Data-Pipeline-Using-Kafka:.
|   README.md
|
+---dashboard
|       System_Stats_dashboard.pbix
|       System_Stats_dashboard.pdf
|
+---images
|       dashboard.png
|       data_pipeline.png
|
\---Main
        data_pipeline.py
        Kafka_commands.sh
        requirements.txt
        MySQL_script.sql
```

# How to Run
1. **Setting up Kafka:** Ensure Apache Kafka and Apache Zookeeper are installed and configured properly. Modify Kafka and Zookeeper configurations in the `config/` directory if necessary.

2. **Database Setup:** Create a database and necessary table in 
MySQL using the script provided in `MySQL_script`.

3. **Start the Apache Zookeeper :**

4. **Start kafka  server :**
```bash
docker exec -it fbf3730c6cad /bin/bash
```
4. **Create  kafka  topic :**

```bash 
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic firstTopic
```
5. **Start the producer :**

```bash 
kafka-console-producer --broker-list localhost:9092 --topic firstTopic
```

6. **Start the consumer(in another terminal) :**

```bash 
kafka-console-consumer --bootstrap-server localhost:9092 --topic firstTopic --from-beginning
```
- this commands for  windows OS.

7. **Running the Pipeline:**

    #### 7.1 Install the requirements :

    #### 7.2 Run `data_pipeline.py` 
    to collect metrics data and send messages to Kafka topics, consume messages from Kafka topics and load data into MySQL Server (here it is localhost).

8. **Dashboard Visualization:** Open `System_Stats_dashboard.pbix` in Power BI and connect to the MySQL database to visualize real-time metrics.


# Dashboard
Here is the Dashboard created in Power BI:

![Dashboard](images/dashboard.png)


# Acknowledgments
- Special thanks to the open-source communities behind `Apache kafka`, `Power BI` and `Python`.

# Conclusion
This project demonstrates an effective implementation of a real-time data pipeline using Apache Kafka, Python, MySQL, and Power BI. It allows seamless collection, processing, and visualization of system metrics, enabling users to gain valuable insights into system performance.

you can watch the demo video <a href="https://youtu.be/4bI7HyppGG8" target="_blank">here</a> 

# Contacts
For any inquiries or further information, please contact:
- **Name:** G Arun Kumar
- **Email:** arunreturns04@gmail.com
- **LinkedIn:** <a href="https://www.linkedin.com/in/arunreturns04/" target="_blank">Aymane Maghouti</a><br>
