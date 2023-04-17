USE DoctorWho;

INSERT INTO tblEnemy 
   (EnemyId,EnemyName,Description)
VALUES
   (1,'Ali','Enemy 1'),
   (2,'Ahmad','Enemy 2'),
   (3,'Ayser','Enemy 3'),
   (4,'Omar','Enemy 4'),
   (5,'Hamdan','Enemy 5')
;



INSERT INTO tblAuthor
    (AuthorId,AuthorName)
VALUES
    (1,'Adham'),
	(2,'Saeed'),
	(3,'Mohammad'),
	(4,'Samer'),
	(5,'Jamal')
;



INSERT INTO tblDoctor
     (DoctorId,DoctorName,DoctorNumber,FirstEpisodeDate,LastEpisodeDate,BirthDate)
VALUES
     (1,'Ali','0559728416','1990-10-15','2020-10-15','2022-10-15'),
     (2,'Khaled','0559728417','1970-10-8','1990-10-15','1991-10-15'),
     (3,'Hassan','0559728418','1992-9-9','1990-10-15','1992-10-15'),
     (4,'Ahmad','0559728419','1994-5-14','1990-10-15','1993-10-15'),
     (5,'Samer','0559728412','1980-11-12','1990-10-15','1994-10-15')
;



INSERT INTO tblEpisode
     (EpisodeId,SeriesNumber,EpisodeNumber,Episodetype,Title,EpsodeDate,DoctorId,AuthorId,Notes)
VALUES
     (1,12345,45,'type 1','title 1','12/1/1980',1,1,'notes 1'),
     (2,5989,25,'type 2','title 2','12/1/1981',2,3,'notes 2'),
     (3,1556,85,'type 3','title 3','12/1/1982',3,2,'notes 2'),
     (4,1556,265,'type 4','title 4','12/1/1983',5,2,'notes 2'),
     (5,1455695,455,'type 5','title 5','12/1/1984',4,5,'notes 2')
;



INSERT INTO tblEpisodeEnemy
      (EpisodeEnemyId,EnemyId,EpisodeId)
VALUES
	  (1,2,5),
	  (2,4,4),
	  (3,5,1),
	  (4,2,4),
	  (5,3,3)
;

INSERT INTO tblCompanion
      (CompanionId,CompanionName,WhoPlayed)
VALUES
      (1,'Ali','Played 1'),
      (2,'Saeed','Played 2'),
      (3,'Adham','Played 3'),
      (4,'Omar','Played 4'),
      (5,'Ahmad','Played 5')
;


INSERT INTO tblEpisodeCompanion
      (EpisodeCompanionId,CompanionId,EpisodeId)
VALUES
      (1,3,4),    
      (2,2,5),
      (3,5,5),
      (4,5,2),
      (5,2,4)
;