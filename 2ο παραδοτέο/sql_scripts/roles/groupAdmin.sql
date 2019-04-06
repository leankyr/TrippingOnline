-- Privileges for user GroupAdmin
DROP USER IF EXISTS 'GroupAd'@'localhost';
CREATE USER 'GroupAd'@'localhost' identified by 'pass';

GRANT SELECT  ON `Tripping Online`.* TO 'GroupAd'@'localhost';

GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Group_Traveler TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Group_Guides TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Guide TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Groups TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Guide_Language TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Guide_Specialities TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.AvailableLanguages TO 'GroupAd'@'localhost';
GRANT INSERT, UPDATE, DELETE ON `Tripping Online`.Specialities TO 'GroupAd'@'localhost';

