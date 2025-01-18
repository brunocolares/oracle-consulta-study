-- Atividades: funções de caracter
SELECT LOWER(first_name) Nome
FROM employees;

SELECT UPPER(first_name || ' ' || last_name) "Nome completo"
FROM employees;

SELECT INITCAP(first_name || ' ' || last_name) "Nome completo"
FROM employees;

SELECT CONCAT(first_name, last_name) "Nome completo"
FROM employees;

SELECT SUBSTR(first_name, 1, 3) "Nome"
FROM employees;

SELECT first_name, LENGTH(first_name) comprimento
FROM employees;

SELECT first_name, INSTR(UPPER(first_name), 'A') posição
FROM employees
WHERE INSTR(UPPER(first_name), 'A') > 0;

SELECT phone_number, LPAD(phone_number, 15, '*') "Numero alinhado"
FROM employees;

SELECT employee_id, RPAD(employee_id, 10, '-') "Id alinhado"
FROM employees;

SELECT JOB_ID, REPLACE(JOB_ID, 'IT_PROG', 'DESENVOLVEDOR') Tradução
FROM employees;

SELECT first_name, TRIM(' ' FROM first_name) Espaço
FROM employees;

SELECT phone_number, RTRIM(phone_number, '-')
FROM employees;

SELECT phone_number, LTRIM(phone_number, ' ')
FROM employees;



