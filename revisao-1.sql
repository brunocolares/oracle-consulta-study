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
SELECT COUNT(*) as "Funcionários por departamento",
    department_id,
    SUM(salary) as "Salários por departamento",
    ROUND(AVG(salary), 2) as "Média de salário por departamento",
    MAX(salary) as "Maior salário por departmento"
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 50000;

-- 6
SELECT COUNT(*) "Funcionários",
        TO_CHAR(hire_date, 'MM') "Mês de contratação"
FROM employees
GROUP BY TO_CHAR(hire_date, 'MM')
HAVING COUNT(*) > 2;

-- 7
SELECT 
    (CASE
        WHEN salary <= 3000 THEN
            'Baixo'
        WHEN salary > 3000 AND salary <= 6000 THEN
            'Médio'
        ELSE
            'Alto'
        END) as CLASSIFICACAO_SALARIO,
    COUNT(*) as FUNCIONARIOS,
    ROUND(AVG(salary), 2) as media            
FROM employees
GROUP BY (CASE
        WHEN salary <= 3000 THEN
            'Baixo'
        WHEN salary > 3000 AND salary <= 6000 THEN
            'Médio'
        ELSE
            'Alto'
        END);
        
-- 8
SELECT department_id, COUNT(*)
FROM employees



