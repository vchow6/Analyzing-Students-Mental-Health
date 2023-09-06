-- Inspect the data
-- Count the number of records in the data
SELECT COUNT(*) AS total_records
FROM students;

-- Inspect the data
-- Count the number of records in the data
SELECT COUNT(*) AS total_records
FROM students;

-- Count the number of international and domestic students
SELECT inter_dom, COUNT(inter_dom) AS count_inter_dom
FROM students
GROUP BY inter_dom;

-- Query the data to see all records where inter_dom is neither 'Dom' nor 'Inter'
SELECT * 
FROM students
WHERE inter_dom NOT LIKE 'D%' AND inter_dom NOT LIKE 'I%';

-- See what Region international students are from
SELECT region, COUNT(inter_dom) AS count_inter_dom
FROM students
WHERE inter_dom = 'Inter'
GROUP BY region;

-- Find out the basic summary statistics of the diagnostic tests for all students
SELECT MIN(todep) AS min_phq,
		MAX(todep) AS max_phq,
		ROUND(AVG(todep), 2) AS avg_phq,
		MIN(tosc) AS min_scs,
		MAX(tosc) AS max_scs,
		ROUND(AVG(tosc), 2) AS avg_scs,
		MIN(toas) AS min_as,
		MAX(toas) AS max_as,
		ROUND(AVG(toas), 2) AS avg_as
FROM students;

-- Query that looks at the statistics of each student group on one table while avoiding the empty rows
SELECT inter_dom,
		MIN(todep) AS min_phq,
		MAX(todep) AS max_phq,
		ROUND(AVG(todep), 2) AS avg_phq,
		MIN(tosc) AS min_scs,
		MAX(tosc) AS max_scs,
		ROUND(AVG(tosc), 2) AS avg_scs,
		MIN(toas) AS min_as,
		MAX(toas) AS max_as,
		ROUND(AVG(toas), 2) AS avg_as
FROM students
WHERE inter_dom IN ('Inter', 'Dom')
GROUP BY inter_dom;

-- Average scores for each age group of international students
SELECT age,
		ROUND(AVG(todep), 2) AS avg_phq,
		ROUND(AVG(tosc), 2) AS avg_scs,
		ROUND(AVG(toas), 2) AS avg_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY age 
ORDER BY age;

-- Looking into length of stay variable
SELECT stay,
		ROUND(AVG(todep), 2) AS avg_phq,
		ROUND(AVG(tosc), 2) AS avg_scs,
		ROUND(AVG(toas), 2) AS avg_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay;

-- Making sure the data is saved to a variable
SELECT *
FROM students;
