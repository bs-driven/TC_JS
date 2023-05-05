DROP DATABASE IF EXISTS docClient_db;
CREATE DATABASE docClient_db;
USE docClient_db;

CREATE TABLE doctor(
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    doc_firstName  VARCHAR(45) NOT NULL,
    doc_lastName VARCHAR(45) NOT NULL,
    doc_email VARCHAR(45) NOT NULL,

);

CREATE TABLE clients (
    id DECIMAL(6,4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_firstName VARCHAR(35) NOT NULL,
    client_lastName VARCHAR(35) NOT NULL,
    client_phone_number INT NOT NULL,
    client_email VARCHAR(35) NOT NULL,
    doc_id INT NOT NULL,
    FOREIGN KEY (doc_id)
    REFERENCES doctor(id)

);

CREATE TABLE notes(
    note_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    note_date DATETIME,
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

CREATE TABLE scheduled_appointments(
    appointment_id DECIMAL(7,4),
    appoimtment_date DATE,
    appointment_time TIME(2),
    client_fullName VARCHAR(50)
    FOREIGN KEY(client_id)
    REFERENCES clients (id)

)