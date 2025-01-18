/* Atividades SELECT 
-- Bruno Colares em 18/01/2025
*/
-- 1 Opera��es aritm�ticas
select first_name || ' ' || first_name name,
       salary salary,
       salary - salary * 20/100 salary_after_tax
from employees;

-- 2 Distinct
select distinct job_id
from employees;

-- 3 Describe
desc departments;

-- 4 Concaten��o ||
select first_name || ' ' || last_name "Nome completo"
from employees;

-- 5 Alias
select first_name || ' ' || last_name "Nome completo",
       salary Sal�rio,
       department_id Departamento
FROM employees;

-- 6 null
select *
from employees
where manager_id is null;

-- 8 Distinct com count
select distinct department_id, count(*)
from employees
group by department_id;

-- Desafio
select first_name || ' ' || last_name as "Nome completo",
salary "Sal�rio",
salary + salary * 10/100 "Sal�rio incrementado"
from employees;

select * from departments
where manager_id is null;

select distinct job_id "Fun��es distintas" 
from employees;


