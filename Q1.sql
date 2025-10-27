-- what is gender breakdown of employe in company
select gender,count(*) from hr
where age>18 and termdate is null
group by gender;