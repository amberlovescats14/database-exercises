use employees;

select first_name, Max(hire_date) from employees
where gender='F'
order by hire_date limit 10;


#BONUSES
# what are the names of the 10 most recently hired females in the company? the first 10? (no group by needed)
select concat(e.first_name, ' ', e.last_name) as name, hire_date as 'Hire Date'
from employees as e
where gender = 'F'
order by hire_date desc limit 10;
# what are the top three most common job titles?
select title as Title, count(title) as 'Count'
from titles
group by title
order by count(title) desc limit 3;
# what is the most common 'from date' for job titles? for staff only?
select from_date as 'Hire Day', count(from_date), title as 'Title'
from titles
where title = 'Staff'
group by from_date
order by count(from_date) desc limit 10;
# what is the highest employee number for an engineer?
select max(emp_no) as 'Employee Number', title as 'Title'
from titles
where title='Engineer';
# what is the most common birthday?
select birth_date as 'Birth Day', count(birth_date) as 'Count'
from employees
group by birth_date
order by Count(`Birth Day`) desc limit 1;

# what is the most common female birthday? male?
select birth_date as 'Birth Date' , count(birth_date)
from employees
where gender='F'
group by birth_date
order by count(birth_date) desc limit 1 ;

# what is the most common hire date for female and male employees?
select hire_date, count(hire_date)
from employees
group by hire_date
order by count(hire_date) desc limit 1;

# what is the longest last name of someone born on March 8, 1952
select last_name
from employees
    where length(last_name) = (
        select max(length(last_name))
        from employees
        where birth_date = '1952-03-08'
        );


# what is the lowest employee number for the
#senior engineers in the company?

select * from titles;

select min(e.emp_no) as 'Employee Number'
from employees as e
join titles as t
    on e.emp_no = t.emp_no
where t.title = 'Senior Engineer'




# sqlzoo.net
# hackerrank.com/domains/sql
# w3resourse.com/sql-exercises


# dev.mysql.com/doc/sakila/en


