#Вывести телефон менеджера сотрудника по фамилии 'Chen'.

SELECT e2.phone_number
FROM employees e1, employees e2
WHERE e1.manager_id=e2.employee_id(+) AND e1.last_name='Chen'