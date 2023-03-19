-- zde ulozte par SELECT dotazu vyuzivajicich JOIN, prip. UNION nad tabulkami v projektu
-- select all courses and trainers names for student 
SELECT s.FullName AS student_name, c.CourseName AS course, t.FullName AS trainer_name
FROM student s JOIN student_course_signup scs ON s.StudentId = scs.StudentId
JOIN course c ON scs.CourseId = c.CourseId
JOIN trainer t ON c.TrainerId = t.TrainerId;

-- get ID and name of all student in history
SELECT StudentId, FullName
FROM student
UNION
SELECT StudentId, FullName
FROM audit_log;

-- get name of student who does nto study course 1
WITH student_on_course_1 AS (
  SELECT StudentId
  FROM student_course_signup
  WHERE CourseId = 1
)
SELECT s.FullName AS student_name 
FROM student_on_course_1 RIGHT JOIN student s ON student_on_course_1.StudentId = s.StudentId 
WHERE student_on_course_1.StudentId IS NULL; 