
~]# sqlplus / as sysdba
SQL> select TO_CHAR(sysdate,'DD-MON-YYYY HH24:MI:SS') from dual;

TO_CHAR(SYSDATE,'DD-')
--------------------
12-NOV-2019 20:59:10   --copy


RUN
{
SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
set until time "to_date('12-NOV-2019 20:59:10','DD-MON-YYYY HH24:MI:SS')";
RESTORE DATABASE;
RECOVER DATABASE;
ALTER DATABASE OPEN RESETLOGS;
}


--RECOVER ENTIRE DATABASE
RUN
{
SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
RESTORE DATABASE;
RECOVER DATABASE;
ALTER DATABASE OPEN;
}
