--1번
select f.employee_id 
    ,f.first_name 
    ,department_name
    ,s.first_name
from employees f
    ,employees s
    ,departments d
where f.manager_id=s.employee_id and f.department_id=d.department_id;

--2번
select region_name, country_name
from regions r , countries c
where r.region_id =c.region_id
order by region_name;

--3번
select d.department_id
    ,department_name
    ,first_name
    ,city
    ,country_name
    ,region_name
from departments d
    ,employees e
    ,locations l
    ,countries c
    ,regions r
where d.manager_id=e.employee_id
    and d.location_id=l.location_id
    and l.country_id = c.country_id
    and c.region_id = r.region_id
order by city;

--4번
select jh.employee_id
    ,e.first_name
from employees e
    ,job_history jh
    ,jobs js
where e.employee_id=jh.employee_id and jh.job_id=js.job_id and job_title='Public Accountant';

--5번
select employee_id
    ,first_name
    ,last_name
    ,department_name
from employees e, departments d
where d.department_id =e.department_id
order by last_name asc;

--6번
select emp.employee_id
    ,emp.last_name
    ,emp.hire_date
from employees emp
    ,employees man
where emp.manager_id=man.employee_id and emp.hire_date<man.hire_date; --최근날짜가 큰값