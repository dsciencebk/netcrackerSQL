#Выведите все данные (*) о сотрудниках с зарплатой, равной максимальной зарплате по всей компании. 
#Указание: использовать только таблицу employees.

SELECT *
FROM employees
WHERE salary=(SELECT MAX(salary)
FROM employees)