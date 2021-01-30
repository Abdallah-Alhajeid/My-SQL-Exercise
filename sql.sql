    <!-- ----------------------------------------------Task 1------------------------------------------------- -->

<!-- 1. Write a SQL statement to create a simple table countries
including columns country_id,country_name and region_id. -->

<!-- 
CREATE TABLE countries (
        country_id int,
        country_name varchar(255),
        region_id int
    ); -->

    <!-- ----------------------------------------------Task 2------------------------------------------------- -->

<!-- 2. Write a SQL statement to create a simple table countries
including columns country_id,country_name and region_id which is already exists. -->

<!-- 
CREATE TABLE countrie AS  (
        SELECT country_id, country_name, region_id
        FROM countries;
    ); -->
    <!-- ----------------------------------------------Task 3------------------------------------------------- -->
<!-- 3. Write a SQL statement to create the structure of a table dup_countries similar to countries. -->


<!-- CREATE TABLE IF NOT EXISTS dup_countries
    LIKE countries;



    CREATE TABLE dup_countries AS
    SELECT *
    FROM countries; -->

    <!-- ----------------------------------------------Task 4------------------------------------------------- -->
    

    <!-- CREATE TABLE dup_countries AS  (
        SELECT *
        FROM countries;
    );

    // OR
    // CREATE TABLE IF NOT EXISTS dup_countries
    // AS SELECT * FROM  countries; -->

    <!-- ----------------------------------------------Task 5------------------------------------------------- -->
    <!-- Write a SQL statement to create a table countries set a constraint NOT NULL (all the fields should be not null). -->


  
    <!-- CREATE TABLE IF NOT EXISTS countries(
    COUNTRY_ID int(2),
    COUNTRY_NAME VARCHAR(40) NOT NULL,
    REGION_ID DECIMAL(10, 0) NOT NULL
);   -->


    <!-- ----------------------------------------------Task 6------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000. -->
    
<!-- 
    CREATE TABLE IF NOT EXISTS JOBS(
    JOB_ID int(11),
    JOB_TITLE VARCHAR(40) NOT NULL,
    MIN_SALARY DECIMAL(6,0),
    MAX_SALARY DECIMAL(6,0) CHECK( MAX_SALARY<=25000)
); -->
    
    <!-- ----------------------------------------------Task 7------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that no countries except Italy, India and China will be entered in the table -->
   
    <!-- CREATE TABLE IF NOT EXISTS countries(
    COUNTRY_ID int(2),
    COUNTRY_NAME VARCHAR(40) CHECK(COUNTRY_NAME IN ('China','India','Italy')),
    REGION_ID DECIMAL(10, 0) NOT NULL
);  -->
   
   
    <!-- ----------------------------------------------Task 8------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'. -->
   
    <!-- CREATE TABLE IF NOT EXISTS job_history(
    employee_id int(11) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL CHECK (END_DATE LIKE '--/--/----'),
    job_id int(11),
    department_id int(11) NOT NULL,,
); -->


    <!-- ----------------------------------------------Task 9------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion. -->



<!-- CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID varchar(2) NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL,
UNIQUE(COUNTRY_ID)
); -->

    <!-- ----------------------------------------------Task 10------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns. -->
    
    
    <!-- CREATE TABLE IF NOT EXISTS jobs (
JOB_ID varchar(10) NOT NULL UNIQUE,
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ',
MIN_SALARY decimal(6,0) DEFAULT 8000,
MAX_SALARY decimal(6,0) DEFAULT NULL
); -->


    <!-- ----------------------------------------------Task 11------------------------------------------------- -->
    <!-- Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion. -->

<!-- CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL
); -->


    <!-- ----------------------------------------------Task 12------------------------------------------------- -->
    <!-- Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the column country_id will be unique and store an auto incremented value. -->

<!--
    CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID integer NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID decimal(10,0) NOT NULL
);
DESC countries; -->

    <!-- ----------------------------------------------Task 13------------------------------------------------- -->
    <!-- Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the combination of columns country_id and region_id will be unique. -->
	
    <!-- CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID varchar(2) NOT NULL UNIQUE DEFAULT '',
COUNTRY_NAME varchar(40) DEFAULT NULL,
REGION_ID decimal(10,0) NOT NULL,
PRIMARY KEY (COUNTRY_ID,REGION_ID)); --> -->


    <!-- ----------------------------------------------Task 14------------------------------------------------- -->
    <!-- Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

Here is the structure of the table jobs;

Field	Type	Null	Key	Default	Extra
JOB_ID	varchar(10)	NO	PRI		
JOB_TITLE	varchar(35)	NO		NULL	
MIN_SALARY	decimal(6,0)	YES		NULL	
MAX_SALARY	decimal(6,0)	YES		NULL -->


<!-- 

CREATE TABLE job_history ( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
DEPARTMENT_ID decimal(4,0) DEFAULT NULL, 
FOREIGN KEY (job_id) REFERENCES jobs(job_id)
)ENGINE=InnoDB; --> -->


    <!-- ----------------------------------------------Task 15------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
Assume the structure of departments table below.

