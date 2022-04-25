8
21-4-22: thu

create table silors (sid int primary key,sname varchar(40),rate int,age int);

Table created.

create table boats (
    bid int primary key,
    bname varchar(40),
    color varchar(49));

Table created.


create table resv(bid int,sid int,day date, foreign key(bid) references boats(bid),foreign key(sid) references silors(sid));

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




