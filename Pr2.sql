#Write a query to display the tomorrow’s date in the following format: September 28th of  year 2006.  Label the column  Tomorrow. Your result will depend on the day when you create this query. 

SELECT TO_CHAR
    (SYSDATE + 1,' Month  DDth "of the year" yyyy' ) "Tomorrow"
FROM DUAL;

#Write a query that displays the employee’s Full Name and Job Title in the following format: DAVIES, CURTIES is Stock Clerk for all employees whose last name ends with S and first name starts with  C or K.Give this column an appropriate label like Person and Job Sort the result by the employees’ last names.

select last_name || ',' || first_name || ' ' || job_id as "Person and Job"  

from employees where  last_name like '%s' and (first_name like 'C%' or first_name like 'K%') order by last_name ;

#For each employee hired before 1992, display the employee’s last name, hire date and calculate the number of YEARS between TODAY and the date the employee was hired. Label the column Years worked. Order your results by the number of years employed. Round the number of years up to the closest whole number.

select last_name, round(MONTHS_BETWEEN(SYSDATE,hire_date)/12) as "Years Worked" 
from employees
where hire_date < '01-JAN-1992' 
order by "Years Worked" desc

#Display each employee’s last name, hire date, and salary review date, which is the first Tuesday after a year of service, but only for those hired after 1997. Label the column REVIEW DAY. Format the dates to appear in the format like:  TUESDAY, August the Thirty-First of year 1998

SELECT last_name , hire_date,to_char(NEXT_DAY(hire_date+365 ,'TUESDAY'),'fmDay ", the "Ddsp Month" of year" YYYY') AS "Salary review date" 
FROM employees
WHERE hire_date>to_date('31-DEC-1997')

#Display how many people work the same job in the same department. Name these results Dept#,  Job and HowMany. Include only jobs that involve more than one person. Sort  the output , so that jobs with the most people  are shown first.

#For each job title display the job title and total amount paid each month for this type of the job. Exclude titles AD_PRES and AD_VP and also include only jobs that require more than $15,000. Sort the output so that top paid jobs are shown first.

#For each  department show the latest and earliest hire date, but exclude departments 10 and 20 and also exclude those departments where the last person was hired in this century.   Sort the output so that most recent latest hire dates are shown first.
