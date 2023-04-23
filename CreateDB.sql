IF NOT EXISTS (
    SELECT
        1
    FROM
        sys.databases
    WHERE
        [name] = 'DoctorWho'
)

BEGIN

    CREATE DATABASE DoctorWho;

END