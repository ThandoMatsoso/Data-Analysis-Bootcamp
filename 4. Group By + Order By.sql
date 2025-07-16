-- Group By # groups rows with same values in a column 

SELECT *
FROM employee_demographics;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender # we can use distinct but what group by does is, rolling up values into these rows to run aggregate functions later
;

SELECT occupation
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY # sorts results asc or desc
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC # will first sort geneder then age descends for each gender
;


SELECT *
FROM employee_demographics
ORDER BY 5, 4 # we can use column position instead of column name (not recommended)
;