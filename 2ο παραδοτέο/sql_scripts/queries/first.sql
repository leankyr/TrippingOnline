select Address,
       Name,
       Stars,
       Aircondition,
       Price,
       Country,
       City 
From Hotel inner join DestinationID on  Hotel.DestinationID=DestinationID.ID 
where breakfast=1 and stars>=4;

-- INTO OUTFILE '/var/lib/mysql-files/first.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
