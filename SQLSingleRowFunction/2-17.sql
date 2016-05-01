#Выведите все страны из таблицы COUNTRIES: первым столбцом выведите название страны (COUNTRY_NAME), 
#вторым столбцом - ту же строку (название страны), в которой исключены гласные буквы со всех позиций, кроме первой позиции в строке.
#Гласными считаются буквы A,E,I,O,U,Y

SELECT country_name, SUBSTR(country_name,1,1)||TRANSLATE(SUBSTR(country_name,2),'_aeiouyAEIOUY','_')
FROM countries
