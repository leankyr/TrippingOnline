-- Role 1: Traveler user
DROP USER IF EXISTS 'traveler'@'localhost';
CREATE USER 'traveler'@'localhost' identified by 'pass';

GRANT SELECT ON `Tripping Online`.Attractions TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Camping TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.DestinationID TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.DestinationType TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Entertainment TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Events TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Group_Guides TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Guide TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Groups TO 'traveler'@'localhost'; -- tote gt opsi apo katw
GRANT SELECT ON `Tripping Online`.Guide_Language TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Guide_Specialities TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Hotel TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Guide_Specialities TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Group_Destination TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Transport TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.Transport_Destination TO 'traveler'@'localhost';

GRANT INSERT,UPDATE,DELETE ON `Tripping Online`.Traveler TO 'traveler'@'localhost';
GRANT INSERT,UPDATE,DELETE ON `Tripping Online`.Traveler_Destination TO 'traveler'@'localhost';
GRANT INSERT,UPDATE,DELETE  ON `Tripping Online`.Group_Traveler TO 'traveler'@'localhost';

-- Privilleges Granted on Views for user Traveler
GRANT SELECT ON `Tripping Online`.GroupInfo TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.HotelsAndCampings TO 'traveler'@'localhost';
GRANT SELECT ON `Tripping Online`.TransportInfo TO 'traveler'@'localhost';
