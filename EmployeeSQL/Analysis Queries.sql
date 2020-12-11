----Number 1 query
SELECT 
	e.emp_no, 
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM public.employees e
INNER JOIN public.salaries s
ON e.emp_no = s.emp_no;

----Number 2 query
SELECT 
	first_name,
	last_name,
	hire_date
FROM public.employees
WHERE DATE_PART('year',hire_date) = '1986';

----Number 3 query
SELECT 
	d.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM public.dept_manager dm
INNER JOIN public.departments d
ON dm.dept_no = d.dept_no
INNER JOIN public.employees e
ON dm.emp_no = e.emp_no;

----Number 4 query
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM public.dept_emp de
INNER JOIN public.departments d
ON de.dept_no = d.dept_no
INNER JOIN public.employees e
ON de.emp_no = e.emp_no

----Number 5 query
SELECT
	first_name,
	last_name,
	sex
FROM public.employees
WHERE (first_name||' '||last_name) LIKE 'Hercules B%'

--Number 6 query
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM public.dept_emp de
INNER JOIN public.departments d
ON de.dept_no = d.dept_no
INNER JOIN public.employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

----Number 7 query
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM public.dept_emp de
INNER JOIN public.departments d
ON de.dept_no = d.dept_no
INNER JOIN public.employees e
ON de.emp_no = e.emp_no
WHERE d.dept_name in ('Sales','Development');

----Number 8 query
SELECT 
	last_name, 
	COUNT(last_name) AS lastname_count
FROM public.employees
GROUP BY last_name
ORDER BY last_name DESC;