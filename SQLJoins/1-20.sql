#Вывести информацию обо всех отделах и состоящих в них сотрудниках.
#В первом столбце - id отдела, во втором - id сотрудника.
#Если в отделе нет ни одного сотрудника, то второй столбец в строке такого отдела должен содержать NULL.
#Решите задачу, используя синтаксис Oracle

SELECT d.department_id, e.employee_id
FROM employees e, departments d
WHERE d.department_id=e.department_id(+)