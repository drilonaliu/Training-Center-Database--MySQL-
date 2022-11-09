-- 1. Courses are taught by which trainers?
select courses.course_name, person.p_name, person.p_surname
from courses join person on courses.idPerson = person.idPerson;

-- 2. Who are the trainers and what is their profession?
select person.idPerson,person.p_name, person.p_surname, trainers.profession
from trainers
join person on trainers.idPerson = person.idPerson;

-- 3. Who are our clients?
select clients.idPerson, person.p_name, person.p_surname
from clients join person on clients.idPerson = person.idPerson;

-- 4. All of the payments for courses
select payments.idEnrollment, person.p_name, person.p_surname, courses.course_name, payments.datePayment, payments.bankAccount, payments.paymentBank
from payments
join enrollment on enrollment.idenrollment = payments.idEnrollment
join person  on enrollment.idclient = person.idPerson
join courses on enrollment.idCourses = courses.idCourses;

-- 5.  Who has enrolled in the courses?
select enrollment.idenrollment, person.p_name, person.p_surname, courses.course_name, courses.idCourses
from enrollment 
join person  on enrollment.idclient = person.idPerson
join courses on courses.idCourses = enrollment.idCourses;

-- 6.  All the attendance for the courses
SELECT   person.p_name, person.p_surname, courses.course_name, attendance.classDate, attendance.attended
from attendance 
join  enrollment on enrollment.idenrollment = attendance.idEnrollment
join  person on enrollment.idclient = person.idPerson
join courses on enrollment.idCourses = courses.idCourses;

--  7. Who are the students that have finished the course/ certified?
SELECT person.p_name,person.p_surname, courses.course_name, certification.dateCertification
from certification 
join enrollment on certification.idEnrollment= enrollment.idenrollment
join person on person.idPerson = enrollment.idclient
join courses on enrollment.idCourses = courses.idCourses;

-- 8. Show on what date the payment was done for the staff.
SELECT person.p_name, person.p_surname, wages.datePayment
from wages 
join person on person.idPerson = wages.idPerson 
join staff on staff.idPerson = person.idPerson
join stafftype;

-- 9 Which are the classes that are being taught now?
select courses.course_name, classrooms.name, classes.classDate , classrooms.name, dayname(classes.classDate) as dita
from classes 
  join courses on classes.idCourses = courses.idCourses
  join classrooms on classrooms.idClassroom = classes.idClassroom
order by classes.classDate;

-- 10. Is there any trainer that is also a student? 
select clients.idPerson, person.p_name, person.p_surname
 from clients
  join person on clients.idPerson = person.idPerson
 where clients.idPerson IN( select staff.idPerson from staff);

-- 11. I need a classroom that has more than 40 chairs but less than 5 pc?
SELECT classrooms.idClassroom, classrooms.name, classrooms.chairs, classrooms.m_2 FROM classrooms
where classrooms.chairs > 40 and classrooms.pc< 5;

-- 12. Who are our clients that have the most experience?
SELECT person.p_name, person.p_surname, clients.profession, clients.experienceYears
FROM Person JOIN clients ON person.idPerson =clients.idPerson
Where clients.experienceYears>5;

-- 13. Does anyone have the birthday today? 
set @a = curdate();
select person.p_name, person.p_surname, person.p_birthday, dayname(@a) as dita, year(@a) - year(person.p_birthday) as mbush 
 from person 
where day(person.p_birthday) = day(@a) and month(person.p_birthday) = month(@a);

-- 14.  Is the course with the id 1024 being held right now?

set @nowDate = curdate();
set @nowTime = curtime();
set @idCourses = 1024;

select courses.course_name, person.p_name, person.p_surname, classes.classDate as filloi
from classes 
  join courses on classes.idCourses = courses.idCourses
  join person on courses.idPerson = person.idPerson
  where classes.idCourses = @idCourses and 
  date(classes.classDate) = @nowDate  and
   subtime( subtime(@nowTime, time(classDate)), ('01:30:30')) < 0;
 
 
-- 15. Is the trainer with the id 10000028 teaching right now?
	set @idPerson = 10000028;
	set @nowDate = curdate();
	set @nowTime = curtime();
    
	select courses.course_name, person.p_name, person.p_surname, classes.classDate as filloi
	from classes 
	  join courses on classes.idCourses = courses.idCourses
	  join person on courses.idPerson = person.idPerson
	  where courses.idPerson = @idPerson and 
	  date(classes.classDate) = @nowDate  and
	   subtime( subtime(@nowTime, time(classDate)), ('01:30:30')) < 0;
       
-- 16. Which courses are being taught right now and who are their trainers?
set @nowDate = curdate();
set @nowTime = curtime();

select courses.course_name, person.p_name, person.p_surname, classes.classDate as filloi
from classes 
  join courses on classes.idCourses = courses.idCourses
  join person on courses.idPerson = person.idPerson
  where 
  date(classes.classDate) = @nowDate  and
   subtime( subtime(@nowTime, time(classDate)), ('01:30:30')) < 0;
 
 -- 17. How many students have attended each course in total so far?
select enrollment.idenrollment,  person.p_name, person.p_surname, courses.course_name,
 (
 select count(attendance.attended)
 from attendance
 where attendance.idEnrollment = enrollment.idenrollment and attendance.attended = 1
 ) as attendedKaqHere
from enrollment -- 
join person  on enrollment.idclient = person.idPerson
join courses on courses.idCourses = enrollment.idCourses;

-- 18. Show each staff what position it has? 
select person.p_name, person.p_surname, 
(      
       select 
            case when exists ( select * from trainers where trainers.idPerson = staff.idPerson)
                then ( 'trajner')
			else ( select administrators.position from administrators where administrators.idPerson = staff.idPerson)
        End
) as position
from staff
join person on staff.idPerson = person.idPerson;

-- 19. For the person with the id 10000001, is it a trainer or a non-trainer staff position? 
  set @a = 10000001;
  SELECT 
      CASE WHEN EXISTS (
            SELECT person.p_name
            FROM staff  
            join person on person.idPerson = staff.idPerson 
            WHERE staff.idPerson = @a	
      )
      THEN (
			select 
            case when exists (
            select * from trainers where trainers.idPerson = @a
            )
				then ( 'trajner' )
                else ( select administrators.position from administrators where administrators.idPerson = @a)
        End
      ) 
      ELSE ''
   END as "takon?";

