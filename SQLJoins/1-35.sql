#Вывести почтовый код отдела, в котором работает сотрудник по фамилии 'Sully'.


SELECT l.postal_code
FROM departments d, employees e, locations l
WHERE d.department_id=e.department_id AND e.last_name='Sully' AND d.location_id=l.location_id 