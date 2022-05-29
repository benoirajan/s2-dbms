21-4-22

SQL> select sname,age from sailors where age in (select min(age) from sailors);

SNAME                       AGE
-------------------- ----------
Zorba                        16

SQL> select rating,avg(age) as avg_age from sailors group by rating;

    RATING    AVG_AGE
---------- ----------
         1         33
         8       40.5
         7         40
         3       44.5
        10       25.5
         9         35

6 rows selected.

SQL> select count(distinct sname) from sailors;

COUNT(DISTINCTSNAME)
--------------------
                   9

SQL> select avg(age) as avg_age from sailors;

   AVG_AGE
----------
      36.9
