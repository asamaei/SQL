#Questions

#Display the employee_id, last name and salary of employees earning in the range of   $8000 to $15,000. Sort the output by top salaries first and then by last name.

Select employee_id,last_name,salary from employees where (salary between 8000 and 15000) order by salary,last_name

#Modify previous query (#1) so that additional condition is to display only if they work as Programmers or Sales Representatives. Same sorting as before.


Select employee_id,last_name,salary from employees where (salary between 8000 and 15000) and job_id IN ('SA_REP','IT_PROG') order by salary,last_name


#Modify previous query (#2) so that displays same job titles but for people who earn outside the given salary range. Same sorting as before.

Select employee_id,last_name,salary from employees where (salary not between 8000 and 15000) and job_id IN ('SA_REP','IT_PROG') order by salary,last_name


#Display the last name, job_id and salary of employees hired before 1998  List the most recently hired employees first.

SELECT last_name , job_id , salary 
FROM employees
WHERE hire_date< '1-JAN-98'
Order by hire_date desc;

#Modify previous query (#4) so that displays only employees earning more than $10,000.List the output by job title alphabetically and then by highest paid employees.

SELECT last_name , job_id , salary 
FROM employees
WHERE hire_date< '1-JAN-98' and salary > 10000
Order by job_id, hire_date desc;

#Display the job titles and full names of employees whose first name contains an ‘e’ or ‘E’ anywhere. The output should look like:

Job Title	Full name
--------------------------------------
AD_VP	Neena 	Kochhar
	    … more rows

SELECT  job_id as "Job Title", first_name || last_name as "Full Name" 
FROM employees
WHERE first_name like '%e%' or first_name like '%E%'

