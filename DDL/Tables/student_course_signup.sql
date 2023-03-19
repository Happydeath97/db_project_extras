CREATE TABLE student_course_signup (
  StudentId INT,
  CourseId INT,
  CONSTRAINT `StudentCourseSignup_FK1` FOREIGN KEY (`StudentId`) REFERENCES `student` (StudentId),
  CONSTRAINT `StudentCourseSignup_FK2` FOREIGN KEY (`CourseId`) REFERENCES `course` (CourseId)
);