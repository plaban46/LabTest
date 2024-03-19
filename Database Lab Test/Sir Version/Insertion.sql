set serveroutput on;

declare
        d_id dept.dept_id%type := 112;
        d_dept_name dept.dept_name%type := 'Civil';
        d_faculty dept.faculty%type := 'CE';
        d_no_of_student dept.no_of_student%type := 100;
 
        v_user dept%ROWTYPE; -- Declare a variable of the user row type
begin

        insert into dept(dept_id,dept_name,faculty,no_of_student)values(d_id, d_dept_name, d_faculty, d_no_of_student);
 
 
        -- Assign values to the v_user variable
        v_user.dept_id := 113; -- Example User_ID
        v_user.dept_name := 'ME';
        v_user.faculty := 'ME';
        v_user.no_of_student := 150; 

        -- Insert the data into the Users table
        INSERT INTO dept VALUES v_user; 
end;
/