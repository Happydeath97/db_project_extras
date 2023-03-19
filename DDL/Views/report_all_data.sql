-- tento reportovaci view vraci vsechny vhodne aliasovane sloupce ze vsech tabulek v projektu spojenych pomoci odpovidajicich JOINu
CREATE VIEW report_all_data AS
SELECT 
  s.StudentId,
  s.FullName AS student_name,
  scs.CourseId,
  c.CourseName,
  c.TrainerId,
  t.FullName AS trainer_name,
  NULL AS ActionMade,
  NULL AS LastChange,
  NULL AS AuthorizedBy
FROM student s JOIN student_course_signup scs ON s.StudentId = scs.StudentId
JOIN course c ON scs.CourseId = c.CourseId
JOIN trainer t ON c.TrainerId = t.TrainerId
UNION
SELECT
  StudentId AS StudentId, 
  FullName AS student_name,
  NULL AS CourseId,
  NULL AS CourseName,
  NULL AS TrainerId,
  NULL AS trainer_name,
  ActionMade,
  LastChange,
  AuthorizedBy
FROM audit_log;