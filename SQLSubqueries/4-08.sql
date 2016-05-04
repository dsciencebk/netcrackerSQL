Выведите все данные (*) о тех сотрудниках, зарплаты которых больше, чем средняя зарплата в каждом из отделов. 
Указание: Использование оператора сравнения с оператором ALL.


SELECT *
FROM employees e
WHERE salary >ALL (SELECT AVG(salary)
               From employees ee
               
               GROUP BY department_id)
