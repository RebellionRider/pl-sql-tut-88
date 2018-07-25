SET SERVEROUTPUT ON;
DECLARE
    plsql_blk   VARCHAR2(250);
BEGIN     
    plsql_blk   :=  'DECLARE
                        var_user    VARCHAR2(10);
                    BEGIN
                        SELECT user INTO var_user FROM dual;
                        DBMS_OUTPUT.PUT_LINE(''Current User is ''||var_user);
                    END;';
    EXECUTE IMMEDIATE plsql_blk;
END;
/