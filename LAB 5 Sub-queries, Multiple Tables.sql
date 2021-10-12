-- 1 retrieve all employees whose salary is greater than the average salary
SELECT EMP_ID, F_NAME, L_NAME, SALARY FROM employees 
WHERE SALARY > (SELECT AVG(SALARY) FROM employees);

-- 2 retrieves all employees records and average salary in every row
SELECT EMP_ID, SALARY, ( SELECT AVG(SALARY) FROM employees ) AS AVG_SALARY 
FROM employees ;

-- 3 retrieves only the columns with non-sensitive employee data
SELECT * FROM ( SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM employees) AS EMP4ALL;

-- 4 Retrieve only the EMPLOYEES records that correspond to departments in the DEPARTMENTS table
SELECT * FROM employees 
WHERE DEP_ID IN ( SELECT DEPT_ID_DEP FROM departments );

-- 5 Retrieve only the list of employees from location L0002
SELECT * FROM employees 
WHERE DEP_ID IN ( SELECT DEPT_ID_DEP FROM departments WHERE LOC_ID = 'L0002' );

-- 6 Retrieve the department ID and name for employees who earn more than $70,000
SELECT DEPT_ID_DEP, DEP_NAME FROM departments 
WHERE DEPT_ID_DEP IN ( SELECT DEP_ID FROM employees WHERE SALARY > 70000 ) ;

-- 7 Specify 2 tables in the FROM clause
SELECT * FROM employees, departments;

-- 8 Retrieve only the EMPLOYEES records that correspond to departments in the DEPARTMENTS table
SELECT * FROM employees, departments 
WHERE employees.DEP_ID = departments.DEPT_ID_DEP;

-- 9 Use shorter aliases for table names
SELECT * FROM employees E, departments D 
WHERE E.DEP_ID = D.DEPT_ID_DEP;

-- 10 Retrieve only the Employee ID and Department name in the above query
SELECT EMP_ID, DEP_NAME FROM employees E, departments D 
WHERE E.DEP_ID = D.DEPT_ID_DEP;

-- 11 In the above query specify the fully qualified column names with aliases in the SELECT clause
SELECT E.EMP_ID, D.DEP_NAME FROM employees E, departments D 
WHERE E.DEP_ID = D.DEPT_ID_DEP