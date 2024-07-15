#Create a join table
select * from absenteeism_at_work a
left join compensation b
on a.ID =b.ID
left join Reasons r 
on a.Reason_for_absence=r.Number;

#find the healthiest employees for the bonus
select * from absenteeism_at_work
where Social_drinker=0 and Social_smoker=0
and Body_mass_index<25 and 
Absenteeism_time_in_hours<(select AVG(Absenteeism_time_in_hours) from absenteeism_at_work);

#compensation rate increase for non smokers
select count(*) from absenteeism_at_work
where Social_smoker=0;

#Budget alloted for bonus =$983221

#Manpower per year is non-smokers*8(no. of working hours/day)* 5(no. of days/per week)*52(no.of weeks in year)
select 686*5*8*52;
#it is $1426880

#increase per hour is-
select 983221/1426880;
#it is 0.68 cents

#yearly increase for each employee
select 0.68*5*8*52;
#it is $1414

#optimise this query
select a.ID, r.Reason
from absenteeism_at_work a 
left join compensation b
on a.ID=b.ID
left join reasons r on
a.Reason_for_absence=r.Number;


#optimise this query
select a.ID, r.Reason
Month_of_absence,
Body_mass_index,
CASE WHEN Body_mass_index<18.5 then 'underweight'
WHEN Body_mass_index between 18.5 and 24.9 then 'healthy'
WHEN Body_mass_index between 25 and 29.9 then 'overweight'
WHEN Body_mass_index>29.9 then 'obese'
ELSE 'Unknown'END  as BMI_category,
CASE WHEN Month_of_absence IN(12,1,2) then 'winter'
WHEN Month_of_absence IN(3,4,5) then 'Spring'
WHEN Month_of_absence IN(6,7,8) then 'Summer'
WHEN Month_of_absence IN(9,10,11) then 'Fall'
ELSE 'Unknown'END  as Season_names,
Seasons,
Month_of_absence,
Day_of_the_week,
Transportation_expense,
Education,
Son,
Social_drinker,
Social_smoker,
Pet,
Disciplinary_failure,
Age,
Reason,
`Work_load_Average/day`,
Absenteeism_time_in_hours
from absenteeism_at_work a 
left join compensation b
on a.ID=b.ID
left join reasons r on
a.Reason_for_absence=r.Number;

