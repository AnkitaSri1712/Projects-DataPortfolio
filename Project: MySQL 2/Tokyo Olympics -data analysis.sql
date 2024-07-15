select * from entriesgender_tokyo;

#Query 1:- Average number of participants across all disciplines 
select Discipline, Total as Participants from entriesgender_tokyo
order by Total desc;

#Query 2: most medals won by each country;top 3 ranks :
select *
from medals_tokyo
order by total desc
limit 3;


#Query 3: Display the teams who has won most gold, most Silver and most bronze respectively

SELECT Max(Gold), Max(Silver), Max(Bronze), Countries
FROM medals_tokyo
GROUP BY Countries
Limit 3;


select * from athletes_tokyo;

# Query 4:Participants across Countries 

select count(Name) as Count_of_Players,NOC
from athletes_tokyo
group by NOC
order by count_of_players desc;


#Query 5: Number table:
select concat('count of Events-', count(distinct discipline)) as Number 
from athletes_tokyo
union all
select concat('Count of Countries-', count(distinct noc)) as Number 
from athletes_tokyo
union all
select concat('Total Female Athletes-', sum(female)) as Number from 
EntriesGender_tokyo
union all
select concat('Total Male Athletes-', sum(male))  as Number from EntriesGender_tokyo
union all
select concat('Total Athletes-', sum(total))as Number from EntriesGender_tokyo
union all
select concat('Total Gold-', sum(gold)) as Number from medals_tokyo
union all
select concat('Total Silver-',sum(silver)) as Number from medals_tokyo
union all
select concat('Total Bronze-', sum(bronze)) as Number from medals_tokyo
union all
select concat('Total Medals-', sum(total)) as Number from medals_tokyo;


# Query 6: - Coaches produced by the countries:
select count(name) as Count_of_Coaches,noc as NOC from project2_tokyo_olympics2021.coaches_tokyo
group by noc
order by Count_of_Coaches desc;

#Query 7:  Coaches vs Player Ratio
select
coach_table.NOC,
Count_of_Players,
Count_of_Coaches,
round(Count_of_Players/Count_of_Coaches,2) as Player_Coach_Ratio
from 
(select * from (
select count(name) as Count_of_Players,NOC
from athletes_tokyo
group by NOC) a
order by a.count_of_players desc) player_table
join (
select * from (
select count(name) as Count_of_Coaches,noc as NOC from coaches_tokyo
group by NOC) a
order by a.Count_of_Coaches desc) coach_table
on player_table.noc=coach_table.noc
;


#Query 8 : Country wise Performance Table
select 
ANY_VALUE(count(c.name))as Coach_Team,
count_of_players as Player_Team,
c.noc,
ANY_VALUE(m.total) as Total_medals_won

from coaches_tokyo c
join (select 
countries,
gold,
silver,
bronze,
total
from medals_tokyo )m
on c.noc=m.countries
join (select * from (
select count(name) as Count_of_Players,NOC
from athletes_tokyo
group by noc) a
order by a.count_of_players desc) p
on c.noc=p.noc
group by c.noc
order by ANY_VALUE(m.total)DESC;
;


#Query 9: Sports with Highes female participation
select * from (
select
discipline as Discipline,
sum(female) as Count_of_Female,
sum(total) as Count_of_Total,
100*(round(sum(female),4)/round(sum(Total),4))as Female_Participation
from entriesgender_tokyo
group by discipline) as ff
order by Female_Participation desc;


#Query 9: Sports with Highes male participation
select * from (
select
discipline as Discipline,
sum(male) as Count_of_male,
sum(total) as Count_of_Total,
100*(round(sum(male),4)/round(sum(Total),4))as male_Participation
from entriesgender_tokyo
group by discipline) as mm
order by male_Participation desc;

#Query 10:                    Player Vs Coach list :
select
ANY_VALUE(a.name) as Player_Name,
coach.coach_name as Coach_Name,
a.noc,
ANY_VALUE(a.discipline) as discipline
from athletes_tokyo a
join (
select 
c.name as coach_name,
c.noc as country,
c.discipline as discipline from coaches_tokyo c) coach
on coach.country=a.noc and coach.discipline=a.discipline
group by
a.noc,
coach.coach_name
order by discipline asc;

#Query 12:
SELECT * FROM project2_tokyo_olympics2021.`continent_list`;

#Query 13:continent wise breakdown
select 
distinct(name) as Country,
continent
from teams_tokyo t
join continent_list c on t.name=c.country;

#Query 14:Continent vs count of countries partcipated in the olympics
select * 
from (
select 
continent, 
count(country) as No_of_Countries
from continent_list
group by continent) a
order by a.No_of_Countries desc;

#Query 15:Continents Performance Table
select 
co.country,
count(c.name) as Total_Coaches,
count_of_players as Total_Players,
ANY_VALUE(m.total) as Total_Medals_Won
from coaches_tokyo c
join (select  
countries,
gold,
silver,
bronze,
total
from medals_tokyo) m
on c.noc=m.countries 
join (select * from (
select count(name) as Count_of_Players,NOC
from athletes_tokyo
group by noc) a
order by a.count_of_players desc) tt
on c.noc=tt.noc
join continent_list co on
c.noc=co.country
group by co.country
order by ANY_VALUE(m.total)desc;