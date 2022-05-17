8
21-4-22: thu

create table silors (sid int primary key,sname varchar(40),rate int,age int);

Table created.

create table boats (
    bid int primary key,
    bname varchar(40),
    color varchar(49));

Table created.


create table resv(bid int,sid int,day date);

Table created.


SQL> insert into silors values(22,'Dustin',7,45);

1 row created.

SQL> insert into silors values(29,'Brutus',1,33);

1 row created.

SQL> insert into silors values(31,'Lubber',8,55);

1 row created.

SQL> insert into silors values(32,'Andy',8,25);

1 row created.

SQL> insert into silors values(64,'Horatio',7,35);

1 row created.

SQL> insert into silors values(71,'Zorba',10,16);

1 row created.

SQL> insert into silors values(74,'Horatio',9,35);

1 row created.

SQL> insert into silors values(75,'Art',3,25);

1 row created.

SQL> insert into silors values(95,'Bob',3,63);

1 row created.



SQL> insert into resv values(22,101,date '1998-10-10');

1 row created.

SQL> insert into resv values(22,101,date '1998-10-10');

1 row created.

SQL> insert into resv values(22,102,date '1998-10-10');

1 row created.

SQL> insert into resv values(22,103,date '1998-08-10');

1 row created.

SQL> insert into resv values(22,104,date '1998-07-10');

1 row created.

SQL> insert into resv values(31,102,date '1998-10-11');

1 row created.

SQL> insert into resv values(31,103,date '1998-06-11');

1 row created.

SQL> insert into resv values(31,104,date '1998-12-11');

1 row created.

SQL> insert into resv values(64,101,date '1998-05-09');

1 row created.

SQL> insert into resv values(64,102,date '1998-08-09');

1 row created.

SQL> insert into resv values(74,103,date '1998-08-09');





3)
SQL> select distinct sname from silors;

SNAME
---------------
Lubber
Brutus
Andy
Art
Bob
Dustin
Zorba
Horatio

8 rows selected.


4)
SQL> select * from silors,resv where silors.sid = resv.sid and bid = 101;

       SID SNAME                 RATE        AGE        SID        BID DAY
---------- --------------- ---------- ---------- ---------- ---------- ---------
        22 Dustin                   7         45         22        101 10-OCT-98
        22 Dustin                   7         45         22        101 10-OCT-98
        64 Horatio                  7         35         64        101 09-MAY-98


5)
SQL> select distinct sname from silors,resv where silors.sid = resv.sid;

SNAME
---------------
Lubber
Dustin
Horatio

6)
SQL> select distinct sname, age from silors s,boats b,resv r where s.sid=r.sid and r.bid=b.bid and b.color = 'red' order by s.age;

SNAME                  AGE
--------------- ----------
Horatio                 35
Dustin                  45
Lubber                  55


7)

SQL> select sname from silors where sid in (select sid from resv group by day,sid having count(day)>1);

SID SNAME
--- ---------------
 22 Dustin
