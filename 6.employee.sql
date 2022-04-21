
create table employee(    
    id int,
    name varchar(30),
    lname varchar(10),
    dept varchar(10),
    location varchar(10),
    salary decimal
);
Table created.

insert into employee values(1,'Harshad','Basheer','Marketing','Pune',10000);
1 row created.

insert into employee values(2,'Anurag','Rajput','IT','Mumbai',20000);
1 row created.

insert into employee values(3,'Chaitali','Tarle','IT','Chennai',30000);
1 row created.

insert into employee values(4,'Pranjal','Pattil','IT','Chennai',25000);
1 row created.

insert into employee values(5,'Suraj','Thripathi','Marketing','Pune',15000);
1 row created.

insert into employee values(6,'Roshni','Jadhav','Finance','Bangalore',20000);
1 row created.

insert into employee values(7,'Sandhya','Jain','Finance','Bangalore',20000);
1 row created.

commit;
Commit complete.

a)
SQL> select * from employee where location = 'Chennai' and dept = 'IT';

        ID NAME       LNAME      DEPT       LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         3 Chaitali   Tarle      IT         Chennai         30000
         4 Pranjal    Pattil     IT         Chennai         25000



b)
SQL> select * from employee where location = 'Chennai' or dept = 'IT';

        ID NAME       LNAME      DEPT       LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         2 Anurag     Rajput     IT         Mumbai          20000
         3 Chaitali   Tarle      IT         Chennai         30000
         4 Pranjal    Pattil     IT         Chennai         25000


c)
select name as emp_fn,location as address from employee;

EMP_FN     ADDRESS
---------- ----------
Harshad    Pune
Anurag     Mumbai
Chaitali   Chennai
Pranjal    Chennai
Suraj      Pune
Roshni     Bangalore
Sandhya    Bangalore


d)
select * from employee where name like 'S%';

        ID NAME       LNAME      DEPT       LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         5 Suraj      Thripathi  Marketing  Pune            15000
         7 Sandhya    Jain       Finance    Bangalore       20000

e)
select sum(salary) as salary, location from employee group by location;

    SALARY LOCATION
---------- ----------
     20000 Mumbai
     40000 Bangalore
     25000 Pune
     55000 Chennai

f)
select sum(salary) as salary, location from employee group by location having sum(salary)>10000;

    SALARY LOCATION
---------- ----------
     20000 Mumbai
     40000 Bangalore
     25000 Pune
     55000 Chennai

g)
select * from employee order by name asc;

        ID NAME       LNAME      DEPT       LOCATION       SALARY
---------- ---------- ---------- ---------- ---------- ----------
         2 Anurag     Rajput     IT         Mumbai          20000
         3 Chaitali   Tarle      IT         Chennai         30000
         1 Harshad    Basheer    Marketing  Pune            10000
         4 Pranjal    Pattil     IT         Chennai         25000
         6 Roshni     Jadhav     Finance    Bangalore       20000
         7 Sandhya    Jain       Finance    Bangalore       20000
         5 Suraj      Thripathi  Marketing  Pune            15000
