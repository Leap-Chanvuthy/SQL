--3. ស្វែងរកបន្ទប់ប្រលង(rooms) ទាំងអស់ដែលសិស្សមកប្រឡង
SELECT DISTINCT r.RoomNo
FROM Room_Tbl r
INNER JOIN Exam_Tbl et ON r.RoomID = et.RoomID
INNER JOIN ExamDetail_Tbl ed ON et.ExamID = ed.ExamID;
