-- what is the average length of employement of the employe who have been terminated
SELECT 
    ROUND(AVG(TIMESTAMPDIFF(YEAR, hire_date, termdate)), 0) AS avg_employment_years
FROM hr
WHERE termdate <= CURDATE()
  AND termdate IS NOT NULL
  AND age >= 18;
