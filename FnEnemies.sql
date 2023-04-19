CREATE FUNCTION fnEnemies (
	@id INT
)
RETURNS VARCHAR(MAX)
BEGIN
	DECLARE @return_value VARCHAR(MAX)
	SELECT @return_value =  COALESCE(@return_value + ', ','') + EnemyName 
	FROM tblEnemy C JOIN tblEpisodeEnemy E 
	ON C.EnemyId = E.EnemyId
	WHERE E.EpisodeId = @id;
 
    RETURN @return_value
END;