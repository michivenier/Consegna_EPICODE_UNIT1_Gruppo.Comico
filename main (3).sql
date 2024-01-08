CREATE TABLE vendite (
    ID_transazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(50),
    costo DECIMAL(10, 2),
    sconto DECIMAL(5, 2)
);
CREATE TABLE dettagli_vendite (
    ID_transazione INT,
    data_transazione DATE,
    quantita INT,
    FOREIGN KEY (ID_transazione) REFERENCES vendite(ID_transazione)
);
INSERT INTO vendite (ID_transazione, categoria_prodotto, costo, sconto)
VALUES
    (1, 'Elettronica', 99.99, 10.00),
    (2, 'Abbigliamento', 49.99, 5.00),
    (40, 'Casa', 199.99, 15.00);

INSERT INTO dettagli_vendite (ID_transazione, data_transazione, quantita)
VALUES
    (1, '2023-12-15', 1),
    (2, '2023-12-15', 2),
    (40, '2023-12-30', 3);
SELECT *
FROM vendite v
JOIN dettagli_vendite dv ON v.ID_transazione = dv.ID_transazione
WHERE dv.data_transazione = '2023-12-15';
SELECT categoria_prodotto, SUM(costo) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;

SELECT categoria_prodotto, SUM(quantita) AS totale_prodotti
FROM dettagli_vendite dv
JOIN vendite v ON dv.ID_transazione = v.ID_transazione
GROUP BY categoria_prodotto;

SELECT categoria_prodotto, AVG(sconto) AS sconto_medio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY sconto_medio DESC
LIMIT 1;

SELECT MONTH(data_transazione) AS mese,
       SUM(costo) AS vendite_mese,
       LAG(SUM(costo)) OVER (ORDER BY MONTH(data_transazione)) AS vendite_mese_precedente
FROM vendite v
JOIN dettagli_vendite dv ON v.ID_transazione = dv.ID_transazione
GROUP BY MONTH(data_transazione);

SELECT QUARTER(data_transazione) AS stagione, SUM(costo) AS vendite_stagione
FROM vendite v
JOIN dettagli_vendite dv ON v.ID_transazione = dv.ID_transazione
GROUP BY stagione;
