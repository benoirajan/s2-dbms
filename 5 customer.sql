create table customer (id int,name varchar(20), age int, hometown varchar(20),salary decimal);
Table created.



insert into customer values (1,'Ramesh',32,'Ahemadabad',2000);

1 row created.

insert into customer values (2,'Khilan',25,'Delhi',1500);

1 row created.

insert into customer values (3,'Hardik',27,'Bhopal',8500);

1 row created.

insert into customer values (4,'chaitali',25,'Mumbai',6500);

1 row created.

insert into customer values (5,'Kaushik',23,'Kota',2000);

1 row created.

insert into customer values (6,'Komal',22,'MP',4500);

1 row created.

insert into customer values (7,'Muffy',24,'Indore',10000);

1 row created.

insert into customer values (8,'Ramu',23,'Delhi',6000);

1 row created.

insert into customer values (9,'Rohit',24,'Ahamadabad',5000);

1 row created.

insert into customer values (10,'Shamil',23,'Mumbai',10000);

1 row created.



select * from customer where id=4;

        ID NAME                        AGE HOMETOWN                 SALARY
---------- -------------------- ---------- -------------------- ----------
         4 chaitali                     25 Mumbai                     6500



select distinct hometown from customer;

HOMETOWN
--------------------
Bhopal
Ahmedabad
Delhi
Mumbai
Kota
MP
Indore

7 rows selected.



select count(salary) from customer;

COUNT(SALARY)
-------------
           10