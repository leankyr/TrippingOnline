-- Privileges for user SupervisonAdmin
DROP USER IF EXISTS 'SuperAd'@'localhost';
CREATE USER 'SuperAd'@'localhost' identified by 'pass';

GRANT SELECT,INSERT , UPDATE , DELETE ON `Tripping Online`.*  TO 'SuperAd'@'localhost';
