-- tento view vraci trenery kteri vyucuji alespon 2 kurzy
CREATE VIEW trainers_teaching_atleast_2_courses AS
SELECT c.TrainerId, t.FullName, COUNT(*) AS num_of_teaching_courses
FROM course c JOIN trainer t ON c.TrainerId = t.TrainerId
GROUP BY c.TrainerId HAVING COUNT(*) >= 2;