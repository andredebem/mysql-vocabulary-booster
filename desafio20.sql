USE hr;


DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN

SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo', d.DEPARTMENT_NAME as 'Departamento', j.JOB_TITLE AS'Cargo' FROM employees e INNER JOIN departments d INNER JOIN jobs j WHERE EXISTS (
SELECT * FROM job_history jh WHERE e.EMAIL = email AND jh.DEPARTMENT_ID = d.DEPARTMENT_ID AND jh.JOB_ID = j.JOB_ID AND jh.EMPLOYEE_ID = e.EMPLOYEE_ID
)
ORDER BY Departamento, Cargo;

END $$
DELIMITER ;
