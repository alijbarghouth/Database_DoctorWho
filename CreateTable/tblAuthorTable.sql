USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblAuthor
(
   AuthorId INT PRIMARY KEY IDENTITY(1,1),
   AuthorName VARCHAR(20)
)
END