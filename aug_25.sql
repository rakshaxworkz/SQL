CREATE TABLE sports(sp_id int, sp_name varchar(15), 
sp_type varchar(20), salary bigint);
DDL: Data definition Language.
1)CREATE
DESC: Describe.

DESC sports;
DML:DATA MANIPULATION LANGUAGE.
1)SELECT:

DDL:
DML:
SELECT:
SELECT * FROM table_name; 
FROM: CLAUSE
SELECT * FROM sports;
SELECT sp_id, sp_name from sports;
DDL:
1)CREATE
2)ALTER
a)ADD NEW COLUMN TO EXISTING TABLE.
b)Remove the column from existing table.
c)RENAME THE COLUMN NAME.
d)CHANGE THE DATATYPE OF COLUMN.
/*Syntax for adding new column to existing table
ALTER TABLE table_name ADD COLUMN column_name datatype;*/
ALTER TABLE sports ADD COLUMN no_of_players int;
ALTER TABLE sports ADD COLUMN country varchar(20),
ADD COLUMN gender varchar(5);
/*Syntax for removing column from existing table
ALTER TABLE table_name DROP COLUMN column_name;*/
ALTER TABLE sports DROP COLUMN salary;
ALTER TABLE sports drop column country,
drop column gender;


 SELECT * FROM sports;
3)RENAME THE COLUMN
/*Syntax for renaming the column name
ALTER TABLE table_name RENAME COLUMN existing_column_name TO new_column_name;*/
ALTER TABLE sports RENAME column sp_id to id;
/*Syntax for changing the datatype of column
ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/

ALTER TABLE table_name ADD COLUMN column_name datatype;*/
ALTER TABLE table_name DROP COLUMN column_name;*/
ALTER TABLE table_name RENAME COLUMN existing_column_name TO new_column_name;*/
ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/

DDL:
1)CREATE
2)ALTER
3)DROP:
4)Truncate
TRUNCATE table sports;


ALTER TABLE sports ADD COLUMN country varchar(20),

DML:
1)SELECT: 
2)INSERT:
SELECT * FROM sports;

INSERT INTO table_name values(value1, value2, ......);
INSERT INTO sports VALUES(1, 'Cricket','Outdoor',11);
INSERT INTO sports VALUES(2,'football','Outdoor',15);

INSERT INTO sports(id,sp_type) values(3,'indoor');

INSERT INTO sports values(4,'chess','indoor',2),
(5,'Carrom','indoor',4),
(6,'baseball','outdoor',11),
(7,'Badminton','indoor',4);

WHERE: CLAUSE

SELECT * FROM sports where id = 5;

SELECT * FROM sports where sp_name = 'football';

SELECT sp_name from sports where id = 5;

SELECT * from sports where sp_type = 'indoor';

SELECT * FROM sports where id = 2 or sp_name = 'Carrom';

SELECT * FROM sports where id = 1 or id =3 or id = 5 or id = 7 or id ='abc';

in:
SELECT * FROM sports where id IN(1,3,5,7,'abc');

1 - 100 ids

NOT IN:
-SELECT * FROM sports where id not in(1,2);

1-100
BETWEEN:

SELECT * FROM sports where id between 3 and 6;
SELECT * FROM sports where id not between 3 and 6;









AND:
COND1  COND2   RES
TRUE   FALSE   FALSE
TRUE   TRUE    TRUE
FALSE  TRUE    FALSE
FALSE  FALSE   FALSE

ALTER TABLE product_info ADD COLUMN price bigint;
DESC product_info;

ALTER TABLE product_info DROP COLUMN p_name;
ALTER TABLE product_info RENAME COLUMN id to product_id;
ALTER TABLE product_info MODIFY COLUMN product_id varchar(10);

SELECT * FROM product_info;

INSERT INTO product_info VALUES('1', 100 , 5000);
INSERT INTO product_info VALUES('2', 300 , 15000);

SELECT * FROM product_info WHERE order_id = 300;

TRUNCATE product_info;

SELECT * FROM sports;
DDL: CREATE, ALTER, DROP , TRUNCATE
DML:
SELECT
INSERT
UPDATE
DELETE

TCL:Transaction control language.
1)commit
2)rollback

UPDATE table_name set column_name = value;
UPDATE sports set sp_name = 'Hockey';
SELECT * FROM sports;
UPDATE sports set sp_name = null
where id = 3;
select * from sports where id = 3;
UPDATE sports set sp_name = 'Basketball', no_of_players = 5
where id = 3;
SELECT * FROM sports where sp_type = 'Indoor'
AND no_of_players = 4 and id = 7;

UPDATE sports set sp_name = 'Kabbadi'
where sp_type = 'Indoor' and no_of_players = 4 and id = 7;
UPDATE sports set no_of_players = 15
where sp_name in('Cricket','Volleyball','Baseball');

UPDATE sports set sp_type = 'International'
where id = 2 or id = 4 or no_of_players = 4;


SELECT * FROM sports;

UPDATE sports SET no_of_players = 11
where id = 1;
SELECT * FROM sports where no_of_players = 15;

UPDATE sports set sp_type = 'national'
where no_of_players = 15;


DELETE:
SELECT * FROM sports;

DELETE FROM table_name;
DELETE FROM sports where id = 4;
SELECT * FROM sports where id = 1
and sp_name = 'Cricket' and sp_type = 'Outdoor'
and no_of_players = 11;

