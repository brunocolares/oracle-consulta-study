/* Exercícios de revisão e funções de grupo */
-- 1
SELECT department_id, TO_CHAR(AVG(NVL(salary, 0)), 'L999G999D99') media_salarial
FROM employees
GROUP BY department_id;

--2
SELECT department_id, TO_CHAR(SUM(salary), 'L999G999D99') soma_salarial
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 50000;

-- 3
SELECT department_id, COUNT(*) as quantidade_funcionario
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 4
SELECT department_id, TO_CHAR(MAX(salary), 'L999G999D99') AS maior_salario
FROM employees
GROUP BY department_id;

-- 5
SELECT job_id, TO_CHAR(MIN(salary), 'L999G999D99') as menor_salario
FROM employees
GROUP BY job_id
HAVING COUNT(*) >= 3; -- Fiquei com duvida como ele sabe quantos funcionariso tem no grupo aqui

-- 6
SELECT COUNT(*) as quantidade, NVL2(commission_pct, 'Tem comissão', 'Não tem comissão') as existencia_comissao
FROM employees
GROUP BY NVL2(commission_pct, 'Tem comissão', 'Não tem comissão'); -- Também fiquei com dúvida aqui

-- 7
SELECT COUNT(*) as quantidade_funcionario, TO_CHAR(hire_date, 'YYYY')
FROM employees
GROUP BY TO_CHAR(hire_date, 'YYYY');

-- 8
SELECT COUNT(*) as quantidade_funcionario, TO_CHAR(hire_date, 'MM')
FROM employees
GROUP BY TO_CHAR(hire_date, 'MM')
HAVING COUNT(*) > 2;

-- 9
SELECT department_id, job_id, ROUND(AVG(salary), 2) media_salarial
FROM employees
GROUP BY department_id, job_id
HAVING AVG(salary) > 4000
ORDER BY department_id;

-- 10
SELECT 
    CASE 
        WHEN salary <= 3000 THEN
        'Baixo'
        WHEN salary > 3000 AND salary <= 6000 THEN
        'Médio'
        ELSE
            'Alto'
        END as classificacao_salario,
        COUNT(*) as quantidade_funcionario
FROM employees
GROUP BY CASE 
        WHEN salary <= 3000 THEN
        'Baixo'
        WHEN salary > 3000 AND salary <= 6000 THEN
        'Médio'
        ELSE
            'Alto'
        END; -- Não consigo fazer sem repetir a expressão no select e group by?
        
-- DESAFIO
SELECT 
    b.department_name,
    COUNT(*) funcionarios_por_departmento,
    TO_CHAR(ROUND(AVG(a.salary), 2), 'L999G999D99') media_salarial,
    TO_CHAR(MAX(salary), 'L999G999D99') maior_salario,
    TO_CHAR(MIN(salary), 'L999G999D99') menor_salario
FROM employees a, departments b
WHERE a.department_id = b.department_id
GROUP BY a.department_id, b.department_name
HAVING AVG(a.salary) >= 5000;


