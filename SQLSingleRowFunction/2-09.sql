#Выведите имена и фамилии всех сотрудников (first_name, last_name) и в 3-6 столбцах выведите их зарплату в предположении, что из нее вычли налог 13%, в следующих формах:
#•	low: округленная до целого снизу,
#•	up: округленная до целого сверху,
#•	round_k: округленная до сотен, выраженная в тысячах,
#•	trunk_k: усеченная до сотен, выраженная в тысячах.
#Пример вывода:
#FIRST_NAME	LAST_NAME	LOW	UP	ROUND_K	TRUNK_K
#Arthur	Wilson	20871	20872	20.9	20.8
#Указание: Использование ROUND, TRUNC, CEIL, FLOOR.

SELECT first_name, last_name,CEIL(salary*0.87), FLOOR(salary*0.87), ROUND(salary*0.87/1000,1), TRUNC(salary*0.87/1000,1)
FROM employees