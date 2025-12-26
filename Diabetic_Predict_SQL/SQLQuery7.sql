--Top Risk Profiles

select 
Age_Group,
BMI_Category,
Glucose_Level,
AVG(Risk_Score) as Avg_Risk_Score,
COUNT(*) as Patient_Count 
from [dbo].[Diabetes_Patient_Data]
group by
Age_Group,
BMI_Category,
Glucose_Level
order by Avg_Risk_Score desc