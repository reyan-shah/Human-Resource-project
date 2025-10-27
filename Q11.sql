-- what is the average tenure distribution of each department?
select department,round(avg(datediff(termdate,hire_date)/365),0)as average_tenure
from hr
where termdate<=curdate() and termdate is not null and age>=18
group by department ;