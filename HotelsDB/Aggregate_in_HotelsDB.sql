/* Number of rows in Cities */
SELECT COUNT(*)
  FROM Cities;

/* Number of rows in Clients */
SELECT COUNT(*)
  FROM Clients;

/* Number of clients whose names start from 'M' */
SELECT COUNT(clientName)
  FROM Clients
 WHERE clientName LIKE 'M%';
 
/* The maximum number of stars in Hotels */
SELECT MAX(starsCount) AS highest_rate
  FROM Hotels;
  
 /* The earliest creation date from the Hotels */
SELECT MIN(creationDate) AS oldest_hotel
  FROM Hotels;
  
  /* The average rate of the hotels */ 
SELECT AVG(starsCount)
  FROM Hotels;
    
   /* The sum of clients phone numbers */
SELECT SUM(clientNumber)
  FROM Clients;
     
 /* The number of rooms in hotel #1 */
SELECT hotelID, COUNT(hotelID)
  FROM Rooms
 WHERE hotelID = 1
 GROUP BY hotelID;

SELECT AVG(salary)
  FROM Clients;
  
SELECT MAX(salary)
  FROM Clients;