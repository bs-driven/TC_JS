DROP DATABASE IF EXISTS docClient_db;
CREATE DATABASE docClient_db;
USE docClient_db;

CREATE TABLE doctor(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    doc_firstName  VARCHAR(45) NOT NULL,
    doc_lastName VARCHAR(45) NOT NULL,
    doc_email VARCHAR(45) NOT NULL,

);

CREATE TABLE clients (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_firstName VARCHAR(35) NOT NULL,
    client_lastName VARCHAR(35) NOT NULL,
    client_phone_number INT NOT NULL,
    client_email VARCHAR(35) NOT NULL,
    doc_id INT NOT NULL,
    FOREIGN KEY (doc_id)
    REFERENCES doctor(id)

);

CREATE TABLE notes(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    note_date DATE NOT NULL,
    note_time TIME,
    note_content TEXT NOT NULL,
    FOREIGN KEY(client_id)
    REFERENCES clients (id)
);

CREATE TABLE billing_info(
    billing_info_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    billing_address INT NOT NULL,
    billing_card INT,
    cardholder_name VARCHAR(45),
    FOREIGN KEY(client_id)
    REFERENCES clients (id)
);