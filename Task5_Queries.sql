use pets3309;

select*
from animal
where className is not null;

select*
from customer
order by points;

select*
from pet
where price>(select AVG(price) from pet);

select*
from pet,transactioninst
where pet.PetID = transactioninst.PetID
group by pet.PetID;

select storeID,Count(*)
from employee
group by storeID;


select SUM(pet.price), SUM(items.price)
from Stransaction,transactioninst,pet,items
where (Stransaction.TID=transactioninst.TID) AND
    (transactioninst.PetID=pet.PetID) AND
    (transactioninst.ItemID=items.ItemID) AND
    (Stransaction.storeID=1)
order by transactioninst.InstID;
