INSERT INTO artist(name)
VALUES ('Crazy Frog'),
('Wierd Al'),
('Nate Wants To Battle');

SELECT * FROM artist
ORDER BY name LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

SELECT * FROM invoice
WHERE invoice_id IN (
	SELECT invoice_id FROM invoice_line
  WHERE unit_price > .99
);

SELECT invoice_date, first_name, last_name, total from invoice
	JOIN customer
  	ON customer.customer_id = invoice.customer_id;

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name from customer
	JOIN employee
  	ON customer.support_rep_id = employee.employee_id;

SELECT title, name from album
	JOIN artist
  	ON album.artist_id = artist.artist_id;

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT MIN(birth_date) FROM employee;

SELECT MAX(birth_date) FROM employee;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT track_id from playlist_track
	JOIN playlist
  		ON playlist_track.playlist_id = playlist.playlist_id
    	WHERE name = 'Music';

SELECT name from track
	JOIN playlist_track
  		ON track.track_id = playlist_track.track_id
    	WHERE playlist_id = 5;

SELECT track.name, playlist.name from playlist_track
	JOIN track
  		ON track.track_id = playlist_track.track_id
  	JOIN playlist
  		ON playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name, album.title from track
	JOIN album
  		ON track.album_id = album.album_id
  	JOIN genre
  		ON genre.genre_id = track.genre_id
  		WHERE genre.name = 'Alternative & Punk';