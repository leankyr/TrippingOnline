-- Description :  Find Destinations in Greece
SELECT City,
       Country
FROM DestinationID 
WHERE Country="Greece";

-- INTO OUTFILE '/var/lib/mysql-files/second.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
