USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblCompanion')
BEGIN
CREATE TABLE tblCompanion (
	CompanionId INT PRIMARY KEY IDENTITY(1,1),
	CompanionName VARCHAR(20) NOT NULL,
	WhoPlayed VARCHAR(20) NOT NULL
)
END