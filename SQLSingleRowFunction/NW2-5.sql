#Вывести имя (PRODUCTNAME) для всех продуктов, у которых хотя бы одно из значений UNITSONORDER, REORDERLEVEL или DISCONTINUED отлично от 0
#Grandma s Boysenberry Spread

SELECT productname
FROM products
WHERE UNITSONORDER<>0 OR REORDERLEVEL<>0 OR DISCONTINUED<>0