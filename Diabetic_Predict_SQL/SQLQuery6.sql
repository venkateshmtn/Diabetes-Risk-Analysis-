--Family History Impact

select Family_History_Risk,
COUNT(*) as Total_Patients,
SUM(Outcome) as Diabetic_Patients
from [dbo].[Diabetes_Patient_Data]
group by Family_History_Risk