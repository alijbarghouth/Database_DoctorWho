USE DoctorWho;

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tblEnemy')
BEGIN
   CREATE TABLE tblEnemy
   (
      EnemyId INT PRIMARY KEY,
      EnemyName VARCHAR(20) NOT NULL,
      Description VARCHAR(50)
   )
END