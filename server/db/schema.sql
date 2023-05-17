DROP DATABASE IF EXISTS docClient_db;
CREATE DATABASE docClient_db;
USE docClient_db;

CREATE TABLE doctor IF NOT EXISTS(
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    doc_firstName  VARCHAR(45) NOT NULL,
    doc_lastName VARCHAR(45) NOT NULL,
    doc_email VARCHAR(45) NOT NULL,

);

CREATE TABLE clients IF NOT EXISTS(
    id DECIMAL(6,4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    client_firstName VARCHAR(35) NOT NULL,
    client_lastName VARCHAR(35) NOT NULL,
    client_phone_number INT NOT NULL,
    client_email VARCHAR(35) NOT NULL,
    age_client INT,
    emergency_contantName VARCHAR(70) NOT NULL,
    emergency_contactPhone INT,
    religious_preference VARCHAR(70),
    pronouns VARCHAR(15),
    client_sex VARCHAR(7)
    doc_id INT NOT NULL,
    FOREIGN KEY (doc_id)
    REFERENCES doctor(id)
  -- physical address, emergency contact, age, sex, religous preferences, pronouns


);

CREATE TABLE notes IF NOT EXISTS(
    note_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    note_date DATETIME,
    note_content TEXT NOT NULL,
    FOREIGN KEY(client_id)
    REFERENCES clients (id)
);

CREATE TABLE billing_info IF NOT EXISTS(
    billing_info_id INT  AUTO_INCREMENT PRIMARY KEY,
    billing_address INT ,
    billing_card_number INT,
    cardholder_name VARCHAR(45),
    FOREIGN KEY(client_id)
    REFERENCES clients (id)
);

CREATE TABLE scheduled_appointments IF NOT EXISTS(
    appointment_id DECIMAL(7,4),
    appoimtment_date DATE,
    appointment_time TIME(2),
    client_fullName VARCHAR(50)
    FOREIGN KEY(client_id)
    REFERENCES clients (id)

);

CREATE TABLE documents IF NOT EXISTS(
    releaseDOC_id INT AUTO_INCREMENT PRIMARY KEY,
    releaseDOC_form TEXT(6000),
    
);

CREATE TABLE personal_message IF NOT EXISTS(
    personal_message_id INT AUTO_INCREMENT PRIMARY KEY,
    message_sender VARCHAR(50),
    message_recipient VARCHAR(50)
    subject_of_discussion VARCHAR(50),
    actual_message TEXT(2000),
);

CREATE TABLE SOAP_subjective_objective_assessment_plan IF NOT EXISTS(
    S_O_A_P_id FLOAT(15,9) AUTO_INCREMENT PRIMARY KEY,
    soapNote TEXT(6000),
    soapDate DATE,
    doctor_signature_soap VARCHAR(50) NOT NULL,
    
)