DECLARE
    v_sql VARCHAR2(1000);
BEGIN 
    v_sql := 'CREATE TABLE dept (
        dept_id NUMBER(20),
        dept_name VARCHAR2(30),
        faculty VARCHAR2(30),
        no_of_student NUMBER(20),
        PRIMARY KEY(dept_id)
    )';
    EXECUTE IMMEDIATE v_sql;
     
    v_sql := 'CREATE TABLE course (
        course_no VARCHAR2(20),
        course_name VARCHAR2(50),
        year_semester NUMBER(3),
        credit NUMBER(20,4),
        dept_id NUMBER(20),
        PRIMARY KEY(course_no),
        FOREIGN KEY(dept_id) REFERENCES dept(dept_id) on delete cascade
    )';
    EXECUTE IMMEDIATE v_sql;
     
    v_sql := 'CREATE TABLE book (
        book_no NUMBER(20),
        book_name VARCHAR2(50),
        author VARCHAR2(50),
        book_edition NUMBER(4),
        course_offering NUMBER(6),
        PRIMARY KEY(book_no)
    )';
    EXECUTE IMMEDIATE v_sql;
     
    v_sql := 'CREATE TABLE relation (
        book_no NUMBER(20),
        course_no VARCHAR2(20),
        PRIMARY KEY(book_no, course_no),
        FOREIGN KEY(book_no) REFERENCES book(book_no) on delete cascade,
        FOREIGN KEY(course_no) REFERENCES course(course_no) on delete cascade
    )';
    EXECUTE IMMEDIATE v_sql;
     
    DBMS_OUTPUT.PUT_LINE('Tables created successfully');
    DBMS_OUTPUT.PUT_LINE('');     
    
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Found');
END;
