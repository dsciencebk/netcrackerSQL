#Выведите все данные (*) о сотрудниках, у которых либо id должности равно "FI_ACCOUNT" и зарплата больше 4200, либо id должности равно "IT_PROG" (и любая зарплата).
#Указание: Запрос должен быть написан без использования скобок.

SELECT *
FROM employees
where (job_id='FI_ACCOUNT' AND salary>4200) OR job_id='IT_PROG'