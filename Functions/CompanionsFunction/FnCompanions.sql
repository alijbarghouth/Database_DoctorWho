CREATE FUNCTION fnCompanions (
	@id INT
)
RETURNS VARCHAR(MAX)
BEGIN
	DECLARE @return_value VARCHAR(MAX)
	SELECT
		@return_value = COALESCE(@return_value + ', ','') + CompanionName 
	FROM
		tblCompanion C
	JOIN tblEpisodeCompanion E 
		ON C.CompanionId = E.CompanionId
	WHERE
		E.EpisodeId = @id;
END;
