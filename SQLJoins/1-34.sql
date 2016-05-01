#Для всех отделов компании вывести название отдела и фамилию (last_name) его менеджера.
#Если отдел не имеет менеджера, второй столбец должен содержать NULL.

SELECT d.department_name, e.last_name
FROM departments d, employees e
WHERE d.manager_id=e.employee_id(+)