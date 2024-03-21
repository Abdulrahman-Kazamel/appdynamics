** **Backup EUM Database:


cd \[EUM_HOME\]\\mysql

 

./mysqldump -u root \--password \--protocol=TCP -P 3388 \--databases eum_db \--add-drop-database \> eum_db_bkup.sql

 


 

 

 

 

 

Login to EUM Database and delete the following entries from accounts table and account_credential table

cd \[EUM_HOME\]\\mysql

 

.\\bin\\mysql -u root -p \--port 3388 \--socket mysql.sock

 

USE eum_db;

 

DELETE FROM eum_db.accounts WHERE account_name=\"\";

 

DELETE FROM eum_db.account_credential WHERE account_name=\"\";

 

exit;

 

 

 
