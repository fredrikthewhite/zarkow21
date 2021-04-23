-- skapar en ny bilkontroll
USE CarRental;

INSERT INTO bilkontroll (kontrolNr, regNr, personNr, korstracka, tidpunkt, godkand, kommentar)
values (12345, "ABC123", 8505271234, 12, 2021-04-21-11-35-00, False, kommentar);

-- kraschar pga. fel format vid datetime