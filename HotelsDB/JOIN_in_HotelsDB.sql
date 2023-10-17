/* Join common from Cities and Hotels */
    SELECT *
      FROM Cities
INNER JOIN Hotels
        ON Cities.cityID = Hotels.cityID;
        
/* Join all from Cities and common from Hotels */
    SELECT *
      FROM Cities
 LEFT JOIN Hotels
        ON Cities.cityID = Hotels.cityID;
        
/* Join all from Hotels and common from Cities */
    SELECT *
      FROM Cities
RIGHT JOIN Hotels
        ON Cities.cityID = Hotels.cityID;
        
/* Join all from Cities and Hotels */
   (SELECT *
      FROM Cities
 LEFT JOIN Hotels
        ON Cities.cityID = Hotels.cityID)
     UNION ALL       
   (SELECT *
      FROM Cities
RIGHT JOIN Hotels
        ON Cities.cityID = Hotels.cityID);