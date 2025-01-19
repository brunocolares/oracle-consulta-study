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

/* NUMBER */
-- ROUND
SELECT ROUND(100.345,1)
FROM dual;

-- TRUNC
SELECT TRUNC(843.654, 2), TRUNC(17.013, 2)
FROM dual;

SELECT MOD(10, 2) RESTO
from dual;

SELECT ABS(-81) ABSOLUTO
from dual;

SELECT SQRT(81) RAIZ
from dual;


/* DATE */
SELECT sysdate
FROM dual;

-- Calculos com data
SELECT sysdate data_atual,
sysdate + 30 data_somada
FROM dual;

SELECT sysdate data_atual,
  sysdate + 3 data_somada,
  (sysdate + 3) - sysdate
FROM dual;

select sysdate, sysdate + 30, sysdate + 6, sysdate - 30
from dual;

select last_name, ROUND((sysdate-hire_date)/7, 2) "semana de trabalho"
from employees;

select * from employees;

-- Outras funções:
SELECT hire_date, months_between(hire_date, sysdate)
from employees;

select add_months(sysdate, 1)
from dual;

select next_day(sysdate, 7)
from dual;

select last_day(sysdate)
from dual;

select last_day(TO_DATE('01/02/25', 'DD/MM/YY'))
from dual;

select round(sysdate)
from dual;

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(sysdate, hire_date), 2) "MESES DE TRABALHO"
from employees;

select sysdate, add_months(sysdate, 3), next_day(sysdate, 'FRIDAY'), LAST_DAY(SYSDATE)
FROM DUAL;

SELECT sysdate, ROUND(SYSDATE, 'MONTH'), ROUND(SYSDATE, 'YEAR'),
        TRUNC(SYSDATE, 'MONTH'), TRUNC(SYSDATE, 'YEAR')
FROM dual;        

SELECT TO_CHAR(sysdate, 'DD/MM/YY HH24:MI:SS'), TO_CHAR(TRUNC(sysdate), 'DD/MM/YYYY HH24:MI:SS')
FROM dual;

SELECT TO_CHAR(SYSDATE, 'DAY')
FROM dual;
       
       


