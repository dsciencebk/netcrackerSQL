#Для всех имен продуктов (PRODUCTNAME) из таблицы PRODUCTS, которые состоят более чем из одного слова,
#выведите первым столбцом само имя, вторым - только первое слово имени. Например:
#Teatime Chocolate Biscuits	Teatime
#Считать, что слова отделяются друг от друга пробелами

SELECT productname, 
       SUBSTR(productname,0,INSTR(productname,' ')-1) 
FROM products
WHERE INSTR(productname,' ')>0