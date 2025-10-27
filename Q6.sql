-- how does gender distribution varies across departments and jobtitles?
select department,gender,count(*) from hr
where age>-18 and termdate is null
group by department,gender
order by department;
 