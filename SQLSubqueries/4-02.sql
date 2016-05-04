#Выведите все данные (*) о сотрудниках с зарплатой, равной максимальной зарплате внутри своего отдела.
#Указание: Решите задачу с использованием коррелированного подзапроса.

SELECT *
FROM employees e
WHERE salary IN (SELECT MAX(salary)
                 FROM employees ee
                 WHERE e.department_id=ee.department_id)
