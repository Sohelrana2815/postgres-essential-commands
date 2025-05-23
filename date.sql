-- Active: 1747916847590@@127.0.0.1@5432@ph
-- SHOW timezone;

SELECT now();


create table timeZ (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

select * from timeZ;

INSERT INTO timeZ VALUES('2025-01-12 10:45:00','2025-02-12 11:45:00');

drop table timeZ;

select CURRENT_DATE

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(),'dd/mm/yyyy');


SELECT CURRENT_DATE - INTERVAL '25 year';

SELECT age (CURRENT_DATE,'2000-10-02');

SELECT * FROM students;

alter table students
        ADD COLUMN dob DATE;

alter table students
       drop COLUMN dob

-- SELECT *, age(CURRENT_DATE,dob) FROM students;

select extract(month from '2025-05-23'::date);

select 1::boolean;
select 0::boolean;
select 'y'::boolean;
select 'n'::boolean;