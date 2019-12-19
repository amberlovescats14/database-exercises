use employees;

select first_name, Max(hire_date) from employees
where gender='F'
order by hire_date limit 10;

