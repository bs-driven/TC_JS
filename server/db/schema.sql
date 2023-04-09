DROP DATABASE IF EXISTS docClient_db;
CREATE DATABASE docClient_db;
USE docClient_db;

CREATE TABLE doctor(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    doc_name  VARCHAR(45) NOT NULL,

);

CREATE TABLE client (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_firstName VARCHAR(35) NOT NULL,
    client_lastName VARCHAR(35) NOT NULL,
    doc_id INT NOT NULL,
    FOREIGN KEY (doc_id)
    REFERENCES doctor(id)

);

CREATE TABLE notes(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    note_date DATE,
    note_time TIME,
    note_content BLOB,
    FOREIGN KEY(client_id)
    REFERENCES client (id)
);