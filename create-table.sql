/*drop table worker, department;*/

create table department (
    id serial primary key,
    name varchar not null);

create table worker (
    id serial primary key,
    name varchar not null,
    email varchar,
    salary int not null,
    department_id int not null references department(id));


insert into department (name) values
    ('programmer'),
    ('manager'),
    ('junior'),
    ('CEO'),
    ('CTO');

insert into worker (name, email, salary, department_id) values
    ('Anton', 'kapranov@gmail.com', 250000, 5),
    ('Olga', 'odintsova@gmail.com', 150000, 1),
    ('Dmitry', 'diman@gmail.com', 50000, 1),
    ('Artur', 'artur@gmail.com', 300000, 4),
    ('Olga', 'popova@gmail.com', 150000, 1),
    ('Alex', 'alex@gmail.com', 80000, 2), 
    ('Natasha', 'natasha@gmail.com', 70000, 2),
    ('Vasya', 'vasya@gmail.com', 70000, 2),
    ('Dasha', 'dasha@gmail.com', 80000, 2),
    ('Katya', 'katya@gmail.com', 75000, 2);

select department.name as department_name, sum(worker.salary)
from department, worker
where department.id = worker.department_id
group by department.name;