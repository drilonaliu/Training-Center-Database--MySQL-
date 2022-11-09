# Training-Center-Database

This is a database built with MySQL on MySQL Workbench as a a final project for Datbases class for my University. It is a database for a proffesional training center for professionals. Clients can finish a programm within three to six months, or within 2 months to finish a course. Each course has a level of a difficulty so that the client can know if they are enough developed to enroll it. Each clients that finish a course will get certified. 

Bussiness rules 
  1. A client can enroll many courses or programms.
  2. A staff member can either be a administrator part of company or a trainer.
  3. Staff members can themselves be clients if they want to enroll a course/programm.
  4. Each client that finishes the training will get certified. 
  5. Trainings are held physically in classrooms.
  
  Based on the rules, the below database architecture was obtained.
  
  ![DB](https://user-images.githubusercontent.com/84543584/200957579-9665518a-9b18-484c-932a-8713d7888f9b.png)
 
 Dummy data was entered for testing out the quieries. At the time of writing, the queries were written so that they will give a query result set to the questions:
   1. Courses are taught by which trainers?,
   2. Who are the trainers and what is their profession?
   3. Who are our clients?
   4. All of the payments for courses.
   5. Who has enrolled in the courses?
   6.  All the attendance for the courses
   7. Who are the clients that have finished the course/ certified?
   8. Show on what date the payment was done for the staff.
   9. Which are the classes that are being taught now?
   10. Is there any trainer that is also a student? 
   11. Find a classroom that has more than 40 chairs but less than 5 pc.
   12. Who are our clients that have the most experience?
   13. Does anyone have the birthday today? If so, who?
   14.  Is the course with the id 1024 being held right now?
   15. Is the trainer with the id 10000028 teaching right now?
   16. Which courses are being taught right now and who are the trainers lecturing them?
   17. How many students have attended each course in total so far?
   18. Show each staff member what position it has? 
   19. For the person with the id 10000001, is it a trainer or a non-trainer staff position? 
   20. Caclulate the age of each client and a staff member?
   21. Who is the youngest client and the oldest trainer? 
