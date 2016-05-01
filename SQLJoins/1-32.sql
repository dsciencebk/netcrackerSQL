#Вывести в первом столбце названия всех отделов компании, а втором - названия стран, где они располагаются.


SELECT d.department_name, c.country_name
FROM departments d, locations l, countries c
WHERE d.location_id=l.location_id(+) AND l.country_id=c.country_id(+)