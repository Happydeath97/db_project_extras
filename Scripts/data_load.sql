-- zde budou insert statements pro vsechny tabulky v projektu
INSERT INTO student (StudentId, FullName) VALUES 
(1, 'student prvni'), 
(2, 'student druhy'), 
(3, 'student treti'), 
(4, 'student ctvrty'), 
(5, 'student paty'),
(6, 'student sesty'), 
(7, 'student sedmy'), 
(8, 'student osmy'), 
(9, 'student devaty'),
(10, 'student desaty'), 
(11, 'student jedenacty'), 
(12, 'student dvanacty'), 
(13, 'student trinacty');

INSERT INTO trainer (TrainerId, FullName) VALUES
(1, 'trener prvni'),
(2, 'trener druhy'),
(3, 'trener treti'),
(4, 'trener ctvrty'),
(5, 'trener paty'),
(6, 'trener sesty');

INSERT INTO course (CourseId, CourseName, TrainerId) VALUES 
(1, 'course 1', 1),
(2, 'course 2', 2),
(3, 'course 3', 1),
(4, 'course 4', 2),
(5, 'course 5', 3),
(6, 'course 6', 4),
(7, 'course 7', 5),
(8, 'course 8', 6);

INSERT INTO student_course_signup (StudentId, CourseId) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
(3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
(4, 1), (4, 3), (4, 5), (4, 7), (4, 8),
(5, 1), (5, 4), (5, 5), (5, 6), (5, 7),
(6, 4), (6, 8), (6, 1), (6, 2), (6, 3),
(7, 5), (7, 3), (7, 1), (7, 6), (7, 7),
(8, 4), (8, 1), (8, 6), (8, 5), (8, 2),
(9, 7), (9, 1), (9, 2), (9, 8), (9, 6),
(10, 5), (10, 4), (10, 3), (10, 1), (10, 8),
(11, 3), (11, 2), (11, 4), (11, 8), (11, 1),
(12, 3), (12, 1), (12, 2), (12, 6), (12, 7),
(13, 2), (13, 1), (13, 5), (13, 7), (13, 3);