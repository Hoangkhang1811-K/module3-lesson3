use quanlysinhvien;

select StudentId,StudentName from student
where StudentName like 'h%';
SELECT *
FROM `Class`
WHERE MONTH(StartDate) = 12;
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;
/*  doi class id*/
UPDATE Student
SET ClassId = '2'
WHERE StudentId = '1';


SELECT s.StudentName, sub.SubName, m.Mark
FROM Mark m
JOIN Student s ON m.StudentId = s.StudentId
JOIN Subject sub ON m.SubId = sub.SubId
ORDER BY m.Mark DESC, s.StudentName ASC;