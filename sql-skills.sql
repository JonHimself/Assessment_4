--ARTIST TABLE
-- Add 3 Artists
INSERT INTO artist (name)
VALUES ('Tom Macdonald'), ('NF'), ('Spiritbox'), ('Ben Seibert');

--5 Artists Aplhabetical
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;


--EMPLOEE TABLE
--All employee first and last names in Calgary
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

--Who reports to Nancy Edwards?
Select * FROM employee -- Nancy code = 2

SELECT first_name, last_name FROM employee
WHERE reports_to = 2; 

--Count how many people live in Lethbridge
SELECT COUNT(employee_id) FROM employee
WHERE city = 'Lethbridge';


--INVOICE TABLE
--Count orders in the USA
SELECT COUNT(invoice_id) FROM invoice
WHERE billing_country = 'USA';

--Largest total?
SELECT total FROM invoice
ORDER BY total DESC
LIMIT 1;

--Smallest total?
SELECT total FROM invoice
ORDER BY total ASC
LIMIT 1;

--All orders bigger than $5
SELECT total FROM invoice
WHERE total > 5;

--Count all orders less thanb $5
SELECT COUNT(invoice_id) FROM invoice
WHERE total < 5;

--SUM of orders
SELECT SUM(total) FROM invoice;

--JOIN QUERIES 
--Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT i.invoice_id, il.unit_price 
FROM invoice i
JOIN invoice_line il 
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99;

--Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT c.first_name, c.last_name, i.invoice_date, i.total 
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table
SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", c.support_rep_id "Rep ID", e.first_name "Rep First Name", e.last_name "Rep Last Name"
FROM customer c
JOIN employee e 
ON c.support_rep_id = e.employee_id;

--Get the album title and the artist name from all albums.
SELECT a.name, al.title
FROM artist a 
JOIN album al
ON a.artist_id = al.artist_id;