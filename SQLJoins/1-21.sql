#Вывести сотрудников (employees), у которых менеджер (manager_id) не совпадает с менеджером отдела,
#где работает сотрудник (department_id, см. также атрибут manager_id в таблице departments).
#Вывести нужно 3 столбца, в каждом из которых - фамилия (last_name): сотрудника, менеджера сотрудника, менеджера отдела.
#Указание: использовать явное именование столбцов результирующей выборки (aliases)


SELECT e1.last_name,  e2.last_name ee, e3.last_name rr
FROM employees e1, departments d, employees e2, employees e3
WHERE e1.department_id=d.department_id AND e1.manager_id<>d.manager_id  AND e3.employee_id=d.manager_id AND e1.manager_id=e2.employee_id(+)
