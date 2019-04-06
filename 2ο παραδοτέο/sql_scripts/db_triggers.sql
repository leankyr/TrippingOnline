DELIMITER $$
CREATE TRIGGER updatePositions BEFORE INSERT ON Group_Traveler
FOR EACH ROW
BEGIN
  DECLARE positions Integer;

  SELECT AvailablePositions INTO positions
  FROM Groups
  WHERE Groups.ID=NEW.GroupID;

  IF (positions>=1) THEN
    UPDATE Groups
    SET Groups.AvailablePositions=Groups.AvailablePositions-1
    WHERE Groups.ID=NEW.GroupID;

  ELSE 
    SIGNAL sqlstate '45001' set message_text = "There is no space left in selected Group";
  END IF;
END$$
DELIMITER ;

