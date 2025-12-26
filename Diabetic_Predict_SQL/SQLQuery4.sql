--High Risk Patients

select * From 
[dbo].[Diabetes_Patient_Data]
where Risk_Score>=4 order by Risk_Score desc