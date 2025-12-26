--Diabetes Rate by BMI Category

select 
BMI_Category,
COUNT(*) as Total_Patients,
SUM(Outcome) as Diabetic_Patients,
round(SUM(cast(Outcome as float))/COUNT(*)*100,2) as Diabetic_Rate
from 
[dbo].[Diabetes_Patient_Data]
group by BMI_Category
order by Diabetic_Rate desc