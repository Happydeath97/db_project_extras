-- tento view vraci TOP 3 trenery s nejvetsim dosahem studentu,
-- jinymi slovy trenery, kteri vyucuji kurzy s nejvetsim poctem zapsanych studentu
CREATE VIEW trainers_with_highest_student_outreach AS
SELECT t.TrainerId, t.FullName, SUM(subquery.num_students) AS total_students
FROM trainer t JOIN
  (SELECT c.TrainerId, COUNT(scs.StudentId) AS num_students
   FROM student_course_signup scs JOIN course c ON scs.CourseId = c.CourseId
   GROUP BY c.TrainerId, scs.CourseId) AS subquery
ON t.TrainerId = subquery.TrainerId
GROUP BY t.TrainerId ORDER BY total_students DESC LIMIT 3;