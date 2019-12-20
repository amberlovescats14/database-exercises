use employees;

select * from employees as e
where e.hire_date = (
    select e.hire_date from employees as e where e.emp_no = 101010
    );

select distinct title from titles
where emp_no IN (
    select emp_no from employees where first_name = 'Aamod'
    );


select first_name, last_name from employees
where emp_no IN (
        select emp_no from dept_manager
        where emp_no IN (
            select emp_no from employees where gender = 'F'
            ) and to_date > now()
    ) ;



select dept_name from departments
where dept_no IN (
    select dept_no from dept_manager
    where emp_no IN (
        select emp_no from employees
        where gender ='F'
        ) and to_date > now()
    );


select first_name, last_name from employees
where emp_no IN (
    select emp_no from salaries
    where salary = (
    select max(salary) from salaries
        )
    );