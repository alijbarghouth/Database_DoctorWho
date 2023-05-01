USE DoctorWho;

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN	
	SELECT 
	   TOP 3 CompanionName, COUNT(*) AS CompanionCount
	FROM 
	   tblEpisodeCompanion EC  JOIN tblCompanion C
	ON 
	   C.CompanionId = EC.CompanionId 
	GROUP BY CompanionName
	ORDER BY COUNT(*) DESC;

	SELECT  
	   TOP 3 EnemyName, COUNT(*) AS EnemyCount
	FROM 
	   tblEpisodeEnemy EE  JOIN tblEnemy E  ON E.EnemyId = EE.EnemyId 
	GROUP BY EnemyName
	ORDER BY COUNT(*) DESC;
END;