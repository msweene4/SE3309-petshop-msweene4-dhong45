use pets3309;

select*
from transactioninst
order by ItemID;

delete from transactioninst where ItemID=1;

select*
from transactioninst
order by ItemID;

select*
from pet
where className="Dolor est.";

update pet
set price=50
where className="Dolor est.";

select*
from pet
where className="Dolor est.";

insert into employee(
Ename,
phoneNumber,
email,
storeID
)Values("Mike Hong","1-800-668-6868","Helpme@idon'tknowwhatiamdoing.com", (select storeID from stores where phoneNumber="982-820-5486"));

select*
from employee
where Ename="Mike Hong";