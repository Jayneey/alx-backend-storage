-- Creates a trigger that resets the attribute valid_email
-- only when the email has been changed.
-- @author: Jane Affamuefuna <https://github.com/Jayneey>
DROP TRIGGER IF EXISTS validate_email;
DELIMITER $$
CREATE TRIGGER validate_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    CASE 
      WHEN OLD.email != NEW.email THEN
          SET NEW.valid_email = 0;
      ELSE
          SET NEW.valid_email = NEW.valid_email;
    END CASE;
END $$
DELIMITER ;
