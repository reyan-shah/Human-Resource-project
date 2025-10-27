-- how many employee work at headquarters vs remote
select location,count(*)as Total
from hr
where age>18 and termdate is null
group by location;