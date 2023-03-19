-- stored procedure ktera umozni vymazat zaznam z tabule student podle zadaneho parametru
DELIMITER //
CREATE PROCEDURE delete_student(IN student_id INT)
BEGIN
  DELETE FROM student_course_signup WHERE StudentId = student_id;
  DELETE FROM student WHERE StudentId = student_id;
END //
DELIMITER ;