rem path to mysql server bin folder
cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"

rem credentials to connect to mysql server
set mysql_user=me
set mysql_password=Akash@13

rem backup file name generation
set backup_path=F:\New Folder\MySQL Backup
set backup_name=my-all-databases

rem backup creation
mysqldump --user=%mysql_user% --password=%mysql_password% --all-databases --routines --events --result-file="%backup_path%\%backup_name%.sql"
if %ERRORLEVEL% neq 0 (
    (echo Backup failed: error during dump creation) >> "%backup_path%\mysql_backup_log.txt"
) else (echo Backup successful) >> "%backup_path%\mysql_backup_log.txt"