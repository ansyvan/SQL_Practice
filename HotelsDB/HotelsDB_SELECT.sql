/* select all from Clients */
SELECT * FROM Clients;

/* select two columns only */
SELECT 	clientName, clientNumber 
FROM Clients;

/* select data for Mariia only */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientName = 'Mariia';

/* select data for all clients whose name starts with 'M' */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientName LIKE 'M%';

/* select data for all clients whose name ends with 'a' */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientName LIKE '%a';

/* select data for all clients whose name contains 'ii' */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientName LIKE '%ii%';

/* select data for all cliets whose phone number contains '050' */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientNumber LIKE '%050%';

/* select data for all clients whose phone number is less than 3809900000000 and more than 1 */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientNumber < 380990000000
    AND clientNumber > 1;

/* select data for all clients whose phone number is less than 3809900000000 and more than 3805500000000 */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientNumber < 380990000000
    AND clientNumber > 380550000000;

/* select data for all clients whose phone number is 380667778866 or 380936758412 */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientNumber = 380667778866
  	 OR clientNumber = 380936758412;

/* select data for all clients whose phone number is NOT 380667778866 */
 SELECT clientName, clientNumber 
   FROM Clients 
  WHERE clientNumber <> 380667778866;