USE docClient_db;

INSERT INTO doctor( id, doc_firstName, doc_lastName, doc_email)
VALUES
(01,"Emma","Green", "efgreen562@gmail.com"),
(02, "Mary", "Grandison", "MMGrandi55@gmail.com"),
(03, "Marie", "Bradley", "msbradley1941@gmail.com"),
(04, "Lex", "Luther", "lexl88@gmail.com"),
(05, "Alivin", "Buzzbee", "ab_jr12@gmail.com");

INSERT INTO clients( id, client_firstName, client_lastName,client_phone_number, client_email, doc_id)
VALUES
(0001, "Andre", "Miller", 504-784-9865,"millerstunna@gmail.com",04),
(0002, "Earl", "Spencer", 504-899-7841, "kingspencer@icloud.com", 02),
(0003, "Luffy", "Monkey", 457-789-5546, "piratecrown@gmail.com", 03),
(0004, "Jason", "Tatum", 652-456-8790, "tatum0@gmail.com", 01),
(0005, "Julis", "Erving", 986-546-8491,"drinthehouse@gmail.com",05),
(0006, "Gon","Freaks", 659-541-2133, "imafinddad@gmail.com",02),
(0007, "Killua", "Zultic", 859-461-2412, "silentdeath@gmail.com", 04),
(0008, "Vegeta", "Prince", 614-968-3462, "prideofsayian@gmail.com", 03),
(0009, "Zoro","Swordsmen", 456-894-9873, "bestalive01@gmail.com", 05),
(00010, "Franky", "Cyborg" 667-956-8751, "shipwright56@gmail.com", 01);

INSERT INTO notes( id, note_date, note_content, client_id)
VALUES
(0000001, 4/26/2023, "Seems to have problems with chamge. Adjustment issues",0001),
(0000002, 4/10/2023,"Anixety & depression", 0002),
(0000003, 3/16/2023, "schizophrenic", 003),
(0000004, 11/29/2022, "adjustment issues", 004),
(0000005, 12/14/2022, "tendency to be too hard on themself", 005),
(0000006, 3/15/2023, "witness to his bestfriends death", 006),
(0000007, 2/21/2023, "calls gunfire at night a regular thing", 007),
(0000008, 3/10/2023, "argues with parents often", 008),
(0000009, 3/22/2023, "speaks on killing small animals when younger", 009),
(00000010, 4/19/2023, "tends to isolate at every oppertunity available", 00010)
(00000011, 4/29/2022, "deals with the scars of abuse as a youth", 0008)

INSERT INTO billing_info()