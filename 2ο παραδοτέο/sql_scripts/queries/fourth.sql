-- Description : Show Guides who can speak English and Specialize in Modern
--  History (LIKE)
SELECT Guide.Name,
       Guide.Surname,
       Guide.Gender,
       Guide_Specialities.Speciality,
       Guide_Language.Language
FROM Guide INNER JOIN Guide_Language
ON Guide.ID=Guide_Language.ID
INNER JOIN Guide_Specialities
ON Guide.ID=Guide_Specialities.ID
WHERE Language="English" AND Speciality LIKE '%Modern%';

-- INTO OUTFILE '/var/lib/mysql-files/fourth.csv' 
-- FIELDS ENCLOSED BY '"' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '\n';
