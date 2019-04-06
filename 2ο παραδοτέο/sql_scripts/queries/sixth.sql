Select Name,Address,EventTime,EventDate,City
from Events inner join DestinationID 
on Events.DestinationID=DestinationID.ID
where EventDate>'2016-03-12' and DestinationID.Country='Greece';

-- INTO OUTFILE '/var/lib/mysql-files/sixth.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
