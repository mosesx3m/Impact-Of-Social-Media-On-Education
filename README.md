# Impact Of Social Media On Education
- [Project-Overview](#project-overview)
- [Data Sources](#data-sources)
- [Data Cleaning And Preparation](#data-cleaning-and-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Analysis](#data-analysis)
- [Key Findings](#key-findings)
- [Technical Skills Used](#technical-skills-used)
- [Summary](#summary)
- [Recommendations](#recommendations)
- [Limitations](#limitations)


### Project Overview

This project analyzes the complex relationship between social media usage and its effects on students' academic performance, mental health, and sleep patterns. 
By examining a diverse dataset, this analysis identifies key trends and provides data-driven recommendations to promote healthier digital habits.

The objective was to identify key correlations, such as the link between social media addiction and academic performance, daily usage and sleep quality, and the influence of relationship status on mental health. By cleaning, analyzing, and visualizing this data, the project reveals significant patterns and vulnerabilities within the student population. 
This work demonstrates proficiency in data cleaning, exploratory data analysis, and the ability to translate complex data into clear, compelling, and actionable recommendations for educational institutions and students alike. The findings serve as a foundation for developing data-driven strategies to promote digital well-being and academic success.

### Data Sources
The primary data dataset used for this analysis is the "Students Social Media Addiction.csv" file containing details about each students

### Data Cleaning And Preparation

- Data loading and inspection
- Removing duplicates
- Replacing irregular entries

### Exploratory Data Analysis 
#### Guiding Questions
The analysis was guided by a series of questions designed to uncover patterns and relationships within the dataset. The key questions addressed were grouped by their relationship to the key findings.

#### 1 General Social Media Usage

- Which platform is the most popular among students?

- High Usage & Its Negative Correlation with Outcomes

- What is the average daily social media usage by academic level and gender?

- What is the relationship between social media usage and sleep?

- What is the relationship between social media usage and mental health scores?

#### 2 Specific Demographics & Their Vulnerabilities

- Which academic level is most affected by social media addiction?

- Does relationship status affect the number of conflicts over social media?

- What is the relationship between relationship status and mental health?

- Top countries with high reports of students affected 

#### 3 Addiction & Its Impact on Performance

- How does addiction score relate to academic impact?

- Which age group is most affected?

### Data Analysis
```sql
select 
case 
when Avg_Daily_Usage_Hour >= 5 then "High Usage"
when Avg_Daily_Usage_Hour >= 3 then "Moderate Usage"
Else "Low Usage"
End as Usage_Category,
avg(Sleep_Hours_Per_Night) as average_sleep
from sma
group by Usage_Category;
```

```sql
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
```

### Key Findings
- From the Analysis carried out, it shows that instagram is the most used platform
- Gender and Usage Disparity: Female students show a higher average daily usage and addiction score, which correlates with their lower average mental health scores. This suggests a need for targeted support programs.

- Academic Vulnerability: The data indicates that undergraduates and high school students are particularly vulnerable to the negative impacts of social media on academic performance and sleep.

- Relationship Status: Students in complicated relationships exhibit a notable increase in social conflict and a significant drop in mental health scores,
 suggesting that relationship dynamics are a critical variable in the social media experience.

- Global Trends: The findings shows that India, USA, and Canada as the top 3 countries where students report a high negative academic impact, point to the need for a global conversation about responsible social media use and digital well-being.

- Impact On Age Groups : The analysis of age groups highlighted a critical finding: the 19-20 age group demonstrates the most pronounced negative impacts from social media. This group exhibits a combination of low mental health scores, a high number of academic performance issues, and the lowest average sleep duration per night.
They also report high daily social media usage, suggesting they are a highly vulnerable demographic.

### Technical Skills Used
- Data Analysis: Utilized data analysis to identify key correlations and trends within the dataset.

- Data Visualization: Created visuals to effectively communicate findings on topics like country-specific addiction scores and academic level comparisons.

- Programming Languages & Tools:  Excel, SQL.


### Summary

This project investigates the critical relationship between social media usage and student well-being, focusing on its impact on academic performance, mental health, and sleep patterns. Through a comprehensive data analysis using SQL and visualization tools, I uncovered significant trends and vulnerabilities within the student population.

The analysis revealed a strong correlation between high social media usage, lower sleep hours, and decreased mental health scores, with female students and the 19-20 age group being disproportionately affected.
The findings demonstrate proficiency in data cleaning, exploratory analysis, and translating complex datasets into clear, actionable insights for stakeholders.


### Recommendations
##### Based on these findings, I recommend the following:
- For the High schhol students, parents and schools should limit the students access to social media, by teaching them the disadvantages and the effect it will have over their education.
- Gender-Specific Support: Universities and High schools should Launch well-being initiatives and resources that are specifically tailored to address the higher usage and lower mental health scores found among female students.
- Target People: Focus support and educational campaigns on high school and undergraduate students, who are the most vulnerable to social media's negative academic and physical effects.
- Provide Counseling Resources: Educational institutions should highlight and expand access to mental health services, specifically for students in complicated relationships, to help them navigate social conflicts and improve their well-being.
- Relationship Guidance: Offer specialized counseling resources for students in complicated relationships to help them navigate social media-related conflicts and improve their mental well-being.

### Limitations
I had to write queries to create new columns in the dataset to be able to gather more insights regarding some certain areas and were not present in the dataset.



