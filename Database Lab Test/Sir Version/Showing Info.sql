SET SERVEROUTPUT ON;

DECLARE 
    v_user dept%ROWTYPE; -- Declare a variable of the user row type 
    CURSOR user_cursor IS SELECT * FROM dept; -- Cursor to fetch data from the dept table
BEGIN 
    OPEN user_cursor; -- Open the cursor 
    
    LOOP 
        FETCH user_cursor INTO v_user; -- Fetch and display user data 
        EXIT WHEN user_cursor%NOTFOUND; --Termination Criteria
 
        -- Display user data
        DBMS_OUTPUT.PUT_LINE('Dept ID: ' || v_user.dept_id); 
        DBMS_OUTPUT.PUT_LINE('Dept Name: ' || v_user.dept_name); 
        DBMS_OUTPUT.PUT_LINE('Faculty : ' || v_user.faculty); 
        DBMS_OUTPUT.PUT_LINE('No of Stu : ' || v_user.no_of_student);  
        
        DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
    END LOOP;
 
    CLOSE user_cursor; -- Close the cursor
END;
/
