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

/*5- I titolo dei film dello stesso regista di “Casablanca”

