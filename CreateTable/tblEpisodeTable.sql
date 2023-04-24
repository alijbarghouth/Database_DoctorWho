USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblEpisode
(
	EpisodeId INT NOT NULL PRIMARY KEY,
	SeriesNumber INT NOT NULL,
	EpisodeNumber INT NOT NULL,
	Episodetype VARCHAR(20) NOT NULL,
	Title VARCHAR(30) NOT NULL,
	EpsodeDate DATE NOT NULL,
	AuthorId INT NOT NULL,
	DoctorId INT,
	Notes VARCHAR(50),
	CONSTRAINT FK_tblEpisode_tblDoctor_DoctorId
        FOREIGN KEY (DoctorId)
        REFERENCES tblDoctor(DoctorId),
   CONSTRAINT FK_tblEpisode_tblAuthor_AuthorId
        FOREIGN KEY (AuthorId)
        REFERENCES tblAuthor(AuthorId)
)
END