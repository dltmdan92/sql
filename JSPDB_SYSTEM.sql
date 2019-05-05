SELECT TABLESPACE_NAME, STATUS, CONTENTS FROM DBA_TABLESPACES;

SELECT FILE_NAME, BYTES, STATUS FROM DBA_DATA_FILES;

CREATE TABLESPACE JSP_DB
DATAFILE 'D:/WORK/ORACLEDB/ORADATA/JSPDB/DATAFILE/JSP_DB.dbf'
SIZE 256M AUTOEXTEND ON NEXT 4M MAXSIZE 2048M
LOGGING EXTENT MANAGEMENT LOCAL AUTOALLOCATE
BLOCKSIZE 8K SEGMENT SPACE MANAGEMENT MANUAL FLASHBACK ON;

ALTER USER JSP_ADMIN ACCOUNT UNLOCK;

ALTER USER JSP_ADMIN DEFAULT TABLESPACE JSP_DB QUOTA UNLIMITED ON JSP_DB;

GRANT CREATE SYNONYM TO JSP_ADMIN;

GRANT CREATE SYNONYM TO JSP_DEV;

GRANT CREATE SESSION TO JSP_DEV;

GRANT EXECUTE ON DBMS_CRYPTO TO JSP_ADMIN;