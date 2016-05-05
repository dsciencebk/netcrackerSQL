Выведите идентификатор (supplierid) всех поставщиков (suppliers), поставляющих продукцию (products) только одной категории (categories), 
а также имя этой категории (categoryname)

SELECT DISTINCT supplierid, categoryname
FROM products p, categories c
WHERE p.supplierid IN(SELECT supplierid
                      FROM products
                      GROUP BY supplierid
                       HAVING COUNT(DISTINCT categoryid)=1)
      AND p.categoryid=c.categoryid(+)
