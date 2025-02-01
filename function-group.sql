/* FUNÇÕES DE GRUPO */

-- Utilizando as funções AVG e SUM:
SELECT ROUND(AVG(salary), 2), SUM(salary)
FROM employees;


-- Utilizando o MIN e MAX
SELECT MIN(hire_date), MAX(hire_date)
FROM employees;

SELECT MIN(salary), MAX(salary)
FROM employees;

-- COUNT
SELECT COUNT(*)
FROM employees;

SELECT COUNT(commission_pct)
FROM employees;

SELECT COUNT(commission_pct), COUNT(*)
FROM employees;

SELECT COUNT(NVL(commission_pct, 0))
FROM employees;

-- Com o distinct buscando os valores distintos
SELECT COUNT(DISTINCT department_Id)
FROM employees;

SELECT COUNT(department_id)
FROM employees;

-- Funções de grupos e valores nulos
SELECT AVG(NVL(commission_pct,0))
FROM employees;


