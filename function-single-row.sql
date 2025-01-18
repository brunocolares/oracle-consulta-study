/* Funções single row*/
-- Conversão minusculo e maiusculo
-- Maiusculo
select employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'KING';

SELECT LOWER(first_name || ' ' || last_name) "Nome completo"
from employees;

select initcap(country_id)
from locations;

-- Manipulação de caracteres
SELECT CONCAT('Curso: ', 'Introdução ORACLE 19c') as Concatenação,
    SUBSTR('Introdução ORACLE 19c', 1, 11) as Recorte,
    LENGTH('Introdução ORACLE 19c') as Tamanho,
    INSTR('Introdução ORACLE 19c', '19') as Busca
FROM dual;

--LPAD e RPAD
SELECT first_name "Nome",
       LPAD(first_name, 20, ' ') "Nome alinha a direita",
       RPAD(first_name, 20, ' ') "Nome alinhado a esquerda"
FROM employees;      

-- Replace
SELECT job_title, REPLACE(job_title, 'President', 'Presidente') CARGO
FROM jobs
WHERE job_title = 'President';




       
       


