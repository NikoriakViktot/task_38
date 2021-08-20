SELECT E.first_name , E.last_name ,
       E.department_id , D.department_name
        FROM employees E
         JOIN departments D
          ON E.department_id = D.department_id;
SELECT E.first_name,E.last_name,
   D.department_name, L.city, L.state_province
     FROM employees E
      JOIN departments D
        ON E.department_id = D.department_id
          JOIN locations L
           ON D.location_id = L.location_id;
SELECT E.first_name , E.last_name ,
       E.department_id ,  D.department_name
         FROM employees E
         JOIN departments D
          ON E.department_id = D.department_id
          AND E.department_id IN (80 , 40)
           ORDER BY E.last_name;
SELECT E.first_name, E.last_name, D.department_id, D.department_name
 FROM employees E
   RIGHT OUTER JOIN departments D
     ON E.department_id = D.department_id;
SELECT E.first_name AS "Employee Name",
   M.first_name AS "Manager"
     FROM employees E
       JOIN employees M
         ON E.manager_id = M.employee_id;
SELECT job_title, first_name || ' ' || last_name AS Employee_name,
	max_salary-salary AS salary_difference
	FROM employees
		NATURAL JOIN jobs;
SELECT job_title, AVG(salary)
    FROM employees
        NATURAL JOIN jobs
        GROUP BY job_title;
SELECT first_name || ' ' || last_name AS Employee_name, salary
	FROM employees
		JOIN departments USING (department_id)
		JOIN  locations USING (location_id)
	WHERE  city = 'London';
SELECT department_name AS 'Department Name',
    COUNT(*) AS 'No of Employees'
        FROM departments
            INNER JOIN employees
            ON employees.department_id = departments.department_id
                GROUP BY departments.department_id, department_name
                ORDER BY department_name;