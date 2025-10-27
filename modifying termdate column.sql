-- changing termdate to date fromat
select termdate from hr;
update hr 
set termdate = date(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))
where termdate is not null and termdate !='';
-- changing empty  to null date 
UPDATE hr
SET termdate = null
WHERE termdate = '0000-00-00';

-- changing datatype 
alter table hr
modify column termdate date;