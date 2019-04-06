-- Privileges for user TransportAdmin
DROP USER IF EXISTS 'TransportAd'@'localhost';
CREATE USER 'TransportAd'@'localhost' identified by 'pass';

GRANT SELECT  ON `Tripping Online`.* TO 'TransportAd'@'localhost';

GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Transport TO 'TransportAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Transport_Destination TO 'TransportAd'@'localhost';
