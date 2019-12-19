use titles;
select distinct title from titles;

use employees;
select distinct last_name from employees
where last_name like 'e%' and last_name like '%e'
group by last_name order by last_name asc;
# e%e

select distinct first_name, last_name from employees
where last_name like 'e%' and last_name like '%e'
group by first_name, last_name order by last_name asc;

select distinct last_name from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

select distinct last_name, count(*) from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(*) desc ;

select gender, count(gender) from employees
where first_name IN('Irena', 'Vidya', 'Maya')
group by gender
order by count(gender) desc;



