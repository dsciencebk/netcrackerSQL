#Выведите название отдела и среднюю зарплату сотрудников в отделе,
#причем только для отделов, где средняя зарплата больше 5000.

SELECT d.department_name, AVG(e.salary)
FROM employees e, departments d
WHERE e.department_id=d.department_id
GROUP BY e.department_id,d.department_name
HAVING AVG(e.salary)>=5000
