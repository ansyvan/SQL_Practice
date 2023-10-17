
/* Amount of hotels of every star rate */
SELECT COUNT(hotelName), MAX(starsCount)
  FROM Hotels
 GROUP BY starsCount;

/* Amount of clients with the same salary */
SELECT COUNT(salary), salary
  FROM Clients
 GROUP BY salary;
 
/* Clients under 30 y.o. grouped by age */
SELECT COUNT(age), age
  FROM Clients
 GROUP BY age
HAVING age < 30;

/* Clients ordered by name */
SELECT *
  FROM Clients
 ORDER BY clientName;
 
/* Clients ordered by age from the oldest to the youngest */
SELECT *
  FROM Clients
 ORDER BY age DESC;
 
/* Clients ordered by salary starting from the smallest */
SELECT *
  FROM Clients
 ORDER BY salary ASC;
 
/* 5 Clients with the largest salaries */
SELECT *
  FROM Clients
 ORDER BY salary DESC LIMIT 5;
 
/* 1 Client who is the third oldest person */
SELECT clientName, age
  FROM Clients
 ORDER BY age DESC LIMIT 1 OFFSET 2;