-- Desciption = Find Destinations who can be reached by Ship
SELECT Transport_Destination.Price,  
       Transport_Destination.TransportDate,
       Transport_Destination.From_city , 
       Transport_Destination.From_country ,
       Transport.Type,
       Transport_Destination.DestinationID,
       DestinationID.City,
       DestinationID.Country
FROM Transport_Destination 
INNER JOIN Transport
ON Transport_Destination.TransportID=Transport.TransportID
INNER JOIN DestinationID ON DestinationID.ID=Transport_Destination.DestinationID
WHERE Transport.Type = 'Ship';

-- INTO OUTFILE '/var/lib/mysql-files/ninth.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
