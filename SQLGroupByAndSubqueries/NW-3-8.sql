Выведите имена (companyname) и адреса (address) заказчиков (customers), не сделавших ни одного заказа (orders)


SELECT co.companyname, co.address
FROM customers co
WHERE co.customerid IN(SELECT  c.customerid
FROM customers c,orders o
WHERE c.customerid=o.customerid(+)
GROUP BY c.customerid
HAVING COUNT(o.orderid)=0)
