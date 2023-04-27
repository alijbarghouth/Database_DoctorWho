
INSERT INTO tblEnemy 
VALUES
   ('Ali','Enemy 1'),
   ('Ahmad','Enemy 2'),
   ('Ayser','Enemy 3'),
   ('Omar','Enemy 4'),
   ('Hamdan','Enemy 5')
;
INSERT INTO tblAuthor
    (AuthorName)
VALUES
    ('Adham'),
	('Saeed'),
	('Mohammad'),
	('Samer'),
	('Jamal')
;
INSERT INTO tblDoctor
     (DoctorName,DoctorNumber,FirstEpisodeDate,LastEpisodeDate,BirthDate)
VALUES
     ('Ali','0559728416','1990-10-15','2020-10-15','2022-10-15'),
     ('Khaled','0559728417','1970-10-8','1990-10-15','1991-10-15'),
     ('Hassan','0559728418','1992-9-9','1990-10-15','1992-10-15'),
     ('Ahmad','0559728419','1994-5-14','1990-10-15','1993-10-15'),
     ('Samer','0559728412','1980-11-12','1990-10-15','1994-10-15')
;
INSERT INTO tblEpisode
     (SeriesNumber,EpisodeNumber,Episodetype,Title,EpsodeDate,DoctorId,AuthorId,Notes)
VALUES
     (12345,45,'type 1','title 1','12/1/1980',1,1,'notes 1'),
     (5989,25,'type 2','title 2','12/1/1981',2,3,'notes 2'),
     (1556,85,'type 3','title 3','12/1/1982',3,2,'notes 2'),
     (1556,265,'type 4','title 4','12/1/1983',5,2,'notes 2'),
     (1455695,455,'type 5','title 5','12/1/1984',4,5,'notes 2')
;
INSERT INTO tblEpisodeEnemy
      (EnemyId,EpisodeId)
VALUES
	  (2,5),
	  (4,4),
	  (5,1),
	  (2,4),
	  (3,3)
;
INSERT INTO tblCompanion
      (CompanionName,WhoPlayed)
VALUES
      ('Ali','Played 1'),
      ('Saeed','Played 2'),
      ('Adham','Played 3'),
      ('Omar','Played 4'),
      ('Ahmad','Played 5')
;
INSERT INTO tblEpisodeCompanion
      (CompanionId,EpisodeId)
VALUES
      (3,4),    
      (2,5),
      (5,5),
      (5,2),
      (2,4)
;