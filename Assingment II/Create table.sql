create table Student_Tbl (
	studentID int not null primary key identity (1,1),
	StudentNo bigint,
	FirstName nvarchar(50),
	LastName nvarchar (50),
	Sex nvarchar (20),
	DOB datetime,
	POBCommune nvarchar (50),
	POBDistrict nvarchar(50),
	POBProvince nvarchar (50),
	FatherName nvarchar (50),
	MotherName nvarchar (50),
	Photo varbinary,
	Description nvarchar (255),
	Barcode bigint,
	Enable bit ,
	SecCode nvarchar(50),
	Nationality nvarchar(50),
	ExamDate datetime
);

create table School_Tbl (
	SchoolID int not null primary key identity (1,1),
	School nvarchar (50),
	Description nvarchar (50),
	Enable bit ,
);

create table Room_Tbl (
	RoomID int not null primary key identity (1,1),
	RoomNo nvarchar (50),
	Description nvarchar (50),
	SchoolID int ,
	Enable bit,
	foreign key (SchoolID) references School_Tbl(SchoolID)
);

create table Exam_Tbl (
	ExamID int not null primary key identity (1,1),
	RoomID int,
	ExamDate datetime ,
	Description nvarchar(50),
	Enable bit,
	foreign key (RoomID) references Room_Tbl (RoomID)
);

create table Subject_Tbl (
	SubjectID int not null primary key identity (1,1),
	Subject nvarchar (50),
	Description nvarchar (50),
	Enable bit 
);
create table ExamDetail_Tbl (
	ExamDetailID int not null primary key identity (1,1),
	ExamID int ,
	StudentID int ,
	SubjectID int,
	Score float ,
	Enable bit ,
	foreign key (ExamID) references Exam_Tbl (ExamID),
	foreign key (StudentID) references Student_Tbl (StudentID),
	foreign key (SubjectID) references Subject_Tbl (SubjectID)
);

