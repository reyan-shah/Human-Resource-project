-- changing text datatype of cloumn birthdate 
use human_resource;
update hr 
set birthdate = case
when birthdate like "%/%" 
then date_format(str_to_date(birthdate,'%m/%d/%Y'),'%y-%m-%d')
when birthdate like "%-%" 
then date_format(str_to_date(birthdate,'%m-%d-%Y'),'%y-%m-%d')
else null
end;
-- changing datatype
alter table hr
modify column birthdate date;