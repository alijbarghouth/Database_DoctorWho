USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblDoctor (
	DoctorId INT NOT NULL PRIMARY KEY,
	DoctorNumber INT NOT NULL,
	DoctorName VARCHAR(20) NOT NULL,
	BirthDate DATE,
	FirstEpisodeDate DATE NOT NULL,
	LastEpisodeDate DATE NOT NULL
)
END