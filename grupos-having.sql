/* Criação e manutenção de GRUPOS */
-- Criando grupos usando GROUP BY
SELECT department_id, ROUND(AVG(salary), 2) as media_salarial
FROM employees
GROUP BY department_id
ORDER BY media_salarial;

SELECT department_id, job_id, SUM(salary)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id, job_id;

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_Id;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_Id;

-- Restringindo grupos com o HAVING
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000
ORDER BY department_id;

