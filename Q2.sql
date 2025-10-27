-- what is the race breakdown of employee in company
select race,count(*)as Total from hr
where age>18 and termdate is null
group by race;