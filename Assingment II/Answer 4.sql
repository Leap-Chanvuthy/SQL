-- 4. ស្វែងរកមុខវិជ្ជាសរុបទាំងអស់សម្រាប់សិស្សដែលត្រូវប្រឡង
SELECT s.FirstName, s.LastName, COUNT(ed.SubjectID) AS TotalSubjects
FROM Student_Tbl s
INNER JOIN ExamDetail_Tbl ed ON s.studentID = ed.StudentID
GROUP BY s.FirstName, s.LastName;
