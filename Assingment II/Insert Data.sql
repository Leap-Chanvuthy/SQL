-- Inserting sample data into Student_Tbl
INSERT INTO Student_Tbl (StudentNo, FirstName, LastName, Sex, DOB, POBCommune, POBDistrict, POBProvince, FatherName, MotherName, Photo, Description, Barcode, Enable, SecCode, Nationality, ExamDate)
VALUES
  (123456789, 'John', 'Doe', 'Male', '1995-05-10', 'Commune A', 'District X', 'Province Y', 'John Doe Sr.', 'Jane Doe', NULL, 'Sample description', 987654321, 1, 'Sec123', 'US', '2023-07-15'),
  (987654321, 'Jane', 'Smith', 'Female', '1998-12-20', 'Commune B', 'District Y', 'Province Z', 'James Smith', 'Emma Smith', NULL, 'Another description', 123456789, 1, 'Sec456', 'UK', '2023-07-15');

-- Inserting sample data into School_Tbl
INSERT INTO School_Tbl (School, Description, Enable)
VALUES
  ('ABC School', 'Sample school description', 1),
  ('XYZ School', 'Another school description', 1);

-- Inserting sample data into Room_Tbl
INSERT INTO Room_Tbl (RoomNo, Description, SchoolID, Enable)
VALUES
  ('101', 'Sample room description', 1, 1),
  ('201', 'Another room description', 2, 1);

-- Inserting sample data into Exam_Tbl
INSERT INTO Exam_Tbl (RoomID, ExamDate, Description, Enable)
VALUES
  (1, '2023-07-15', 'Sample exam description', 1),
  (2, '2023-07-15', 'Another exam description', 1);

-- Inserting sample data into Subject_Tbl
INSERT INTO Subject_Tbl (Subject, Description, Enable)
VALUES
  ('Mathematics', 'Sample subject description', 1),
  ('Science', 'Another subject description', 1);

-- Inserting sample data into ExamDetail_Tbl
INSERT INTO ExamDetail_Tbl (ExamID, StudentID, SubjectID, Score, Enable)
VALUES
  (1, 1, 1, 95.5, 1),
  (1, 2, 2, 88.2, 1),
  (2, 1, 2, 92.7, 1);
