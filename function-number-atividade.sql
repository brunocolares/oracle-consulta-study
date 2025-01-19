/*
    Exercícios para funções NUMBER
*/
SELECT ROUND(salary, 2)
FROM employees;

SELECT TRUNC(salary, 2)
FROM employees;

SELECT employee_id, salary, MOD(salary, 300)
FROM employees;

SELECT ABS(-380) ABSOLUTO
FROM dual;

SELECT salary, ROUND(SQRT(salary), 2)
FROM employees;

SELECT salary, ROUND(salary * 1.10, 2)
FROM employees;

SELECT salary, TRUNC(salary - salary * 0.15)
FROM employees;

SELECT employee_id, salary, MOD(salary, 200) RESTO
FROM employees
WHERE MOD(salary, 200) = 50;

select employee_id, ABS(salary - commission_pct)
from employees
where commission_pct is not null;

select employee_id, ROUND(SQRT(salary), 2) RAIZ
from employees
where salary > 5000;

-- Desafio
SELECT employee_id, salary, 
    TRUNC(salary * 1.08, 2) "SALÁRIO COM AUMENTO DE 8%",
    MOD(salary * 1.08, 7) "RESTO DA DIVISÃO DO SALÁRIO POR 7"
FROM employees
ORDER BY salary DESC;

