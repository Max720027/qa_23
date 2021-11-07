
--HW3
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from  roles_employee;
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами. 
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary 
from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where monthly_salary < 2000;

--3.Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.salary_id, s.monthly_salary 
from employee_salary es
join salary s on es.salary_id=s.id 
ORDER by salary_id ;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.salary_id, s.monthly_salary
from employee_salary es
join salary s on es.salary_id=s.id
where monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary 
from employee_salary es
full outer join employees e on es.employee_id=e.id
full outer join salary s on es.salary_id=s.id
where monthly_salary is null;
--вариант 2
select e.employee_name, s.monthly_salary
from employees e
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where s.monthly_salary is null;

--6.Вывести всех работников с названиями их должности.

select employee_name Имена, roles_name Должности
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where roles_name is not null;

 --7.Вывести имена и должность только Java разработчиков.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.role_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Java%';


--8. Вывести имена и должность только Python разработчиков.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Python%';


--9. Вывести имена и должность всех QA инженеров.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%QA%';

 --10. Вывести имена и должность ручных QA инженеров.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Manual%';
--11. Вывести имена и должность автоматизаторов QA
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Auto%';
--12.Вывести имена и зарплаты Junior специалистов
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Jun%';

--13.Вывести имена и зарплаты Middle специалистов
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Mid%' and s.monthly_salary is not null;
 ;
 --14. Вывести имена и зарплаты Senior специалистов
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Sen%' and s.monthly_salary is not null;

--15.Вывести зарплаты Java разработчиков
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jav%' and --s.monthly_salary is not null
;

-- 16.Вывести зарплаты Python разработчиков

select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Pyt%' --and s.monthly_salary is not null
;
--17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Pyt%' and roles_name  Like '%Jun%'  --and s.monthly_salary is not null
;
--18. Вывести имена и зарплаты Middle JS разработчиковВывести имена и зарплаты Middle JS разработчиков

select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Mid%' and roles_name  Like '%Script%'  
;

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Sen%' and roles_name  Like '%Script%'  
;
--20. Вывести зарплаты Junior QA инженеров
select employee_name ФИО , roles_name Должность , s.monthly_salary Бабосы 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jun%' and roles_name  Like '%QA%'  
;

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary ) as "Общак JUNOV"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jun%' --and s.monthly_salary is not null

--22. Вывести сумму зарплат JS разработчиков
select avg(s.monthly_salary ) as "Общак JS"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Script%' 
;
--23. Вывести минимальную ЗП QA инженеров
select avg(s.monthly_salary ) as "Общак QA"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 
;

--24. Вывести максимальную ЗП QA инженеров
select Max(s.monthly_salary ) as "Max Общак QA"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 
;
--25. Вывести количество QA инженеров
select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 

--26. Вывести количество Middle специалистов.
 select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Middle%' 
;
--27. Вывести количество разработчиков
select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%dev%' 
;
--28.Вывести фонд (сумму) зарплаты разработчиков
select sum(s.monthly_salary ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%dev%' 
;
--29. Вывести имена, должности и ЗП всех специалистов по возрастан
select 
e.employee_name, s.monthly_salary, r.roles_name 
from employees  e 
join roles_employee re on re.employee_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
order by e.employee_name;

;
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select 
e.employee_name, s.monthly_salary, r.roles_name 
from employees  e 
join roles_employee re on re.employee_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary
;
--31.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select 
e.employee_name, s.monthly_salary, r.roles_name 
from employees  e 
join roles_employee re on re.employee_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary <2300
order by s.monthly_salary
;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select 
e.employee_name, s.monthly_salary, r.roles_name 
from employees  e 
join roles_employee re on re.employee_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
where s.monthly_salary in (1100,1500,2000)
order by s.monthly_salary 
;



---------------------------------------------------------------------------
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from  roles_employee;
