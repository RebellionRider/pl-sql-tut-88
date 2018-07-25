SET SERVEROUTPUT ON;
DECLARE
    plsql_blk   VARCHAR2(500);
    plsql_block VARCHAR2(500);
BEGIN
    plsql_blk :='
        CREATE OR REPLACE FUNCTION circle_area (radius NUMBER) 
        RETURN NUMBER IS
            pi CONSTANT NUMBER(7,2) :=	3.141;
            area NUMBER(7,2);'||
       ' BEGIN
            area := pi * (radius * radius);
            RETURN area; 
        END;';
    EXECUTE IMMEDIATE plsql_blk;
END;
/
--Check if the function is created successfully or not.
BEGIN
    DBMS_OUTPUT.PUT_LINE(circle_area (20));
END;
/