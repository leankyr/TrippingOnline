-- Privileges for user DestinationAdmin
DROP USER IF EXISTS 'DestAd'@'localhost';
CREATE USER 'DestAd'@'localhost' identified by 'pass';

GRANT SELECT ON `Tripping Online`.* TO 'DestAd'@'localhost';

GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.DestinationID TO 'DestAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.DestinationType TO 'DestAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Events TO 'DestAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Entertainment TO 'DestAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Attractions TO 'DestAd'@'localhost';