DELETE FROM sports where id = 1;

SELEct * FROM sports where no_of_players = 4 and id = 7;

DELETE FROM sports where no_of_players = 4
and id = 7 and sp_name = 'Kabbadi';

CREATE TABLE emp(id int, emp_name varchar(20),
emp_dept varchar(20), emp_sal bigint, emp_id int);
SELECT * FROM emp;

DELETE FROM emp where id between 
5 and 11;

DELETE FROM emp where id not in(2,3);

AGGREAGTE FUNCTIONS:
1)COUNT:
ALIAS: As alias_name
SELECT COUNT(id) as no_of_rows FROM emp;
2)sum:
SELECT SUM(emp_sal) as total_sal from emp
where id <=10;

SELECT SUM(emp_sal) as total_sal from emp
where id between 1 and 10;

MAX:
SELECT MAX(emp_sal) as max_sal from emp;

SELECT emp_id, emp_name, max(emp_sal) as max_sal from emp;
MIN:

SELECT MIN(emp_sal) from emp;
AVG:
SELECT AVG(emp_sal) as avg_sal from emp;
SELECT * FROM emp;
DISTINCT:
SELECT DISTINCT(emp_dept) from emp;

ORDER BY:
SELECT * FROM emp order by emp_name desc;
SELECT DISTINCT FROM WHERE GROUP BY HAVING 
ORDER BY;

LIMIT:
/*limit will return number rows to return*/
SELECT * FROM emp limit 5;
/*offset will avoid the rows and return number of rows*/
SELECT * FROM table_name limit offset, no_of_rows to be returned;
SELECT * FROM emp limit 5, 15;

SELECT * FROM emp;
update emp set emp_name = 'abc' where id =1;
CREATE TABLE emp_info AS SELECT * FROM emp;
SELECT * FROM emp;
ALTER TABLE emp ADD COLUMN emp_loc varchar(10);

ALTER TABLE emp MODIFY COLUMN 
emp_id varchar(20);
DESC emp;

RENAME:
RENAME table old_table to new_table;
RENAME TABLE emp to employee;
SELECT * FROM employee;

SELECT * FROM employee where emp_dept = 'dev';
update employee set emp_loc = 'Bng' where emp_dept in('dev');
UPDATE employee set emp_loc = 'Hyd' where emp_dept in('testing');
ALTER TABLE employee add column 
company_name varchar(20) default 'Xworkz';

ALTER TABLE employee drop column emp_loc;

GROUP BY:

SELECT emp_dept,COUNT(emp_dept) as emp_count from employee
group by emp_dept;

SELECT emp_dept,emp_name, emp_id, max(emp_sal) from employee
group by emp_dept;

SELECT emp_dept,emp_name, emp_id, max(emp_sal) as max_sal from employee
group by emp_dept HAVING max_sal > 60000;

HAVING:
SELECT emp_dept, sum(emp_sal) as sum_of_sal from employee 
group by emp_dept;

SELECT emp_dept, sum(emp_sal) as sum_of_sal from employee 
group by emp_dept having sum_of_sal <200000;


SELECT emp_name, emp_dept, min(emp_sal) as min_sal from employee
group by emp_dept;

SELECT emp_dept, avg(emp_sal) as avg_sal from employee
 group by emp_dept;

SELECT * FROM employee;

SELECT LENGTH(emp_name) from employee;
SELECT CONCAT(emp_name,emp_dept) from employee;

CONSTRAINTS:
1)NOT NULL:

CREATE TABLE product_info(id int,
p_name varchar(20) NOT NULL, 
p_price decimal(7,2),
mfg_date date, created_at timestamp,
created_by varchar(10), modified_at timestamp,
modified_by varchar(20));

SELECT * FROM product_info;

INSERT INTO product_info values
(1,'Mobile',25000.50,'2024-08-25',
now(), 'abc',now(), 'abc');

INSERT INTO product_info values
(2,'Laptop',45000.5000,'2024-06-12',
now(), 'abc',now(), 'abc');
INSERT INTO product_info values
(3,'earpods',15000.50,'2024-05-25',
now(), 'abc',now(), 'abc');
INSERT INTO product_info values
(4,'Wtach',35000.50,'2024-08-25',
now(), 'abc',now(), 'abc');
INSERT INTO product_info values
(5,'Watch',5000.50,'2024-08-25',
now(), 'abc',now(), 'abc');

INSERT INTO product_info values
(null,'ledbulb',4000.50,'2024-08-25',
now(), 'abc',now(), 'abc');
SELECT * FROM product_info;

ALTER TABLE product_info 
modify column p_price decimal(7,2) not null;

ALTER TABLE product_info 
MODIFY COLUMN id int not null;


DESC product_info;

UPDATE product_info set p_name = 'chair', modified_at = now(), modified_by = 'sunil'
where id = 4;
2)unique:


CREATE TABLE order_info(id int not null,
p_name varchar(20), order_id int unique);

SELECT * FROM order_info;
INSERT INTO order_info values(1,'Mobile',9001);
INSERT INTO order_info values(2,'Laptop',9002);
INSERT INTO order_info values
(3,'Tv',9004);

ALTER TABLE order_info add unique(p_name);

ALTER TABLE order_info add unique(id);








