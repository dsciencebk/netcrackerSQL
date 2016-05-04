Выведите все данные (*) о тех сотрудниках, зарплаты которых больше, чем средняя зарплата в хотя бы одном из отделов. 
Указание: Использование операторов сравнения с операторами SOME/ANY.

SELECT *
FROM employees e
WHERE salary >ANY(SELECT AVG(salary)
               From employees ee
               
               GROUP BY department_id)
