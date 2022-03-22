create table students(roll int, name varchar(30),course varchar(10),year int);

alter table students add primary key(roll);

SQL> insert into students values(2,'athul','mca',2021);

1 row created.

SQL> insert into students values(3,'ben','mca',2021);

1 row created.

SQL> insert into students values(4,'eldose','mca',2021);

1 row created.

SQL> insert into students values(5,'fasil','mca',2021);

1 row created.

SQL> select * from students;

      ROLL NAME                           COURSE           YEAR
---------- ------------------------------ ---------- ----------
         1 anit                           mca             2021
         2 athul                          mca              2021
         3 ben                            mca              2021
         4 eldose                         mca              2021
         5 fasil                          mca              2021
