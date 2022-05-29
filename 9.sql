21-4-22

SQL> select sid from reserves,boats where reserves.bid=boats.bid and color='red' union select sid from reserves,boats where reserves.bid=boats.bid and color='green';

       SID
----------
        22
        31
        64
        74

SQL> select sname from sailors intersect select sname from sailors,reserves where sailors.sid=reserves.sid and bid=103;

SNAME
--------------------
Dustin
Horatio
Lubber

SQL> select sname,age from sailors where age in (select min(age) from sailors);

SNAME                       AGE
-------------------- ----------
Zorba                        16

SQL> select s.sname from sailors s where not exists ((select b.bid from boats b) minus (select r.bid from reserves r where r.sid=s.sid));

SNAME
--------------------
Dustin
