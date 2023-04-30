USE DoctorWho;
DELETE C
FROM tblCompanion C
LEFT JOIN tblEpisodeCompanion E ON C.CompanionId = E.CompanionId
WHERE E.EpisodeCompanionId IS NULL;
