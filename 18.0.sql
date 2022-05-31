DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE emp 
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no customers selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected '); 
   END IF;  
END; 
/ 

5 customers selected

PL/SQL procedure successfully completed.


DECLARE 
   cid emp.id%type; 
   name emp.name%type; 
   sal emp.salary%type; 
   CURSOR c_customers is 
      SELECT id, name, salary FROM emp; 
BEGIN 
   OPEN c_customers; 
   LOOP 
   FETCH c_customers into cid, name, sal; 
      EXIT WHEN c_customers%notfound; 
      dbms_output.put_line(cid || ' ' || name || ' ' || sal); 
   END LOOP; 
   CLOSE c_customers; 
END; 
/