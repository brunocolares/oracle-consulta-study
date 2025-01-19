/* ATIVIDADES DE FUN��ES DATE */
SELECT TO_CHAR(sysdate, 'DD/MM/YYYY') DATA_ATUAL,
       TO_CHAR(sysdate, 'HH24:MI:SS') HORA_ATUAL
FROM dual;

SELECT first_name AS NOME,
        hire_date as DATA_CONTRATA��O,
        hire_date + 30 as DATA_CONTRATRA��O_ACRESCIDA
FROM employees;  

SELECT first_name as nome,
       hire_date as data_contrata��o,
       hire_date - sysdate as diferen�a_dias
FROM employees;      

SELECT first_name as nome,
       TO_CHAR(hire_date, 'DD/MM/YY HH24:MI:SS') as data_contrata��o,
       TO_CHAR(hire_date + 12/24, 'DD/MM/YY HH24:MI:SS') as data_contrata��o_12 
FROM employees;       

SELECT first_name as nome, MONTHS_BETWEEN(sysdate, hire_date) as diferenca_meses
FROM employees;

SELECT first_name as nome, hire_Date as data_contrata��o, ADD_MONTHS(hire_date, 6) as data_contratacao_acrescentada
FROM employees;

SELECT first_name as nome, hire_date as data_contrata��o, NEXT_DAY(hire_date, 'SUNDAY') as proximo_Domingo
FROM employees;

SELECT first_name as nome, hire_date as data_contrata��o, LAST_DAY(hire_date) as ultimo_dia_mes
FROM employees;

-- Qual o sentido de usar o 'day' no round?
SELECT first_name as nome,
       hire_date as data_contrata��o,
       round(hire_date, 'month') as "data de contrata��o arredondada por m�s",
       trunc(hire_date, 'month') as "data truncada para in�cio do m�s"
FROM employees;
       
SELECT first_name as nome,
    TO_DATE(TO_CHAR(hire_date, 'DD/MM/YYYY HH24:MI:SS'), 'DD/MM/YYYY HH24:MI:SS') as "data de contrata��o"
FROM employees;    
       
       
-- DESAFIO
SELECT first_name || ' ' || last_name as "Nome completo",
       hire_date as "Data de contrata��o",
       ROUND(hire_date, 'year') as "Data arredondada por ano",
       MONTHS_BETWEEN(sysdate, hire_date) as "Diferen�a em meses da contrata��o",
       NEXT_DAY(hire_date, 2) as "Pr�xima segunda-feira ap�s a contrata��o",
       NVL(TO_CHAR(hire_date), '01/01/1900') as "01/01/1900 caso nulo"
FROM employees;       
        