-- which department has the highest turmination rate?
use human_resource;
select department,Total_employes,terminated_employes,
terminated_employes/Total_employes as termination_rate
from
(select department, count(*)as Total_employes,
sum(case when termdate is not null and termdate<=curdate() then 1 else 0 end)as terminated_employes
 from hr
where age>=18
group by department )as sub_query 
order by termination_rate desc;