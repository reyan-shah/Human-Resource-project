-- what is age distribution of company
    select 
  case 
  when age >=18 and age<=24 then '18-24'
    when age >=25 and age<=34 then '24-34'
    when age >=35 and age<=44 then '35-44'
      when age >=45 and age<=54 then '45-54'
        when age >=55 and age<=64 then '55-64'
        else '65+'
        end as age_group,
        count(*)as count
        from hr
        WHERE age > 18 
  AND termdate IS NULL group by age_group;
