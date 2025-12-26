--Obese + High Glucose Patients

select COUNT(*) as High_Risk_Patients 
from [dbo].[Diabetes_Patient_Data]
where Obese_High_Glucose=1