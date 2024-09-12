create database school;
use school;

#Create students table
create table students(
Student_id int primary key ,
First_name varchar(100) not null ,
Last_name varchar (100),
Age int check(age>=18),
Email varchar(255) unique not null
);

INSERT INTO students(Student_id, First_name,Last_name, Age,Email)
VALUES(1, "John","Doe", 20, "john.doe@example.com"),
(2, "Jane", "Smith", 22, "jane.smith@example.com"),
(3, "Michael", "Brown", 19, "michael.brown@example.com");

SELECT * from students;

ALTER table students ADD EnrollmentDate date;
ALTER table students MODIFY COLUMN Email VARCHAR (300);
ALTER table students
DROP COLUMN Last_name;