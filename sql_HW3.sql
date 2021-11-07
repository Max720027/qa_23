--1.
create table employees (
  id serial primary key,
  employee_name varchar (50) not null --varchar ��� ��� ������, ��������� �� ���� ����� �������� �������(�������������), � ������� ������� ���������� �������� ������� ����� ���� � ������ ��������, ���� ����� ����� ������ ������� ������ ���� ��� �������� ������� �� ����� not null
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
 alter column monthly_salary type int   -- ������� ������������� �������� ��� �����������  ��������. ��������� ������ ������� � ������ �������� � varchar
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
alter column roles_name type varchar(50)    --(50) ����� �������� � ������ � int �� ���������
using roles_name :: varchar;      ---      ����������� ��������� ��� ��������� ���� ������ �������

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
--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������. 
select e.employee_name, s.monthly_salary from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary 
from employee_salary es
join employees e on es.employee_id=e.id
join salary s on es.salary_id=s.id
where monthly_salary < 2000;

--3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select es.salary_id, s.monthly_salary 
from employee_salary es
join salary s on es.salary_id=s.id 
ORDER by salary_id ;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select es.salary_id, s.monthly_salary
from employee_salary es
join salary s on es.salary_id=s.id
where monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, s.monthly_salary 
from employee_salary es
full outer join employees e on es.employee_id=e.id
full outer join salary s on es.salary_id=s.id
where monthly_salary is null;
--������� 2
select e.employee_name, s.monthly_salary
from employees e
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where s.monthly_salary is null;

--6.������� ���� ���������� � ���������� �� ���������.

select employee_name �����, roles_name ���������
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where roles_name is not null;

 --7.������� ����� � ��������� ������ Java �������������.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.role_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Java%';


--8. ������� ����� � ��������� ������ Python �������������.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Python%';


--9. ������� ����� � ��������� ���� QA ���������.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%QA%';

 --10. ������� ����� � ��������� ������ QA ���������.
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Manual%';
--11. ������� ����� � ��������� ��������������� QA
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Auto%';
--12.������� ����� � �������� Junior ������������
select employee_name , roles_name 
from employees e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
 where  roles_name  Like '%Jun%';

--13.������� ����� � �������� Middle ������������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Mid%' and s.monthly_salary is not null;
 ;
 --14. ������� ����� � �������� Senior ������������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Sen%' and s.monthly_salary is not null;

--15.������� �������� Java �������������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jav%' and --s.monthly_salary is not null
;

-- 16.������� �������� Python �������������

select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Pyt%' --and s.monthly_salary is not null
;
--17. ������� ����� � �������� Junior Python �������������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Pyt%' and roles_name  Like '%Jun%'  --and s.monthly_salary is not null
;
--18. ������� ����� � �������� Middle JS �������������������� ����� � �������� Middle JS �������������

select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Mid%' and roles_name  Like '%Script%'  
;

--19. ������� ����� � �������� Senior Java �������������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Sen%' and roles_name  Like '%Script%'  
;
--20. ������� �������� Junior QA ���������
select employee_name ��� , roles_name ��������� , s.monthly_salary ������ 
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jun%' and roles_name  Like '%QA%'  
;

--21. ������� ������� �������� ���� Junior ������������
select avg(s.monthly_salary ) as "����� JUNOV"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Jun%' --and s.monthly_salary is not null

--22. ������� ����� ������� JS �������������
select avg(s.monthly_salary ) as "����� JS"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Script%' 
;
--23. ������� ����������� �� QA ���������
select avg(s.monthly_salary ) as "����� QA"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 
;

--24. ������� ������������ �� QA ���������
select Max(s.monthly_salary ) as "Max ����� QA"
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 
;
--25. ������� ���������� QA ���������
select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%QA%' 

--26. ������� ���������� Middle ������������.
 select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%Middle%' 
;
--27. ������� ���������� �������������
select count(roles_name ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%dev%' 
;
--28.������� ���� (�����) �������� �������������
select sum(s.monthly_salary ) as "how many people ? "
from employees  e
left outer join roles_employee re on re.employee_id=e.id
left outer join roles r on r.id=re.role_id
left outer join employee_salary es on e.id=es.employee_id
left outer join salary s on s.id=es.salary_id
where  roles_name  Like '%dev%' 
;
--29. ������� �����, ��������� � �� ���� ������������ �� ���������
select 
e.employee_name, s.monthly_salary, r.roles_name 
from employees  e 
join roles_employee re on re.employee_id=e.id
join roles r on r.id=re.role_id
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id
order by e.employee_name;

;
--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
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
--31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
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

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
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
