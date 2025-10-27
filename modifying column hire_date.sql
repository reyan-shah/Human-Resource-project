-- changign date format of hire date column
update hr
set hire_date = case
when hire_date like "%/%"
 then date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d') 
when hire_date like "%-%"
 then date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d') 
 else null
 end;
 -- changing datatype of hire date from text to date 
 alter table hr 
 modify column hire_date date; 
