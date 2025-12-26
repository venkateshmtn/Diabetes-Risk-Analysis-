--Glucose Level Impact

select 
Glucose_Level,
COUNT(*) as Total_Patients,
SUM(Outcome) as Diabetic_Patients,
round(SUM(cast(Outcome as float))/COUNT(*)*100,2) as Diabetic_Rate
from [dbo].[Diabetes_Patient_Data]
group by Glucose_Level
order by Diabetic_Rate desc