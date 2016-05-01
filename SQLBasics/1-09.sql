#Выведите все данные (*) о сотрудниках с зарплатой не менее 3000, кроме сотрудника с фамилией King.

SELECT *
FROM employees
where salary>=3000 AND last_name<>'King'