USE employees;

-- Select employees and their salaries in September 2000

	SELECT employees.employees.emp_no, 
  	       employees.employees.first_name, 
	       employees.employees.last_name, 
	       salaries.salary,
	   	   salaries.from_date,
	   	   salaries.to_date
   	  FROM employees.employees
INNER JOIN salaries
  	    ON employees.employees.emp_no = salaries.emp_no
     WHERE from_date LIKE '2000-09%' 
       AND to_date LIKE '2000-09%';
       
-- Select salaries of the heads od the departments in 1988
      
SELECT employees.employees.emp_no,
	   employees.employees.first_name,
	   employees.employees.last_name,
	   titles.title,
	   departments.dept_name,
	   salaries.salary,
	   salaries.from_date,
	   salaries.to_date 
  FROM employees.employees
  JOIN titles
    ON employees.employees.emp_no = titles.emp_no 
  JOIN dept_manager
    ON employees.employees.emp_no = dept_manager.emp_no
  JOIN departments
    ON dept_manager.dept_no = departments.dept_no 
  JOIN salaries
    ON employees.employees.emp_no = salaries.emp_no
 WHERE titles.title = 'Manager'
   AND '1988-01-01' BETWEEN salaries.from_date AND salaries.to_date
   AND '1988-12-31' BETWEEN salaries.from_date AND salaries.to_date;
   
-- Select employees who have Birthdays today, and their departments and title 
  
 SELECT DISTINCT 
 		employees.employees.first_name,
	    employees.employees.last_name,
	    employees.employees.birth_date,
	    departments.dept_name,
	    titles.title
   FROM employees.employees
   JOIN dept_emp
     ON employees.employees.emp_no = dept_emp.emp_no
   JOIN titles
     ON employees.employees.emp_no = titles.emp_no
   JOIN departments
     ON dept_emp.dept_no = departments.dept_no
  WHERE dept_emp.to_date = '9999-01-01'
    AND DAY(birth_date) = DAY(CURRENT_DATE())
    AND MONTH(birth_date) = MONTH(CURRENT_DATE()); 