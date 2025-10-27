-- what is distribution of employe across location by city
select location_city,count(*)as count
from hr 
where age>=18 and termdate is null
group by location_city
order by count desc;
-- what is distribution of employe across location by state
select location_state,count(*)as count
from hr 
where age>=18 and termdate is null
group by location_state
order by count desc;