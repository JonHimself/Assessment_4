--ARTIST TABLE
--1
SELECT name FROM artist 
ORDER BY name DESC
LIMIT 10;

--2
SELECT name FROM artist 
WHERE name LIKE 'Black%';

--3
SELECT name FROM artist 
WHERE name LIKE '%Black%'


--EMPLOYEE TABLE
--1
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--2
SELECT birth_date FROM employee
ORDER BY birth_date ASC
LIMIT 1;

--INVOICE TABLE
--1
SELECT COUNT(invoice_id) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--2
SELECT AVG(total) FROM invoice;


--MORE JOIN QUERIES
--1
SELECT p.name "Playlist", pl.track_id "Track ID"
FROM playlist p
JOIN playlist_track pl
ON p.playlist_id = pl.playlist_id
WHERE p.name = 'Music';

--2 
SELECT t.name, pl.playlist_id
FROM track t 
JOIN playlist_track pl
ON t.track_id = pl.track_id 
WHERE pl.playlist_id = 5;

--3 
SELECT t.name "Track", p.name "Playlist"
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
JOIN playlist p
ON pl.playlist_id = p.playlist_id;

--4
SELECT t.name "Track", a.title "Album", g.name "Genre"
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
JOIN album a 
ON a.album_id = t.album_id
WHERE g.name IN ('Alternative', 'Alternative & Punk'); 
--used WHERE IN to find two seperate genres. For genre name of 'ALTERNATIVE & PUNK' only,  replace the last statement with: WHERE g.name = 'Alternative & Punk'
