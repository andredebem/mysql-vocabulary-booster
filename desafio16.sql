USE hr;


DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN

DECLARE quantidade INT;
SELECT COUNT(*) FROM job_history jh WHERE EXISTS (
SELECT * FROM employees e WHERE e.EMPLOYEE_ID = jh.EMPLOYEE_ID AND e.EMAIL = email
) INTO quantidade;
RETURN quantidade;

END $$
DELIMITER ;
