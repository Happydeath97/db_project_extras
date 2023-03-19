-- tento view vraci TOP 5 kurzu s nejvice zapsanymi studenty
CREATE VIEW courses_with_most_signed_up_students AS
SELECT scs.CourseId, c.CourseName, COUNT(scs.StudentId) AS num_students
FROM student_course_signup scs JOIN course c ON scs.CourseId = c.CourseId
GROUP BY scs.CourseId ORDER BY num_students DESC LIMIT 5;