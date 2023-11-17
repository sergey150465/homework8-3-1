with result as
(select netology.CUSTOMERS.name, netology.ORDERS.product_name
from netology.CUSTOMERS
right join netology.ORDERS
on netology.CUSTOMERS.id = netology.ORDERS.customer_id)
select * from result
where lower(name) = :name;