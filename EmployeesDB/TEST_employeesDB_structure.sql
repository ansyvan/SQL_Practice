use employees;

show tables;

SELECT COUNT(*) AS NumberOfColumns
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';
 
SELECT column_name
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';
 
SELECT column_name, data_type
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';
 
SELECT column_name, column_type
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';
 
SELECT column_name, is_nullable
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';
 
SELECT column_name, column_key
  FROM information_schema.columns
 WHERE TABLE_NAME = 'departments';