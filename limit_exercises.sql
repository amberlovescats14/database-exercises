use employees;

select distinct last_name from employees
order by last_name desc limit 10;

select * from employees where
    (month(birth_date)=12 and day(birth_date)=25)
    and hire_date between '1989-12-31' and '2000-01-01'
    order by birth_date, hire_date desc limit 5;

select * from employees where
    (month(birth_date)=12 and day(birth_date)=25)
                          and hire_date between '1989-12-31' and '2000-01-01'
order by birth_date, hire_date desc limit 5 offset 50;