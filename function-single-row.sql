/* Fun��es single row*/
-- Convers�o minusculo e maiusculo
-- Maiusculo
select employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'KING';

SELECT LOWER(first_name || ' ' || last_name) "Nome completo"
from employees;

select initcap(country_id)
from locations;

-- Manipula��o de caracteres
SELECT CONCAT('Curso: ', 'Introdu��o ORACLE 19c') as Concatena��o,
    SUBSTR('Introdu��o ORACLE 19c', 1, 11) as Recorte,
    LENGTH('Introdu��o ORACLE 19c') as Tamanho,
    INSTR('Introdu��o ORACLE 19c', '19') as Busca
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




       
       


