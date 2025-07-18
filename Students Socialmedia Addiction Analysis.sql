create database Students;

use Students;
set sql_safe_updates = 0;

select * 
from SMA;

select distinct(gender)
from SMA;
update SMA
Set gender = replace(gender,'Female@@', "Female");

update SMA
Set gender = replace(gender,"Male3333","Male");

update SMA
Set gender = replace(gender, "Male##","Male");

update SMA
Set gender = replace(gender,"Female7","Female");

update SMA
Set gender = replace(gender, "Male>>>>","Male");

select distinct(Academic_Level)
from SMA;

update SMA
set Academic_Level = replace(Academic_Level, "Graduate%%","Graduate");

update SMA
set Academic_Level = replace(Academic_Level, "Graduate??","Graduate");


update SMA
set Academic_Level = replace(Academic_Level, "Under:::graduate","Undergraduate");

update SMA
set Academic_Level = replace(Academic_Level, "Under]]graduate","Undergraduate");

update SMA
set Academic_Level = replace(Academic_Level, "Undev77rgraduate","Undergraduate");

select distinct(Country)
from SMA

update SMA
set Country = replace(Country,"USA@@","Usa");

update SMA
set Country = replace(Country,"Can//ada","Canada");

update SMA
set Country = replace(Country,"Japan^^","Japan");

select *
from sma;

#adding of a new column 
alter table table_name 
#add column_namem data_type#

alter table sma
rename column Avg_Daily_Usage_Hours to Avg_Daily_Usage_Hour;


select distinct(Most_Used_Platform)
from sma;

select distinct(Affects_Academic_Performance)
from sma;

update SMA
set Affects_Academic_Performance = replace(Affects_Academic_Performance,"Yesbbb","Yes");

update SMA
set Affects_Academic_Performance = replace(Affects_Academic_Performance,"Yes>>","Yes");


select *
from sma;

update SMA
set Relationship_Status = replace(Relationship_Status,"Single<<<","Single");

# which plateform is the most popular among students

select Most_Used_Platform,count(Most_Used_Platform) as no_of_plateform
from sma
group by Most_Used_Platform
order by no_of_plateform desc;

#what is the average daily usage of social media by academic level

select * from sma;

select Academic_Level, avg(Avg_Daily_Usage_Hour) as average_usage
from sma
group by Academic_Level
order by average_usage desc;

#Do students who reports academic impact from social media use it more on average


select Affects_Academic_Performance,avg(Avg_Daily_Usage_Hour) as Average_usage
from sma
group by Affects_Academic_Performance;

#what is the relationship between social media usage and sleep


select * from sma;
 
 
select 
case 
when Avg_Daily_Usage_Hour >= 5 then "High Usage"
when Avg_Daily_Usage_Hour >= 3 then "Moderate Usage"
Else "Low Usage"
End as Usage_Category,
avg(Sleep_Hours_Per_Night) as average_sleep
from sma
group by Usage_Category;


select *
from sma;



#country with the highest average addiction score 

select Country, avg(Addiction_Score) as Average_Addicted_Score
from sma
group by Country
order by Average_Addicted_Score desc;

#does relationship status affect the number of conflict over social media
 
select Relationship_Status, avg(Conflicts_Over_Social_Media) as Avg_Conflict_Over_Social_media 
from sma
group by Relationship_Status
order by Avg_Conflict_Over_Social_Media desc;

#Relationship status by mental health

select Relationship_Status, avg(Mental_Health_Score) as average_Mental_Health_Score
from sma
group by Relationship_status
order by average_Mental_Health_Score desc;

#average mental health score for each gender 

select gender, avg(Mental_Health_Score) as Average_Mental_Health_Score
from sma 
group by gender 
order by Average_Mental_Health_Score;



#how does addiction score relates to academic impact

select Affects_Academic_Performance, avg(Addiction_Score) as Average_Addicted_Score
from sma
group by Affects_Academic_Performance
order by Average_Addicted_Score;




select distinct(Conflicts_Over_Social_Media)
from sma;

#order by Addicted_Score desc;

#DO students with higher addiction score sleep less

select 
case
when addiction_score >=7 then "High Addiction"
when addiction_score >=4 then "Moderate Addiction"
else "Low Addiction"
end as Addiction_Level,
avg(Sleep_Hours_Per_Night) as average_Sleep_Hours
from sma
group by Addiction_Level
order by average_Sleep_Hours desc;

alter table sma
rename column Addicted_Score to Addiction_Score;


#which academic level is most affected

select academic_Level, count(*) as Total_Students, sum(
case 
when Affects_academic_performance = "Yes"
then 1 else 0
end) as Students_affected,
Round(sum( case
when affects_academic_performance = "yes"
then 1 else 0
end)/count(*)*100, 2) as percent_affected
from sma
group by academic_level
order by percent_affected desc;


#academic level by sleep hours#

select academic_level, avg(Sleep_Hours_Per_Night) as average_Sleep_Hours
from sma
group by academic_level
order by average_Sleep_Hours desc;


#top 3 countries with highest level of students whose academic level has been affected
select * from sma;

select country, count(case
when Affects_Academic_Performance = "yes" 
then 1
 else 0 
end) as Affected_students 
from sma
group by country
order by Affected_Students desc
limit 3;


#average addiction score by plateform

select Most_Used_Platform, avg(Addiction_Score) as average_Addiction_score
from sma
group by Most_used_platform
order by average_Addiction_score desc;


# Relationship status by addiction score
select Relationship_status, avg(Addiction_Score) as average_Addiction_score
from sma
group by Relationship_status
order by average_Addiction_score desc;

select Relationship_status, avg(Mental_Health_Score) as average_Mental_Health_Score
from sma
group by Relationship_status
order by average_Mental_Health_Score desc;
#students in a complicated relation have conflict over social media, low mental score


select * from sma;

#gender by average daily usage
select Gender, avg(Avg_Daily_Usage_Hour) as Avg_Daily_Usage_Hour
from sma 
group by Gender
order by Avg_Daily_Usage_Hour;

#Gender by addicted score
select Gender, avg(Addiction_Score) as average_addiction_score
from sma
group by Gender 
order by average_addiction_score;

#which academic level is most affected by social media
select Academic_Level;

select distinct(age)
from sma;

select case 
when age <= 20 then "19-20"
when age <= 22 then "21-22"
else "23-24" end as age_range,
avg(Addiction_score) as Addiction
from sma
group by age_range;


select case 
when age <= 20 then "19-20"
when age <= 22 then "21-22"
else "23-24" end as age_range,
avg(Conflicts_Over_Social_Media) as conflict_Rate
from sma
group by age_range;

select case 
when age <= 20 then "19-20"
when age <= 22 then "21-22"
else "23-24" end as age_range,
avg(Mental_health_score) as Mental_Health
from sma
group by age_range;
#19-20 have low mental score and high conflict over social media

# Holding webinar on the dangers of being addicted to social media
#pros and cons of social media















