#Для всех отделов, располагающихся в городе 'Seattle', вывести название отдела и номер телефона его менеджера.
#Если отдел не имеет менеджера, второй столбец должен содержать NULL.

SELECT d.department_name, e.phone_number
FROM departments d, locations l, employees e
WHERE d.location_id=l.location_id AND l.city='Seattle' AND d.manager_id=e.employee_id(+)
