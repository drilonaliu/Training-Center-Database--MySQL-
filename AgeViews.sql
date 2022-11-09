-- The birthdays for each person are entered in the person table. We now want to calculate their age.

-- We create two  views

-- view for clients' age
create  or replace view ageClients as 
select  person.p_name as p_name, person.p_surname as p_surname, person.p_birthday as p_birthday, TIMESTAMPDIFF(YEAR, person.p_birthday ,curdate())  as mosha
from clients join person on clients.idPerson = person.idPerson
order by p_birthday asc;
 
 -- view for staff's age
create  or replace view ageStaff as 
select  person.p_name as p_name, person.p_surname as p_surname, person.p_birthday as p_birthday, TIMESTAMPDIFF(YEAR, person.p_birthday ,curdate())  as mosha
from staff join person on staff.idPerson = person.idPerson
order by p_birthday asc;

 
-- Using the table views, we now can ask the below questions
 
 -- 1. Show me the age of each client
  select * from ageClients;
  
-- 2. Show me the age of each staff 
   select * from ageStaff;
   
-- 3. Who is our oldest client? 
 select  * from ageClients  limit 1;
 
-- 4. Who is our oldest staff worker?
select * from ageStaff limit 1;

-- 5. Who is our youngest client?
select * from ageClients order by ageClients.p_birthday desc limit 1 ;

-- 6. Who is our youngest staff worker?
select * from ageStaff order by ageStaff.p_birthday desc limit 1;




