#Выведите все данные (*) о сотрудниках из таблицы employees, у которых нет комиссионных и есть менеджер.

SELECT *
FROM employees
where commission_pct IS NULL AND manager_id IS NOT NULL