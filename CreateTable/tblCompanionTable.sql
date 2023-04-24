USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblCompanion (
	CompanionId INT NOT NULL PRIMARY KEY,
	CompanionName VARCHAR(20) NOT NULL,
	WhoPlayed VARCHAR(20) NOT NULL
)
END