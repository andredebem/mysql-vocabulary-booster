USE hr;


DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(25))
BEGIN

SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM employees e WHERE EXISTS (
SELECT * FROM jobs j WHERE j.JOB_ID = e.JOB_ID AND j.JOB_TITLE = cargo
);

END $$
DELIMITER ;
