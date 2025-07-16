-- WHERE Clause 

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01' 
;

-- AND OR NOT -- Logical Operators
SELECT *
FROM employee_demographics
WHERE birth_date >'1985-01-01'
 OR NOT gender = 'male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;


-- LIKE Statement
-- % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%' # must start with jer
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%' # must start with a
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' # starts with a and has two characters after it
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%' # 3 characters after a and have anything after that
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%' # starts with a and has two characters after it
;