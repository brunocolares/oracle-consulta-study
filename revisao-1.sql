/* Revisão de conteúdos vistos até 19/02/2025 */

-- 1
SELECT TO_CHAR(sysdate, 'DD/MM/YYYY HH24:MI:SS') DATA_ATUAL,
    TO_CHAR(SYSDATE + 7, 'DD/MM/YYYY HH24:MI:SS') PROXIMA_SEMANA
FROM dual;

-- 2
SELECT first_name || ' ' || last_name "Nome completo",
    TO_CHAR(hire_date, 'FMDAY DD/MM/YYYY') "Data de contratação"
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') = TO_CHAR(sysdate, 'YYYY');

-- 3
SELECT first_name,
    TRUNC(sysdate - hire_date) as DIAS_TRABALHADOS
FROM EMPLOYEES
ORDER BY DIAS_TRABALHADOS DESC;

-- 4
SELECT 
    COUNT(*),
    TO_CHAR(hire_date, 'YYYY') as ANO_CONTRATACAO,
    ROUND(AVG(salary), 2)
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY')
HAVING COUNT(*) > 5;

-- 5



