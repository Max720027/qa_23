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
values (default, 'Kalmikov Nikita');
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


select * from roles_employee;












 