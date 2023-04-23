USE DoctorWho;

CREATE TABLE tblEnemy
(
   EnemyId INT PRIMARY KEY,
   EnemyName VARCHAR(20) NOT NULL,
   Description VARCHAR(50)
)
CREATE TABLE tblEpisodeEnemy
(
   EpisodeEnemyId INT PRIMARY KEY,
   EnemyId INT NOT NULL,
   EpisodeId INT NOT NULL
)
CREATE TABLE tblAuthor
(
   AuthorId INT PRIMARY KEY,
   AuthorName VARCHAR(20)
)
CREATE TABLE tblEpisode
(
	EpisodeId INT NOT NULL PRIMARY KEY,
	SeriesNumber INT NOT NULL,
	EpisodeNumber INT NOT NULL,
	Episodetype VARCHAR(20) NOT NULL,
	Title VARCHAR(30) NOT NULL,
	EpsodeDate DATE NOT NULL,
	AuthorId INT NOT NULL,
	DoctorId INT NOT NULL,
	Notes VARCHAR(50)
)
CREATE TABLE tblEpisodeCompanion (
	EpisodeCompanionId INT NOT NULL PRIMARY KEY,
	EpisodeId INT NOT NULL,
	CompanionId INT NOT NULL,
)
CREATE TABLE tblCompanion (
	CompanionId INT NOT NULL PRIMARY KEY,
	CompanionName VARCHAR(20) NOT NULL,
	WhoPlayed VARCHAR(20) NOT NULL
)
CREATE TABLE tblDoctor (
	DoctorId INT NOT NULL PRIMARY KEY,
	DoctorNumber INT NOT NULL,
	DoctorName VARCHAR(20) NOT NULL,
	BirthDate DATE,
	FirstEpisodeDate DATE NOT NULL,
	LastEpisodeDate DATE NOT NULL
)
ALTER TABLE tblEpisodeEnemy
ADD CONSTRAINT FK_tblEpisodeEnemy_tblEpisode_EpisodeId
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisodeEnemy
ADD CONSTRAINT FK_tblEpisodeEnemy_tblEnemy_EnemyId
FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId);

ALTER TABLE tblEpisode
ADD CONSTRAINT FK_tblEpisode_tblAuthor_AuthorId
FOREIGN KEY (AuthorId) REFERENCES tblAuthor(AuthorId);

ALTER TABLE tblEpisode
ADD CONSTRAINT FK_tblEpisode_tblDoctor_DoctorId
FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId);

ALTER TABLE tblEpisodeCompanion
ADD CONSTRAINT FK_tblEpisodeCompanion_tblEpisode_EpisodeId
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId);

ALTER TABLE tblEpisodeCompanion
ADD CONSTRAINT FK_tblEpisodeCompanion_tblCompanion_CompanionId
FOREIGN KEY (CompanionId) REFERENCES tblCompanion(CompanionId);

