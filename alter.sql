-- Active: 1747614041352@@127.0.0.1@5432@ph
SELECT  *
FROM person2

ALTER TABLE person2 ADD COLUMN email VARCHAR(25) DEFAULT 'example@gmail.com' NOT NULL;

ALTER TABLE person2 
         DROP email;



-- Rename the table

alter table person2
     rename column age to user_age;





INSERT INTO person2 VALUES(8, 'test2', 30, 'test@gmail.com')

alter table person2
       alter column user_name type varchar(50);


alter table person2
       alter column user_age set not null;

    --    NOT NULL DROP
alter table person2
       alter column user_age drop not null;



-- Alter tables for unique, primary key etc


ALTER TABLE person2
     ADD constraint pk_person2_user_age PRIMARY KEY(user_age);



-- DROP UNIQUENESS

ALTER TABLE person2
        DROP CONSTRAINT unique_person2_user_age;

SELECT  *
FROM person2