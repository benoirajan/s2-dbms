Create a table and execute dcl statements(grant,revoke)

create user benoi identified by 123;
User created.

grant create session to benoi;
Grant succeeded.

grant select on emp to benoi;
Grant succeeded.

connect benoi /123
Connected.

select * from system.emp;
        ID NAME                       DEPT     SALARY
---------- -------------------- ---------- ----------
         1 Eldo                          1      60000
         2 Bibi                          2      50000
         3 Raju                          3      70000
         4 Anit                          3      20000

connect system /manager
Connected.

revoke select on emp from benoi;
Revoke succeeded.
