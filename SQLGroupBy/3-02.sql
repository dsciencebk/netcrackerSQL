#Посчитайте количество сотрудников, у кого есть комиссионные, средние комиссионные среди всех сотрудников и средние комиссионные среди получающих их сотрудников.
#Под комиссионными здесь понимается процент комиссионных - commission_pct

SELECT COUNT(CASE 
                 WHEN commission_pct IS NOT NULL THEN 1 
                 ELSE NULL END),
       AVG(NVL(commission_pct,0)),
       AVG(commission_pct)
FROM employees


