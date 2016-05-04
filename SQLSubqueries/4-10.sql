Выведите все данные (*) о тех сотрудниках, у которых в трудовой истории (таблица job_history) есть запись о работе в должности ST_CLERK.
Указание: Использование оператора EXISTS.

SELECT *
FROM employees e
WHERE EXISTS(SELECT *
             FROM job_history
             WHERE job_id='ST_CLERK' AND e.employee_id=job_history.employee_id)
                        