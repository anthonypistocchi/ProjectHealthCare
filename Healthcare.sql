SELECT *
FROM diabetic_data dd 

--2
SELECT COUNT(encounter_id)
FROM diabetic_data dd 

--3
SELECT medical_specialty, COUNT(medical_specialty) as Diag_count 
FROM diabetic_data dd 
group by medical_specialty 
order by Diag_count DESC 


--4
SELECT medical_specialty, avg(time_in_hospital) as Avg_time_in_hospital 
FROM diabetic_data dd 
group by medical_specialty 
order by Avg_time_in_hospital desc

--5
SELECT readmitted, count(readmitted)  as Count_of_readmitted, COUNT(encounter_id) as Count_of_encounterID
FROM diabetic_data dd 
group by readmitted 
order by Count_of_readmitted desc


--6
SELECT age, 
case
		when age is '[0-10)' Then "Child"
		when age is '[10-20)' THEN "Teen to Young Adult"
		when age is '[20-30)' Then "Adult"
		when age is '[30-40)' Then "Adult"
		when age is '[40-50)' Then "Adult"
		when age is '[50-60)' Then "Adult"
		when age is '[60-70)' Then "Geriatric"
		when age is '[70-80)' Then "Geriatric"
		when age is '[80-90)' Then "Geriatric"
		when age is '[90-100)' Then "Geriatric"
		ELSE "Not Working"
	end as Age_Distribution
FROM diabetic_data dd 


--7
SELECT medical_specialty, num_procedures 
FROM diabetic_data dd 
group by medical_specialty 
order by num_procedures desc

--8
SELECT avg(num_medications) as Average_num_meds, age, 
case
		when age is '[0-10)' Then "Child"
		when age is '[10-20)' THEN "Teen to Young Adult"
		when age is '[20-30)' Then "Adult"
		when age is '[30-40)' Then "Adult"
		when age is '[40-50)' Then "Adult"
		when age is '[50-60)' Then "Adult"
		when age is '[60-70)' Then "Geriatric"
		when age is '[70-80)' Then "Geriatric"
		when age is '[80-90)' Then "Geriatric"
		when age is '[90-100)' Then "Geriatric"
		ELSE "Not Working"
	end as Age_Distribution
FROM diabetic_data dd 
group by age

--9
SELECT readmitted, payer_code 
FROM diabetic_data dd 
where payer_code is not '?'
order by payer_code 