CREATE DATABASE system_stats;

USE system_stats;

CREATE TABLE performance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time DATETIME,
    cpu_usage FLOAT,
    memory_usage FLOAT,
    memory_used FLOAT,
    memory_free FLOAT,
    disk_usage FLOAT,
    gpu_memory_used FLOAT,
    gpu_memory_free FLOAT,
    gpu_load FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);