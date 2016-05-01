#Выведите максимальное значение средней зарплаты по отделам. Результат округлите до ближайшего целого.

SELECT FLOOR(MAX(AVG(salary)))
FROM employees
GROUP BY department_id
