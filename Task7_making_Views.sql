use pets3309;

create view v as select memberID,points from customer;

select*
from v;

create view m as select memberID, points, EID, Ename from employee, customer;

select*
from m;

create view i as select price, stock, (price*stock) as value from items;

select*
from i;