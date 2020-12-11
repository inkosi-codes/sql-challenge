-----Creation of titles table------------
CREATE TABLE IF NOT EXISTS "public"."titles"
(
 "title_id" varchar(50) NOT NULL,
 "title"    varchar(50) NOT NULL,
 CONSTRAINT "PK_titles" PRIMARY KEY ( "title_id" )
);

-----Creation of employees table------------
CREATE TABLE IF NOT EXISTS "public"."employees"
(
 "emp_no"     int NOT NULL,
 "title_id"   varchar(50) NOT NULL,
 "birth_date" date NOT NULL,
 "first_name" varchar(1000) NOT NULL,
 "last_name"  varchar(1000) NOT NULL,
 "sex"        varchar(1) NOT NULL,
 "hire_date"  date NOT NULL,
 CONSTRAINT "PK_employees" PRIMARY KEY ( "emp_no" ),
 CONSTRAINT "FK_emp_title" FOREIGN KEY ( "title_id" ) REFERENCES "public"."titles" ( "title_id" )
);

CREATE INDEX "IX_ON_title" ON "public"."employees"
(
 "title_id"
);

-----Creation of departments table------------
CREATE TABLE IF NOT EXISTS "public"."departments"
(
 "dept_no"   varchar(50) NOT NULL,
 "dept_name" varchar(100) NOT NULL,
 CONSTRAINT "PK_departments" PRIMARY KEY ( "dept_no" )
);

-----Creation of salaries table------------
CREATE TABLE IF NOT EXISTS "public"."salaries"
(
 "emp_no" int NOT NULL,
 "salary" int NOT NULL,
 CONSTRAINT "PK_salaries" PRIMARY KEY ( "emp_no" ),
 CONSTRAINT "FK_salaries_emp_no" FOREIGN KEY ( "emp_no" ) REFERENCES "public"."employees" ( "emp_no" )
);

CREATE INDEX "IX_ON_emp_no" ON "public"."salaries"
(
 "emp_no"
);

-----Creation of dept_manager table------------
CREATE TABLE IF NOT EXISTS "public"."dept_manager"
(
 "dept_no" varchar(50) NOT NULL,
 "emp_no"  int NOT NULL,
 CONSTRAINT "PK_dept_manager" PRIMARY KEY ( "dept_no", "emp_no" ),
 CONSTRAINT "FK_dept_no" FOREIGN KEY ( "dept_no" ) REFERENCES "public"."departments" ( "dept_no" ),
 CONSTRAINT "FK_emp_no" FOREIGN KEY ( "emp_no" ) REFERENCES "public"."employees" ( "emp_no" )
);

CREATE INDEX "IX_ON_foreign_deptno" ON "public"."dept_manager"
(
 "dept_no"
);

CREATE INDEX "IX_ON_foreign_empno" ON "public"."dept_manager"
(
 "emp_no"
);

-----Creation of dept_emp table------------
CREATE TABLE IF NOT EXISTS "public"."dept_emp"
(
 "emp_no"  int NOT NULL,
 "dept_no" varchar(50) NOT NULL,
 CONSTRAINT "PK_dept_emp" PRIMARY KEY ( "dept_no", "emp_no" ),
 CONSTRAINT "FK_dept_emp_empno" FOREIGN KEY ( "emp_no" ) REFERENCES "public"."employees" ( "emp_no" ),
 CONSTRAINT "FK_dept_emp_deptno" FOREIGN KEY ( "dept_no" ) REFERENCES "public"."departments" ( "dept_no" )
);

CREATE INDEX "IX_ON_deptemp_emp_no" ON "public"."dept_emp"
(
 "emp_no"
);

CREATE INDEX "IX_ON_deptemp_dept_no" ON "public"."dept_emp"
(
 "dept_no"
);
