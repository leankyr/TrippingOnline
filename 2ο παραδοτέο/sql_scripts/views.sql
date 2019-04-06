-- First Example : A View containing group general info ,
-- produced by joining smaller tables
CREATE VIEW GroupInfo AS
SELECT Groups.AvailablePositions,
       Groups.Price,
       Group_Destination.start_date,
       Group_Destination.return_date,
       DestinationID.Country,
       DestinationID.City
FROM Groups INNER JOIN Group_Destination
ON Groups.ID=Group_Destination.GroupID
INNER JOIN DestinationID
ON DestinationID.ID=Group_Destination.DestinationID;

-- Second Example : A View Containing available places to stay (Hotels and Campings)
CREATE VIEW HotelsAndCampings AS
SELECT Camping.Name,
       Camping.Price,
       Camping.Address,
       DestinationID.City,
       DestinationID.Country
FROM Camping INNER JOIN DestinationID
ON Camping.DestinationID=DestinationID.ID
UNION 
SELECT Hotel.Name,
       Hotel.Price,
       Hotel.Address,
       DestinationID.City,
       DestinationID.Country
FROM Hotel INNER JOIN DestinationID
ON Hotel.DestinationID=DestinationID.ID;

-- Thrid Example : A View Containing all available info on Transports 
CREATE VIEW TransportInfo AS
SELECT Transport_Destination.From_city,
       Transport_Destination.From_Country,
       DestinationID.City,
       DestinationID.Country,
       Transport_Destination.TransportDate,
       Transport_Destination.Price,
       Transport.Type
FROM Transport INNER JOIN Transport_Destination
ON Transport.TransportID=Transport_Destination.TransportID
INNER JOIN DestinationID 
ON DestinationID.ID=Transport_Destination.DestinationID;

-- Fourth Example : A View is used in order to calculate age from date of birth
CREATE VIEW v_TravelersAge AS
SELECT ID,
       Name,
       Surname,
       Gender,
       (DATEDIFF(Current_Date(),DateOfBirth)) DIV 365 as Age
FROM Traveler;
