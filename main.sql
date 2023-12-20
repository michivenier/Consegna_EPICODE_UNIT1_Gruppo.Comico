CREATE TABLE AEROPORTO (
    Citta TEXT, 
    Nazione TEXT, 
    NumPiste INT
);

INSERT INTO AEROPORTO VALUES ('Roma', 'Italia', 3);
INSERT INTO AEROPORTO VALUES ('Parigi', 'Francia', 4);
INSERT INTO AEROPORTO VALUES ('Londra', 'Regno Unito', 5);
INSERT INTO AEROPORTO VALUES ('New York', 'Stati Uniti', NULL);
INSERT INTO AEROPORTO VALUES ('Berlino', 'Germania', 2);
INSERT INTO AEROPORTO VALUES ('Tokyo', 'Giappone', 6);
INSERT INTO AEROPORTO VALUES ('Madrid', 'Spagna', NULL);
INSERT INTO AEROPORTO VALUES ('Pechino', 'Cina', 4);
INSERT INTO AEROPORTO VALUES ('Sydney', 'Australia', 3);
INSERT INTO AEROPORTO VALUES ('Toronto', 'Canada', NULL);

#DROP TABLE AEROPORTO;

CREATE TABLE VOLO (
    IdVolo TEXT NOT NULL,
    GiornoSett TEXT,
    CittaPart TEXT,
    OraPart TIME,
    CittaArr TEXT,
    OraArr TIME,
    TipoAereo TEXT
);

INSERT INTO VOLO 
VALUES  
    ('AZ274', 'Lunedì', 'Roma', '08:00:00', 'Bologna', '09:30:00', 'Boeing 737'),
    ('AZ275', 'Martedì', 'Milano', '10:15:00', 'Bologna', '11:45:00', 'Airbus A320'),
    ('AZ276', 'Mercoledì', 'Firenze', '12:30:00', 'Bologna', '14:00:00', 'Boeing 747'),
    ('AZ277', 'Giovedì', 'Napoli', '15:45:00', 'Bologna', '17:15:00', 'Boeing 787'),
    ('AZ278', 'Venerdì', 'Torino', '18:00:00', 'Bologna', '19:30:00', 'Airbus A330');

#DROP TABLE VOLO;

CREATE TABLE AEREO (
    TipoAereo TEXT,
    NumPasseggeri INT,
    QtaMerci INT
);

INSERT INTO AEREO
VALUES
    ('Boeing 737', 150, 20),
    ('Airbus A320', 180, 25),
    ('Boeing 747', 400, 40),
    ('Boeing 787', 250, 30),
    ('Airbus A330', 300, 35);

#DROP TABLE AEREO;