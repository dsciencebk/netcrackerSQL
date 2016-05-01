#Выведите имена и фамилии всех сотрудников (first_name, last_name) и в 3-7 столбцах выведите размер их комиссионных (commission_pct * salary) или 0, если они отсутствуют, - 
#пятью различными способами: с помощью функций NVL, COALESCE, NVL2, DECODE, CASE.

SELECT first_name, last_name, 
       NVL(commission_pct*salary,0) a,
       COALESCE(commission_pct*salary,0) b,
       NVL2(commission_pct*salary,commission_pct*salary,0) c,
       DECODE(commission_pct*salary, NULL,0,
          commission_pct*salary,commission_pct*salary) d,
       CASE WHEN commission_pct*salary IS NULL THEN 0 
            ELSE commission_pct*salary END e
FROM employees