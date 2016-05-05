Найти заказчиков (customers), сделавшие заказы в тот день или те дни (orderdate), в которые было совершено наибольшее число заказов.
Вывести: дату (orderdate) и название компании-заказчика (companyname).


SELECT o.orderdate, sh.companyname
FROM orders o, customers sh
WHERE o.orderdate=(SELECT orderdate
                   FROM(SELECT orderdate, COUNT(orderid)
                         FROM orders
                         GROUP BY orderdate
                         ORDER BY 2 desc)
                   WHERE ROWNUM=1) 
      AND o.customerid=sh.customerid
                  
