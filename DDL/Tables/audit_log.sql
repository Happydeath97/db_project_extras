-- vice informaci o pozadavcich na tabulku vyctete z komentare pro trigger ulozeneho v
-- project/db_project_extras/DDL/Programmability/Triggers/tr_student_after_delete_audit_log.sql
-- tato auditni tabule nemusi byt soucasti diagramu
CREATE TABLE audit_log (
  StudentId INT,
  FullName VARCHAR(255),
  ActionMade VARCHAR(255),
  LastChange DATETIME,
  AuthorizedBY VARCHAR(255)
);