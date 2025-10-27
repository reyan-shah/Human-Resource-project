-- what is the distribution of job title across the company?
select jobtitle,count(*) as total_employes
from hr 
where age>=18 and termdate is not null
group by jobtitle;
