-- Description : Show Destinations with many Attractions
SELECT DestinationID.City,
       DestinationID.Country,
       COUNT(Attractions.Name) AS AttractionCount
FROM Attractions INNER JOIN DestinationID
ON Attractions.DestinationID=DestinationID.ID
GROUP BY DestinationID.ID
HAVING COUNT(Attractions.Name)>5;
