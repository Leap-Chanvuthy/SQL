-- 2. ស្វែងរក student និង school ទាំងអស់ដែលសិស្សមកប្រលង
SELECT s.FirstName, s.LastName, sc.School
FROM Student_Tbl s
INNER JOIN ExamDetail_Tbl ed ON s.studentID = ed.StudentID
INNER JOIN Exam_Tbl et ON et.ExamID = ed.ExamID
INNER JOIN Room_Tbl r ON r.RoomID = et.RoomID
INNER JOIN School_Tbl sc ON sc.SchoolID = r.SchoolID;
