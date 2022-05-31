SQL> create trigger emp_salary_update
  2    before insert or update on emp
  3    for each row
  4       when(new.id>0)
  5    declare
  6       sd number;
  7    begin
  8       dbms_output.put_line('New: '|| :new.salary ||' old: '|| :old.salary );
  9  end;
 10   /

Trigger created.

SQL> select * from emp;

        ID NAME                       DEPT     SALARY
---------- -------------------- ---------- ----------
         1 Eldo                          1      60000
         2 Bibi                          2      50000
         3 Raju                          3      70000
         4 Anit                          3      20000



SQL> set serveroutput on;
SQL> insert into emp values(5,'Ben',3,30000);
New: 30000 old:

1 row created.

SQL> update emp set salary=salary+1000;
New: 61000 old: 60000
New: 51000 old: 50000
New: 71000 old: 70000
New: 31000 old: 30000
New: 21000 old: 20000

5 rows updated.

SQL>


