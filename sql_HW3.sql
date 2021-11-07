
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
