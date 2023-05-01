USE DoctorWho
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW viewEpisodes AS
     SELECT 
        EpisodeId, Title, AuthorName, DoctorName,
        dbo.fnCompanions(EpisodeId) AS Companions, dbo.fnEnemies(EpisodeId) AS Enemies
     FROM 
        tblEpisode E
     JOIN 
        tblDoctor D ON E.DoctorId = D.DoctorId
     JOIN 
        tblAuthor A ON E.AuthorId = A.AuthorId;