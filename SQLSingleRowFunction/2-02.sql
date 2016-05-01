#Из таблицы LOCATIONS выведите первым столбцом уникальный идентификатор местоположения (LOCATION_ID), 
#вторым столбцом street — адрес, образованный усечением слева цифр и пробелов у колонки STREET_ADDRESS.
#Указание: Использование LTRIM.

SELECT l.location_id, LTRIM(l.street_address,'1234567890 ')
FROM locations l