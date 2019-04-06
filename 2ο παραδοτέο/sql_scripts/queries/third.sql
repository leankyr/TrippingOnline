-- Description:Calculate average hotel price for every country in DB
SELECT Avg(Price) as AvgPrice,
       DestinationID.Country
FROM Hotel INNER JOIN DestinationID
ON Hotel.DestinationID=DestinationID.ID
GROUP BY DestinationID.Country;

-- INTO OUTFILE '/var/lib/mysql-files/third.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
