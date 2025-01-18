-- Describe
DESCRIBE employees;
DESC regions;
DESC COUNTRIES;

-- Select
SELECT * FROM countries;
SELECT * FROM Jobs;

SELECT JOB_ID, JOB_TITLE
FROM Jobs;

select location_id, locations.* 
from locations;

SELECT DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID
FROM DEPARTMENTS;

-- select com expressão aritmética
select first_name, last_name, salary, salary * 1.15
FROM employees;

select first_name, last_name, salary, (salary + 100) * 1.15
FROM employees;

select * from employees;

-- NULL
select first_name, last_name, job_id, salary, commission_pct
from employees;

select first_name, last_name, job_id, commission_pct, 200000 * commission_pct
FROM employees
WHERE commission_pct IS NULL;

-- ALIAS
SELECT first_name AS nome,
       last_name sobrenome,
       salary salario
FROM employees;

select first_name "Nome", last_name "Sobrenome", salary "Salário ($)", commission_pct "Percentual de comissão"
from employees;

-- Operador de concatenação
select first_name || ' ' || last_name || ', data de admissão: ' || hire_date as "Funcionário"
from employees;

-- Operador alternativo
select department_name || q'[ Department's Manager Id: ]' || manager_id "Departamento e Gerente"
FROM departments;

-- Distinct
select distinct department_id
FROM employees;

select distinct *
from employees;


