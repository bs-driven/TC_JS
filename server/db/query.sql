SELECT *
FROM clients
JOIN doctor ON clients.doc_id = doctor.id;

SELECT *
FROM notes
JOIN clients ON notes.client_id = client.id;

SELECT *
FROM billing_info
JOIN clients ON billing_info.client_id = client.id,