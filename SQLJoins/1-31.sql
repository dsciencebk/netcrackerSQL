#Вывести названия всех отделов, располагающихся по адресу '2004 Charade Rd'.

SELECT d.department_name
FROM departments d, locations l
WHERE d.location_id=l.location_id AND l.street_address='2004 Charade Rd'