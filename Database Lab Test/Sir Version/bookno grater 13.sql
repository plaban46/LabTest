SET SERVEROUTPUT ON;

DECLARE 
     v_name book.book_name%type;
     v_course COURSE.COURSE_NO%type;
    CURSOR user_cursor IS  SELECT book_name, course_no into v_name,v_course from course,book where book_no>13; -- Cursor to fetch data from the Users table
BEGIN 
    OPEN user_cursor; -- Open the cursor 
    FETCH user_cursor INTO v_name,v_course; -- Fetch user data into v_user
    
    WHILE user_cursor%found  LOOP 
    
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);  -- Display user data
        DBMS_OUTPUT.PUT_LINE('Course No : ' || v_course);  -- Display user data
        FETCH user_cursor INTO v_name,v_course; -- Fetch user data into v_user
        
    END LOOP;
 
    CLOSE user_cursor; -- Close the cursor
END;
/
