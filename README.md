# SQL Engineering using Postgres

## Background
Build an Entity Relationship Diagram(ERD) based off the data provided in the following csv files in the resource folder:

* [departments.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/departments.csv)
* [dept_emp.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/dept_emp.csv)
* [dept_manager.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/dept_manager.csv)
* [employees.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/employees.csv)
* [salaries.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/salaries.csv)
* [titles.csv](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/Resources/titles.csv)

## ERD Diagram
![Visual Database Build Out](https://github.com/inkosi-codes/sql-challenge/blob/main/EmployeeSQL/ERD%20Diagram/ERD%20Diagram.PNG)

## Data Analysis

Using the newly created Database Schema and Data, query the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.