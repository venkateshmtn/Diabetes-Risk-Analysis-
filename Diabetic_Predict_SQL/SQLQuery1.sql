--Diabetes Rate by Age Group

select 
Age_Group,
COUNT(*) as Total_Patients,
SUM(Outcome) as Diabetic_Patients,
round(SUM(cast(Outcome as float))/COUNT(*)*100,2) as Diabetic_Rate
from 
[dbo].[Diabetes_Patient_Data]
group by Age_Group
order by Diabetic_Rate desc