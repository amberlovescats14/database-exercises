use employees;


select * from employees where first_name IN('Irena', 'Vidya', 'Maya');

select * from employees where LOWER(last_name) like 'e%';

select * from employees where hire_date
    between '1989-12-31' and '2000-01-01';

select * from employees where
month(birth_date)= 12
 and day(birth_date)= 25;

select * from employees where last_name like '%q%';

# part two
select * from employees where first_name='Irena'
or first_name='Vidya' or first_name='Maya';

select * from employees where (first_name='Irena'
        or first_name='Vidya' or first_name='Maya') and gender='M';

select * from employees where last_name like '%e'
or last_name like 'e%';

select * from employees where last_name like '%e'
                           and last_name like 'e%';

select * from employees where
(month(birth_date)=12 and day(birth_date)=25)
and hire_date between '1989-12-31' and '2000-01-01';

select * from employees where last_name like '%q%'
                          and last_name not like '%qu%';




