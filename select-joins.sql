/* MÚLTIPLAS TABELAS */
-- Usamos o alias para reduzir ambiguidade
SELECT a.employee_id, a.last_name,
    a.department_id, b.department_name
FROM employees a JOIN departments b
    ON (a.department_id = b.department_id);
    
-- Uso do NATURAL JOIN
SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations;

-- Uso do USING
SELECT department_id, department_name, location_id, city
FROM departments
JOIN locations USING (location_id); 

SELECT c.employee_id, c.last_name, d.location_id, department_id,
    d.department_name
FROM employees c
JOIN departments d USING (department_id);

-- Join com a cláusula ON
SELECT a.first_name, a.last_name, a.department_id, b.department_name
FROM employees a
    JOIN departments b ON a.department_id = b.department_id;
    
SELECT a.department_name, a.manager_id, b.location_id, b.street_address, b.city 
FROM departments a
JOIN locations b ON a.location_id = b.location_id;

-- JOIN utilizando várias tabelas com a cláusula ON
SELECT e.employee_id, j.job_title, d.department_name, l.city,
    l.state_province, l.country_id
FROM employees e
    JOIN jobs           j ON e.job_id = j.job_id
    JOIN departments    d ON e.department_id = d.department_id
    JOIN locations      l ON d.location_id = l.location_id
ORDER BY e.employee_id;    


-- Incluindo condições adicionais a condição de Join na cláusula WHERE 
SELECT e.employee_id, e.last_name, e.salary, e.department_id, d.department_name
FROM employees e
    JOIN departments d
    ON (e.department_id = d.department_id)
    WHERE (e.salary BETWEEN 10000 AND 15000);
    
-- Incluindo condições adicionais e condição de join utilizando AND
SELECT e.employee_id, e.last_name, e.salary, e.department_id, d.department_name
FROM employees e JOIN departments d
ON (e.department_id = d.department_id) AND
    (e.salary BETWEEN 10000 AND 15000);
    
-- SELF JOIN utilizando a cláusula ON
SELECT empregado.employee_id "Id empregado",
    empregado.last_name "Sobrenome empregado",
    gerente.employee_id "Id gerente",
    gerente.last_name "Sobrenome gerente"
FROM employees empregado JOIN employees gerente
    ON (empregado.manager_id = gerente.employee_id)
ORDER BY empregado.employee_id;

SELECT * FROM employees;


SELECT * FROM locations;
