#find the transactions where customers bought hammers
SELECT c.customerfirstname,c.customerlastname,c.customerphonenum 
FROM customer c, transaction t
WHERE  t.productid = 'HA' AND t.customerid = c.customerid;

#finding the ammount of shareholders for a business
SELECT businessid,count(*) 
FROM  shares
GROUP BY businessid;
