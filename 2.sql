//date 22-03-22

a.	create table dept(id int,name varchar(20),hod varchar(20));
	Table created
	create table emp(id int, name varchar(20),dept int, salary decimal);
	Table created

b.	insert into dept values(1,'D1','Rahul');
	insert into dept values(2,'D2','Mathew');
	insert into dept values(3,'D3','Ravi');
	insert into dept values(4,'D4','Ejjas');
	insert into dept values(5,'D5','John');
	5 row created


	insert into emp values(1, 'Eldo', '1', 50000);
	insert into emp values(2, 'Bibi', '2', 40000);
	insert into emp values(3, 'Raju', '3', 60000);
	insert into emp values(5, 'Fasil', '4', 30000);
	insert into emp values(4, 'Anit', '5', 10000);
	5 row created

c.	alter table dept add primary key(id);
    Table altered
	alter table emp add primary key(id),foreign key(dept) references dept(id);
	Table altered

d.display
	select * from emp;
		ID NAME                       DEPT     SALARY
	---------- -------------------- ---------- ----------
	         1 Eldo                          1      50000
	         2 Bibi                          2      40000
	         3 Raju                          3      60000
	         5 Fasil                         4      30000
	         4 Anit                          3      10000

	select * from dept;
		ID NAME                 HOD
	---------- -------------------- --------------------
	         1 D1                   Rahul
	         2 D2                   Mathew
	         4 D4                   Ejjas
	         3 D3                   Ravi

e.update
	update emp set salary = salary + 10000;
	5 rows updated 

	update dept set hod = 'Ben Basil' where id=3; 
	1 row updated 

f.delete
	delete from emp where id = 5;
	1 row deleted

	delete from dept where id = 4;
	1 row deleted
