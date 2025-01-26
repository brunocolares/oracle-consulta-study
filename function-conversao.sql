/* FUNÇÕES DE CONVERSÃO */ 

-- TO_CHAR
SELECT last_name, TO_CHAR(hire_date, 'FMDAY/MON/YYYY HH24:MI:SS') DT_ADMISSÃO
FROM employees;

SELECT sysdate, TO_CHAR(sysdate, 'DD/MM/YYYY HH24:MI:SS') DT_HOJE
FROM dual;

SELECT last_name, TO_CHAR(hire_date, 'FMDD "de" MONTH "de" YYYY') DT_ADMISSÃO
FROM employees;

SELECT first_name, last_name, salary, TO_CHAR(salary, 'L99G999G999D99')
FROM employees;

-- TO_NUMBER
SELECT TO_NUMBER('12000.50')
FROM dual;

-- TO_DATE
SELECT TO_DATE('25-JUN-25')
FROM dual;

SELECT TO_DATE('26/04/2004 12:35:11', 'DD/MM/YYYY HH24:MI:SS')
FROM dual;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = TO_DATE('21/06/2007', 'DD/MM/YYYY');

-- Funções aninhadas
SELECT first_name, last_name, hire_date, ROUND(MONTHS_BETWEEN(sysdate, hire_date), 0)
FROM employees
WHERE hire_date = TO_DATE('17/06/2003', 'DD/MM/YYYY');

-- FUNÇÕES GENÉRICAS
-- Função NVL
SELECT last_name, salary, commission_pct, NVL(commission_pct, 0), salary * 12 SALARIO_ANUAL,
    (salary*12) + (salary*12*NVL(commission_pct, 0)) REMUNERACAO_ANUAL
FROM employees;    

-- COALESCE
SELECT COALESCE(NULL, NULL, 'Expressão 3'),
    COALESCE(NULL, 'Expressão 2', 'Expressão 3'),
    COALESCE('Expressão 1', 'Expressão 2', 'Expressão 3')
FROM dual;

SELECT COALESCE(null, 2, 3)
FROM dual;

SELECT last_name, employee_id, commission_pct, manager_id,
    COALESCE(TO_CHAR(commission_pct), TO_CHAR(manager_id), 
    'Sem percentual de comissão e sem gerente')
FROM employees;    

-- Função NVL2
SELECT last_name, salary, commission_pct, NVL2(commission_pct, 10, 0) PERCENTUAL_ALTERADO
FROM employees;

-- NULLLIF
SELECT NULLIF(1000, 1000), NULLIF(1000, 2000), NULLIF(1250, 1250), NULLIF(1250, 3300)
FROM dual;

-- EXPRESSÕES CONDICIONAIS
-- CASE
SELECT first_name, last_name, salary,
    CASE salary 
        WHEN 2600 THEN 10
        WHEN 1300 THEN 12
        ELSE 100
    END TESTE
FROM employees;

SELECT last_name, job_id, salary,
    CASE job_id
        WHEN 'IT_PROG'
            THEN 1.10*salary
        WHEN 'SH_CLERK'
            THEN 1.15*salary
        WHEN 'SA_REP'
            THEN 1.20*salary
        ELSE salary
    END "NOVO SALARIO"
FROM employees;    

-- DECODE
select last_name, job_id, salary,
    DECODE(job_id, 'IT_PROG', 1.10*salary,
        'SH_CLERK', 1.15*salary,
        'SA_REP', 1.20*salary,
        salary)
FROM employees;        
        