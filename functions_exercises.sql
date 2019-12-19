use employees;

# // ORDER first
select * from employees where first_name IN('Irena', 'Vidya', 'Maya')
order by first_name;

# // ORDER first and last
select * from employees where first_name IN('Irena', 'Vidya', 'Maya')
order by first_name , last_name;

# // ORDER last name first
select * from employees where first_name IN('Irena', 'Vidya', 'Maya')
order by last_name , first_name;


# // DESC
select * from employees where LOWER(last_name) like 'e%'
order by emp_no desc, last_name desc;


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

use employees;
select concat(first_name, ' ', last_name) from employees where last_name like '%e'
or last_name like 'e%';

select * from employees where last_name like '%e'
                           and last_name like 'e%';

select datediff(now(), hire_date) from employees where
(month(birth_date)=12 and day(birth_date)=25)
and hire_date between '1989-12-31' and '2000-01-01'
order by birth_date, hire_date desc;

select * from employees where last_name like '%q%'
                          and last_name not like '%qu%';




