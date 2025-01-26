/* Atividade- fun��es de convers�o e condi��o */
SELECT first_name || ' ' || last_name "Nome completo",
    TO_CHAR(hire_date, 'fmDAY, DD/MM/YYYY') "Data da contrata��o"
FROM employees;        

SELECT first_name || ' ' || last_name "Nome completo",
    TO_CHAR(salary, 'L99G999D99')
FROM employees;    

-- 3
SELECT SUM(TO_NUMBER(valor))
FROM teste_values
GROUP BY(valor);

-- 4
SELECT custom_date, TO_CHAR(TO_DATE(custom_date, 'YYYYMMDD'), 'DD/MM/YYYY')
FROM employees;

--5
SELECT salary SALARIO, NVL(commission_pct, 0) PCT_COMISSAO, salary * NVL(commission_pct, 0) TOTAL_COMISSAO
FROM employees;

SELECT first_name || ' ' || last_name "Nome completo", 
    NVL2(commission_pct, 'Comiss�o:' || TO_CHAR(commission_pct, '0D99'), 'N�o tem comiss�o') "Comiss�o"
FROM employees;

-- 7
SELECT salary, NULLIF(salary, 3000)
FROM employees;

-- 8
SELECT first_name, COALESCE(TO_CHAR(department_id), TO_CHAR(manager_id), 'N�o definido')
FROM employees;

--9
SELECT first_name || ' ' || last_name "Nome completo",
    salary "Sal�rio",
    CASE 
        WHEN salary < 3000 
            THEN 'Baixo'
        WHEN salary >= 300 AND salary <= 7000
            THEN 'M�dio'
        ELSE 
            'Alto'
        END "Classifica��o sal�rio"
FROM employees;

-- 10 decode
SELECT department_id, 
    department_name,
    DECODE(department_id,
        10, 'Vendas',
        20, 'Administra��o',
        30, 'TI',
        'Outros') Descri��o
FROM departments;

-- DESAFIO
SELECT first_name || ' ' || last_name "Nome completo",
    TO_CHAR(hire_date, 'DD/MM/YYYY') "Data de contrata��o",
    'Anos:' || (TO_NUMBER(TO_CHAR(sysdate, 'YYYY')) - TO_NUMBER(TO_CHAR(hire_date, 'YYYY'))) || ' Meses: ' ||
    ROUND(MONTHS_BETWEEN(sysdate, hire_date)) ||
    ' Dias: ' || ROUND((sysdate - hire_date)) "Tempo de trabalho",
    CASE 
        WHEN (TO_NUMBER(TO_CHAR(sysdate, 'YYYY')) - TO_NUMBER(TO_CHAR(hire_date, 'YYYY'))) < 1
            THEN 'Rec�m contratado'
        WHEN (TO_NUMBER(TO_CHAR(sysdate, 'YYYY')) - TO_NUMBER(TO_CHAR(hire_date, 'YYYY'))) >= 1 AND 
            (TO_NUMBER(TO_CHAR(sysdate, 'YYYY')) - TO_NUMBER(TO_CHAR(hire_date, 'YYYY')))  <= 5
            THEN 'Experiente'
        ELSE
            'Veterano'
    END "Classifica��o de tempo",
    NEXT_DAY(hire_date, 'MONDAY') "Pr�ximo dia �ltil"
FROM employees;
        
            









