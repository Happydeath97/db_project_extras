-- trigger ktery po smazani radku z tabulky student ulozi auditni zaznam do tabulky audit_log
-- v auditnim zaznamu budou tyto informace:  OLD.StudentId, 'Student', 'Delete', now(), user())
-- z techto informaci odhadnete sloupce a datove typy tabulky audit_log

DELIMITER //
CREATE TRIGGER student_delete_trigger
AFTER DELETE ON student
FOR EACH ROW
BEGIN
  INSERT INTO audit_log (StudentId, FullName, ActionMade, LastChange, AuthorizedBY)
  VALUES (OLD.StudentId, OLD.FullName, 'Delete', NOW(), USER());
END //
DELIMITER ;