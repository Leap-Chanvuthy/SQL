
-- 1. ស្វែងរក subjects ទាំងអស់ដែលសិស្សត្រូវប្រលង
SELECT s.FirstName, s.LastName, sj.Subject
FROM ExamDetail_Tbl ed
RIGHT JOIN Student_Tbl s ON s.studentID = ed.StudentID
RIGHT JOIN Subject_Tbl sj ON ed.SubjectID = sj.SubjectID;

