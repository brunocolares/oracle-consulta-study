/* ATIVIDADES DE FUNÇÕES DATE */
SELECT TO_CHAR(sysdate, 'DD/MM/YYYY') DATA_ATUAL,
       TO_CHAR(sysdate, 'HH24:MI:SS') HORA_ATUAL
FROM dual;

SELECT first_name AS NOME,
        hire_date as DATA_CONTRATAÇÃO,
        hire_date + 30 as DATA_CONTRATRAÇÃO_ACRESCIDA
FROM employees;  

SELECT first_name as nome,
       hire_date as data_contratação,
       hire_date - sysdate as diferença_dias
FROM employees;      

SELECT first_name as nome,
       TO_CHAR(hire_date, 'DD/MM/YY HH24:MI:SS') as data_contratação,
       TO_CHAR(hire_date + 12/24, 'DD/MM/YY HH24:MI:SS') as data_contratação_12 
FROM employees;       

SELECT first_name as nome, MONTHS_BETWEEN(sysdate, hire_date) as diferenca_meses
FROM employees;

SELECT first_name as nome, hire_Date as data_contratação, ADD_MONTHS(hire_date, 6) as data_contratacao_acrescentada
FROM employees;

SELECT first_name as nome, hire_date as data_contratação, NEXT_DAY(hire_date, 'SUNDAY') as proximo_Domingo
FROM employees;

SELECT first_name as nome, hire_date as data_contratação, LAST_DAY(hire_date) as ultimo_dia_mes
FROM employees;

-- Qual o sentido de usar o 'day' no round?
SELECT first_name as nome,
       hire_date as data_contratação,
       round(hire_date, 'month') as "data de contratação arredondada por mês",
       trunc(hire_date, 'month') as "data truncada para início do mês"
FROM employees;
       
SELECT first_name as nome,
    TO_DATE(TO_CHAR(hire_date, 'DD/MM/YYYY HH24:MI:SS'), 'DD/MM/YYYY HH24:MI:SS') as "data de contratação"
FROM employees;    
       
       
-- DESAFIO
SELECT first_name || ' ' || last_name as "Nome completo",
       hire_date as "Data de contratação",
       ROUND(hire_date, 'year') as "Data arredondada por ano",
       MONTHS_BETWEEN(sysdate, hire_date) as "Diferença em meses da contratação",
       NEXT_DAY(hire_date, 2) as "Próxima segunda-feira após a contratação",
       NVL(TO_CHAR(hire_date), '01/01/1900') as "01/01/1900 caso nulo"
FROM employees;       
        