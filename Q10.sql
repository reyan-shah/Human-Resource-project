-- how has the companey's employe count changed over time based on hire and term date ?
select year,hires,terminations,hires-terminations as net_change,
round((hires-terminations)/hires*100,2)as net_change_percent
from (
select year(hire_date)as year,count(*)as hires,
sum(case when termdate <=curdate() and termdate is not null then 1 else 0 end)as terminations
from hr 
where age>=18 
group by year(hire_date))as sub_query
order by year asc;