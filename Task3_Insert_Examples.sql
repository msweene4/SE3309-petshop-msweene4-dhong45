use pets3309;
show tables;
describe stores;

insert into stores(
phoneNumber,
email
)Values(
'289-123-4567',
'email@fakeemail.com'
);


select storeID, phoneNumber, email
from stores
where storeID is not null;

insert into customer(
points,
phoneNumber,
email
)Values(
158,
'500-498-6547',
'hello@fake.com'
);
select *
from customer
where memberID is not null;


describe stransaction;
insert into stransaction(
memberid,
storeid,
tdate
) values((Select memberid from customer where email ='hello@fake.com' limit 1),(Select storeID from stores where storeid=1), '2017-11-25 14-49-01');

select *
from stransaction
where memberID is not null;

describe employee;
insert into employee(
Ename,
phoneNumber,
email,
storeID
) Select'mike sweeney', '123-456-7898', 'emailisfake@fakeemail.com', storeID from stores where phoneNumber ='289-123-4567' limit 1;



select EID, Ename, phoneNumber, email, storeID
from employee
where EID =1;

