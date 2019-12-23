SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e 
JOIN departments d 
on e.department_id = d.department_id
JOIN locations l
on d.location_id= l.location_id
WHERE l.city = 'London';

//using in question 1
SELECT first_name, last_name,job_id, department_id, department_name
FROM employees 
JOIN departments 
USING (departments_id)
JOIN locations l
on d.location_id= l.location_id
WHERE l.city = 'London';

SELECT e.first_name || ' ' || e.last_name as name, d.department_name, l.city FROM departments d 
JOIN  employees e
ON d.manager_id = e.manager_id
JOIN locations l
ON d.location_id = l.location_id;

//3
SELECT job_title, AVG(salary) FROM JOBS JOIN employees USING(job_id) GROUP BY job_title;

//4
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e
JOIN departments d ON
e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
WHERE e.first_name LIKE '%z%';

//5
SELECT e.first_name, e.last_name, d.department_id, d.department_name FROM employees e 
LEFT OUTER JOIN departments d 
ON e.department_id = d.department_id;

//6
SELECT e.employee_id, j.job_title, SYSDATE-e.hire_date as days  FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN jobs j
ON e.job_id = j.job_id
WHERE d.department_id = 80;

//7
SELECT first_name, last_name, department_id FROM employees 
WHERE department_id 
IN (select d.department_id FROM departments d JOIN employees e 
ON d.department_id = e.department_id WHERE e.last_name = 'Taylor');

//8
SELECT first_name, elast_name, e.employee_id, j.job_title FROM departments d
JOIN employees e
ON d.employee_id = e.employee_id
JOIN jobs j
ON d.job_id = j.job_id 
JOIN locations l
ON d.location_id = l.location_id
WHERE l.city = 'Toronto';

//8 
SELECT  first_name, last_name, employee_id, job_id  
FROM employees  WHERE department_id = (SELECT department_id  FROM departments 
WHERE location_id = 
(SELECT location_id 
FROM locations  
WHERE city ='Toronto'));
