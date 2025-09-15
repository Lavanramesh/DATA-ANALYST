use project_medical_data_history;
select * from admissions;
select*from doctors;
select*from patients;
select * from province_names;
-- PROBLEM QUERY 1 --
SELECT
first_name,
last_name,
gender
FROM patients
WHERE gender='M';
-- PROBLEM QUERY 2 --
SELECT 
first_name,
last_name
FROM patients
WHERE allergies is null;
-- PROBLEM QUERY 3 --
SELECT 
first_name
FROM patients
WHERE first_name like'C%';
-- PROBLEM QUERY 4 --
SELECT
first_name,
last_name
FROM patients
WHERE weight between 100 and 120;
-- PROBLEM QUERY 5 --


-- PROBLEM QUERY 6 --
SELECT CONCAT(first_name," ",last_name) as Full_name FROM patients;
-- PROBLEM QUERY 7 --

-- PROBLEM QUERY 8 --
SELECT COUNT(*) FROM patients WHERE YEAR(birth_date)=2010;

-- PROBLEM QUERY 9 --
SELECT 
first_name,last_name,height 
FROM patients 
ORDER BY height DESC
LIMIT 1;
-- PROBLEM QUERY 10 --
SELECT * FROM patients WHERE patient_id IN(1,45,534,879,1000);
-- PROBLEM QUERY 11 --
SELECT COUNT(*) FROM admissions;
-- PROBLEM QUERY 12 --
SELECT * FROM admissions WHERE admission_date=discharge_date;
-- PROBLEM QUERY 13 --
SELECT COUNT(*) FROM admissions WHERE patient_id=579;
-- PROBLEM QUERY 14 --
SELECT DISTINCT city FROM patients WHERE province_id='NS';
-- PROBLEM QUERY 15 --
SELECT first_name,last_name,birth_date FROM patients WHERE height>160 and weight>70;
-- PROBLEM QUERY 16 --
SELECT distinct 
YEAR(birth_date)
FROM patients
ORDER BY YEAR(birth_date) ASC;
-- PROBLEM QUERY 17 --
SELECT first_name
FROM patients
GROUP BY first_name
HAVING COUNT(*)=1;
-- PROBLEM QUERY 18 --
SELECT 
patient_id,first_name
FROM patients
WHERE first_name LIKE 's%s' AND Length(first_name)>=6;
-- PROBLEM QUERY 19 --
SELECT p.patient_id,p.first_name,p.last_name
FROM patients p
JOIN admissions a ON a.patient_id=p.patient_id
WHERE diagnosis='Dementia';
-- PROBLEM QUERY 20 --
SELECT first_name
FROM patients
ORDER BY Length(first_name),first_name;
-- PROBLEM QUERY 21 --
SELECT 
COUNT(CASE WHEN gender ='M' THEN 1 END) AS male_count,
COUNT(CASE WHEN gender ='F' THEN 1 END) AS female_count
FROM patients;
-- PROBLEM QUERY 22 --
SELECT patient_id,diagnosis
FROM admissions
GROUP BY patient_id,diagnosis
HAVING count(*)>1;
-- PROBLEM QUERY 23 --






















