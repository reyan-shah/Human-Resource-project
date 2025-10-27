-- adding age table
alter table hr 
add column age int;
-- calculating and adding age in age column
update  hr
set age = timestampdiff(year,birthdate,curdate());
-- checking records which have age less than 18
select count(*) from hr 
where age < 18;