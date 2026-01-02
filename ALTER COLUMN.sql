-- Create table

create table users(
user_id serial primary key,
username varchar(50) not null,
email varchar(100) not null,
age int,
city varchar (50)


);
select *from users;

insert into users (username, email,age, city) 
values
('abc', 'dicjdk', 18, 'fvndsk'),
('fjenf', 'dfkdk', 78, 'dkfek'),
('djfd', 'nkfasnk', 78, 'fjnasjf'),
('dvdjvnk', 'djnvjdsn',89, 'dfkdskf');

select username, age, city from users;

update users
set age=26
where username='abc';
select *from users order by user_id asc;

    
--TO RENAME THE USERNAME COLUMN TO FULL NAME:-
ALTER TABLE USERS
RENAME COLUMN USERNAME TO FULLNAME;
-- TO ADD NOT NULL IN CITY :-
ALTER TABLE USERS
ALTER COLUMN CITY SET NOT NULL;

-- TO CHANGE THE TABLE NAME:-
ALTER TABLE USERS
RENAME TO CUSTOMERS;










