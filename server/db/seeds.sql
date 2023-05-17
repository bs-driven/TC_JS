USE docClient_db;

INSERT INTO doctor( id, doc_firstName, doc_lastName, doc_email)
VALUES
(01,"Emma","Green", "efgreen562@gmail.com"),
(02, "Mary", "Grandison", "MMGrandi55@gmail.com"),
(03, "Marie", "Bradley", "msbradley1941@gmail.com"),
(04, "Lex", "Luther", "lexl88@gmail.com"),
(05, "Alivin", "Buzzbee", "ab_jr12@gmail.com"),
(06, "Imari", "Greene", "marig@gmail.com");

INSERT INTO clients( id, client_firstName, client_lastName,client_phone_number, client_email, doc_id)
VALUES
(008978.2588, "Andre", "Miller", 504-784-9865,"millerstunna@gmail.com",04),
(000252.9984, "Earl", "Spencer", 504-899-7841, "kingspencer@icloud.com", 02),
(000398.2203, "Luffy", "Monkey", 457-789-5546, "piratecrown@gmail.com", 03),
(000412.5123, "Jason", "Tatum", 652-456-8790, "tatum0@gmail.com", 01),
(000548.2387, "Julis", "Erving", 986-546-8491,"drinthehouse@gmail.com",05),
(000645.2588, "Gon","Freaks", 659-541-2133, "imafinddad@gmail.com",02),
(000787.7877, "Killua", "Zultic", 859-461-2412, "silentdeath@gmail.com", 04),
(000845.2315, "Vegeta", "Prince", 614-968-3462, "prideofsayian@gmail.com", 03),
(000987.2103, "Zoro","Swordsmen", 456-894-9873, "bestalive01@gmail.com", 05),
(000104.2117, "Franky", "Cyborg" 667-956-8751, "shipwright56@gmail.com", 01);

INSERT INTO notes( note_id, note_date, note_content, client_id)
VALUES
(00000001, 4/26/2023, "Seems to have problems with chamge. Adjustment issues",000104.2117),
(00000002, 4/10/2023,"Anixety & depression", 000987.2103),
(00000003, 3/16/2023, "schizophrenic", 000845.2315),
(00000004, 11/29/2022, "adjustment issues", 000787.7877),
(00000005, 12/14/2022, "tendency to be too hard on themself", 000645.2588),
(00000006, 3/15/2023, "witness to his bestfriends death", 000548.2387),
(00000007, 2/21/2023, "calls gunfire at night a regular thing", 000412.5123),
(00000008, 3/10/2023, "argues with parents often", 000398.2203),
(00000009, 3/22/2023, "speaks on killing small animals when younger", 000252.9984),
(000000010, 4/19/2023, "tends to isolate at every oppertunity available", 008978.2588)
(000000011, 4/29/2022, "deals with the scars of abuse as a youth", 008978.2588)

INSERT INTO scheduled_appointments(appointment_id, appoimtment_date,appointment_time, client_id)