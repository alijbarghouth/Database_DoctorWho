USE DoctorWho

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblEpisodeCompanion (
	EpisodeCompanionId INT NOT NULL PRIMARY KEY,
	EpisodeId INT NOT NULL,
	CompanionId INT NOT NULL,
	CONSTRAINT FK_tblEpisodeCompanion_tblEpisode_EpisodeId
        FOREIGN KEY (EpisodeId)
        REFERENCES tblEpisode(EpisodeId),
    CONSTRAINT FK_tblEpisodeCompanion_tblCompanion_CompanionId
        FOREIGN KEY (CompanionId)
        REFERENCES tblCompanion(CompanionId)
)
END