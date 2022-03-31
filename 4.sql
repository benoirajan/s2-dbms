24.03.22 - THU

Create a table and execute TCL statement
(commit, rollback, savepoint)


1.	create table tclf(id in primary key, name varchar(30));
	Table created

2.	insert into tclfun values(1,'Ben');
    
    commit;
	Commit complete.
	
	insert into tclfun values(2,'Athul');
	1 row created.

	savepoint s1;
	Savepoint created.

	insert into tclfun values(3,'Anit');
	1 row created.

	rollback to savepoint s1;

	insert into tclfun values(3,'Fathima');
	1 row created.

	commit
	Commit complete.