Field	Type	Null	Key	Default	Extra
DEPARTMENT_ID	decimal(4,0)	NO	PRI	0	
DEPARTMENT_NAME	varchar(30)	NO		NULL	
MANAGER_ID	decimal(6,0)	NO	PRI	0	
LOCATION_ID	decimal(4,0)	YES		NULL	
 -->




 <!-- create table employees(
    employee-id decimal(6.0) not null primary key,
    first-name varchar(10) default null,
    last-name varchar(20) not null,
    email varchar(30) not null,
    phone-number varchar(15) default null,
    hire-date date not null,
    job-id varchar(10)not null,
    salary decimal(8,2) default null,
    commission decimal(2,2) default null,
    manager-id decimal(6,0) default null,
    department-id decimal(4,0) default null,
    foreign key (dapartment-id,manager-id)
    references dapartments(dapartment-id,manager-id)
     )     engine=innodb -->
 -->


    <!-- ----------------------------------------------Task 16------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.
"A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com

Assume that the structure of two tables departments and jobs.

Field	Type	Null	Key	Default	Extra
DEPARTMENT_ID	decimal(4,0)	NO	PRI	0	
DEPARTMENT_NAME	varchar(30)	NO		NULL	
MANAGER_ID	decimal(6,0)	YES		NULL	
LOCATION_ID	decimal(4,0)	YES		NULL	 -->
<!-- 
Field	Type	Null	Key	Default	Extra
JOB_ID	varchar(10)	NO	PRI		
JOB_TITLE	varchar(35)	NO		NULL	
MIN_SALARY	decimal(6,0)	YES		NULL	
MAX_SALARY	decimal(6,0)	YES		NULL	 -->






<!-- 
create table employees(
    employee-id decimal(6.0) not null primary key,
    first-name varchar(10) default null,
    last-name varchar(20) not null,
    email varchar(30) not null,
    phone-number varchar(15) default null,
    hire-date date not null,
    job-id varchar(10)not null,
    salary decimal(8,2) default null,
    commission decimal(2,2) default null,
    manager-id decimal(6,0) default null,
    department-id decimal(4,0) default null,
    foreign key (dapartment-id)
    references departments(dapartment-id),
    foreign key (job-id)
    references jobs(job-id),
)     engine=innodb --> -->





    <!-- ----------------------------------------------Task 17------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.
Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;
Field	Type	Null	Key	Default	Extra
JOB_ID	int(11)	NO	PRI	NULL	
JOB_TITLE	varchar(35)	NO			
MIN_SALARY	decimal(6,0)	YES		8000	
MAX_SALARY	decimal(6,0)	YES		NULL	 -->



<!-- 
// JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
// JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
// MIN_SALARY decimal(6,0) DEFAULT 8000, 
// MAX_SALARY decimal(6,0) DEFAULT NULL
// )ENGINE=InnoDB;
 -->


    <!-- ----------------------------------------------Task 18------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE CASCADE that lets you allow to delete records in the employees(child) table that refer to a record in the jobs(parent) table when the record in the parent table is deleted and the ON UPDATE RESTRICT actions reject any updates.
Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;
Field	Type	Null	Key	Default	Extra
JOB_ID	int(11)	NO	PRI	NULL	
JOB_TITLE	varchar(35)	NO			
MIN_SALARY	decimal(6,0)	YES		8000	
MAX_SALARY	decimal(6,0)	YES		NULL	 -->



<!-- 

// JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
// JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
// MIN_SALARY decimal(6,0) DEFAULT 8000, 
// MAX_SALARY decimal(6,0) DEFAULT NULL
// )ENGINE=InnoDB;

 -->

    <!-- ----------------------------------------------Task 19------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE SET NULL action will set the foreign key column values in the child table(employees) to NULL when the record in the parent table(jobs) is deleted, with a condition that the foreign key column in the child table must accept NULL values and the ON UPDATE SET NULL action resets the values in the rows in the child table(employees) to NULL values when the rows in the parent table(jobs) are updated.
Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;
Field	Type	Null	Key	Default	Extra
JOB_ID	int(11)	NO	PRI	NULL	
JOB_TITLE	varchar(35)	NO			
MIN_SALARY	decimal(6,0)	YES		8000	
MAX_SALARY	decimal(6,0)	YES		NULL	 -->


<!-- 
// JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
// JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
// MIN_SALARY decimal(6,0) DEFAULT 8000, 
// MAX_SALARY decimal(6,0) DEFAULT NULL
// )ENGINE=InnoDB; -->



    <!-- ----------------------------------------------Task 20------------------------------------------------- -->
    <!-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and any updates.
Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;
Field	Type	Null	Key	Default	Extra
JOB_ID	int(11)	NO	PRI	NULL	
JOB_TITLE	varchar(35)	NO			
MIN_SALARY	decimal(6,0)	YES		8000	
MAX_SALARY	decimal(6,0)	YES		NULL	 -->



<!-- 
// JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
// JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
// MIN_SALARY decimal(6,0) DEFAULT 8000, 
// MAX_SALARY decimal(6,0) DEFAULT NULL
// )ENGINE=InnoDB;
 -->
