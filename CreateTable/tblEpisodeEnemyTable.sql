USE DoctorWho;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
CREATE TABLE tblEpisodeEnemy
(
   EpisodeEnemyId INT PRIMARY KEY IDENTITY(1,1),
   EnemyId INT NOT NULL,
   EpisodeId INT NOT NULL,
   CONSTRAINT FK_tblEpisodeEnemy_tblEpisode_EpisodeId
        FOREIGN KEY (EpisodeId)
        REFERENCES tblEpisode(EpisodeId),
   CONSTRAINT FK_tblEpisodeEnemy_tblEnemy_EnemyId
        FOREIGN KEY (EnemyId)
        REFERENCES tblEnemy(EnemyId)
)
END