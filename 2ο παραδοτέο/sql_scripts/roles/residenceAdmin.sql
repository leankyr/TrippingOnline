-- Privileges for user GroupAdmin
DROP USER IF EXISTS 'ResidenceAd'@'localhost';
CREATE USER 'ResidenceAd'@'localhost' identified by 'pass';

GRANT SELECT  ON `Tripping Online`.* TO 'ResidenceAd'@'localhost';

GRANT INSERT, UPDATE, DELETE  ON `Tripping Online`.Camping TO 'ResidenceAd'@'localhost';
GRANT INSERT, UPDATE, DELETE  ON `Tripping Online`.Hotel TO 'ResidenceAd'@'localhost';
