#Из таблицы LOCATIONS выведите адрес (STREET_ADDRESS) и позицию второго буквенного символа, входящего в ту же строку (адрес). 
#Указание: Использование REGEXP_INSTR.

SELECT street_address,REGEXP_INSTR(street_address,'[a-z]{2}')
FROM locations
