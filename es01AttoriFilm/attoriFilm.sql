/*1- Il nome di tutte le sale di Pisa*/

SELECT Nome
FROM SALE
WHERE Città = 'Pisa';

/*2- Il titolo dei film di F. Fellini prodotti dopo il 1960.*/

SELECT Titolo
FROM FILM
WHERE Regista = 'F. Fellini' AND AnnoProduzione > 1960;

/*- Il titolo e la durata dei film di fantascienza giapponesi o francesi prodotti dopo il 1990*/

SELECT Titolo, Durata
FROM FILM
WHERE (Genere = 'Fantascienza' AND (Nazionalità = 'Giappone' OR Nazionalità = 'Francia')) 
  AND AnnoProduzione > 1990;

/*4- Il titolo dei film di fantascienza giapponesi prodotti dopo il 1990 oppure francesi*/

SELECT Titolo
FROM FILM
WHERE (Genere = 'Fantascienza' AND Nazionalità = 'Giappone' AND AnnoProduzione > 1990) 
   OR (Genere = 'Fantascienza' AND Nazionalità = 'Francia');

/*5- I titolo dei film dello stesso regista di “Casablanca”*/

SELECT Titolo
FROM FILM
WHERE Regista = (SELECT Regista FROM FILM WHERE Titolo = 'Casablanca');

/*6- Il titolo ed il genere dei film proiettati il giorno di Natale 2004*/

SELECT F.Titolo, F.Genere
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
WHERE P.DataProiezione = '2004-12-25';

/*7- Il titolo ed il genere dei film proiettati a Napoli il giorno di Natale 2004*/

SELECT F.Titolo, F.Genere
FROM FILM F
JOIN PROIEZIONI P ON F.CodFilm = P.CodFilm
JOIN SALE S ON P.CodSala = S.CodSala
WHERE P.DataProiezione = '2004-12-25' AND S.Città = 'Napoli';




