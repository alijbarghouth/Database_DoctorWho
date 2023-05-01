USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblDoctor')
BEGIN
CREATE TABLE tblDoctor (
	DoctorId INT PRIMARY KEY IDENTITY(1,1),
	DoctorNumber INT NOT NULL,
	DoctorName VARCHAR(20) NOT NULL,
	BirthDate DATE,
	FirstEpisodeDate DATE NOT NULL,
	LastEpisodeDate DATE NOT NULL
)
END