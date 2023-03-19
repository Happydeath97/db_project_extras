CREATE TABLE course (
  CourseId INT PRIMARY KEY,
  CourseName VARCHAR(255),
  TrainerId INT,
  CONSTRAINT `Trainer_FK` FOREIGN KEY (`TrainerId`) REFERENCES `trainer` (TrainerId)
);