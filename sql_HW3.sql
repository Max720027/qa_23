--1.
create table employees (
  id serial primary key,
  employee_name varchar (50) not null --varchar это тип данных, текстовый но туда можно заносить символы(универсальный), в скобках пишется количество символов которое может быть в ячейке столбика, если хотим чтобы нельзя создать пустое поле при создании строчки то пишем not null
 );
 insert into employees (id,employee_name)
values (default, 'Anna Ivanova');

insert into employees (id,employee_name)
values (default, 'Petr Ivanov');

insert into employees (id,employee_name)
values (default, 'Ivan Petrov');

insert into employees (id,employee_name)
values (default, 'Petr Svetlov');

insert into employees (id,employee_name)
values (default, 'Svetlana Babina');

insert into employees (id,employee_name)
values (default, 'Elena Vanina');

insert into employees (id,employee_name)
values (default, 'Ivan Elin');

insert into employees (id,employee_name)
values (default, 'Efim Pronin');

insert into employees (id,employee_name)
values (default, 'Maxim Ladov');

insert into employees (id,employee_name)
values (default, 'Ignat Popov');

insert into employees (id,employee_name)
values (default, 'Valerii Ponteleev');

insert into employees (id,employee_name)
values (default, 'Anton Antonov');

insert into employees (id,employee_name)
values (default, 'Kirill Davidov');

insert into employees (id,employee_name)
values (default, 'Nikita Efimov');

insert into employees (id,employee_name)
values (default, 'Alena Pavlova');

insert into employees (id,employee_name)
values (default, 'Gordey Sbruev');

insert into employees (id,employee_name)
values (default, 'Prosto Sasha');

insert into employees (id,employee_name)
values (default, 'Savelii Spiridonov');

insert into employees (id,employee_name)
values (default, 'Shandor Rado');

insert into employees (id,employee_name)
values (default, 'Sergey Savinov');
insert into employees (id,employee_name)
values (default, 'Sergey Safonov');
insert into employees (id,employee_name)
values (default, 'Lina Berina');
insert into employees (id,employee_name)
values (default, 'b\Boris Serpovec');
insert into employees (id,employee_name)
values (default, 'Mikhail Sofronov');
insert into employees (id,employee_name)
values (default, 'Xsenia Frolova');
insert into employees (id,employee_name)
values (default, 'Oxana Deveeva');
insert into employees (id,employee_name)
values (default, 'Allina Panova');
insert into employees (id,employee_name)
values (default, 'Natalia Sviridova');
insert into employees (id,employee_name)
values (default, 'Kirilova Nastya');
insert into employees (id,employee_name)
values (default, 'Kerimov Timur');
insert into employees (id,employee_name)
values (default, 'Malikov Daniil');
insert into employees (id,employee_name)
values (default, 'Anna Dimina');
insert into employees (id,employee_name)
values (default, 'Dmitrii Gorohov');
insert into employees (id,employee_name)
values (default, 'Polina Ryazanova');
insert into employees (id,employee_name)
values (default, 'Mariya Bednova');
insert into employees (id,employee_name)
values (default, 'Diman');
insert into employees (id,employee_name)
values (default, 'Tolya');
insert into employees (id,employee_name)
values (default, 'Anatolii');
insert into employees (id,employee_name)
values (default, 'Filip');
insert into employees (id,employee_name)
values (default, 'Timofei');
insert into employees (id,employee_name)
values (default, 'Saniya');
insert into employees (id,employee_name)
values (default, 'Igoryok');
insert into employees (id,employee_name)
values (default, 'Galya Loginova');
insert into employees (id,employee_name)
values (default, 'Stepan');
insert into employees (id,employee_name)
values (default, 'Evgeniy');
insert into employees (id,employee_name)
values (default, 'Albina');
insert into employees (id,employee_name)
values (default, 'Sneshanna');
insert into employees (id,employee_name)
values (default, 'Alla');
insert into employees (id,employee_name)
values (default, 'Sabina');
insert into employees (id,employee_name)
values (default, 'Boris');
insert into employees (id,employee_name)
values (default, 'Matvei');
insert into employees (id,employee_name)
values (default, 'Makar');
insert into employees (id,employee_name)
values (default, 'STEPA');
insert into employees (id,employee_name)
values (default, 'Frolov Stepan');
insert into employees (id,employee_name)
values (default, 'Fedulov');
insert into employees (id,employee_name)
values (default, 'Kokorin');
insert into employees (id,employee_name)
values (default, 'Egzhanov');
insert into employees (id,employee_name)
values (default, 'Panin Ivan');
insert into employees (id,employee_name)
values (default, 'Prosto Denis');
insert into employees (id,employee_name)
values (default, 'Valetova Galya');
insert into employees (id,employee_name)
values (default, 'Abravina Tanya');
insert into employees (id,employee_name)
values (default, 'Shelepkova Vera');
insert into employees (id,employee_name)
values (default, 'Panfilova Tamara');
insert into employees (id,employee_name)
values (default, 'Malova Zina');
insert into employees (id,employee_name)
values (default, 'Malov Roma');
insert into employees (id,employee_name)
values (default, 'Romanov Tema');
insert into employees (id,employee_name)
values (default, 'Ka    lmikov Nikita');
insert into employees (id,employee_name)
values (default, 'Baluev Vitaliy');
insert into employees (id,employee_name)
values (default, 'Zuev Ivan');
insert into employees (id,employee_name)
values (default, 'Sablin Maxim');


select * from employees;

--=============================================================
--2.
create table salary (
  id serial primary key,
  monthly_salary varchar (50) not null
  );
 alter table salary
 alter column monthly_salary type int   -- сделать целочисленные значения для дальнейшего  сложения. последняя строка пишется в случае перехода с varchar
 using monthly_salary :: integer;
 
insert into salary (id, monthly_salary)
values (default, 2500);

select * from salary;

--================================================================================
--3.

create table employee_salary (
id serial primary key,
employee_id Int not null unique,
salary_id int not null);
Insert into employee_salary (id, employee_id, salary_id)
Values (default,80,5);


select * from employee_salary;
--==========================================================================================

create table roles(
id serial primary key,
roles_name int not null unique 
);

alter table roles
alter column roles_name type varchar(50)    --(50) колич символов в ячейке в int не указывают
using roles_name :: varchar;      ---      обязательно указывать при изменении типа данных колонки

insert into roles (id, roles_name)
values (default,'Senior Automation QA engineer');

select * from roles;

--=====================================================================

create table roles_employee (
id serial primary key,
employee_id int not null unique,
foreign key (employee_id)
references employees (id),
role_id int not null,
foreign key (role_id)
references roles (id)
);

insert into roles_employee(id, employee_id, role_id)
values (default, 40, 6);



select * from role s_employee;







--===========================================================================================================================
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
