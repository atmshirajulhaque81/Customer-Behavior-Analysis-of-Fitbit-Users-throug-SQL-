SELECT COUNT (DISTINCT cus_id) FROM PUBLIC."METs_narrow_min"

#MET The metabolic equivalent of task (MET) is the objective 
measure of the ratio of the rate at which a person expends energy, 
relative to the mass of that person

SELECT DISTINCT(cus_id), active_min, mets
FROM PUBLIC."METs_narrow_min"
ORDER BY cus_id, mets

SELECT COUNT (DISTINCT cus_id) AS unique_cus
FROM PUBLIC."METs_narrow_min"

##Table 

SELECT id FROM cal_min_narrow

SELECT * FROM weightlog
INNER JOIN weight_log_mar
ON weightlog.cus_id = weight_log_mar.cus_id



CREATE TABLE weight_combined AS
SELECT 

SELECT COUNT (DISTINCT cus_id) FROM weightlog
8
SELECT DISTINCT (cus_id), mannual_report
FROM weightlog
ORDER BY cus_id

# How many customers asked for mannual_report?

SELECT cus_id,mannual_report, COUNT (mannual_report)  
FROM weightlog
GROUP BY cus_id, mannual_report 
##I did it
##Who were the customers who had opted for mannual report?
SELECT cus_id, mannual_report, COUNT(mannual_report) 
FROM weightlog
GROUP BY cus_id, mannual_report
ORDER BY mannual_report DESC
  
SELECT * FROM weightlog
##AGGREGATE MEASURES

SELECT MAX(weight_kg) AS max_weight, ROUND(MIN (weight_kg)) AS minimum_weight, 
ROUND(AVG (weight_kg)) AS average_weight  
FROM weightlog

##without fat
SELECT DISTINCT(cus_id), ROUND(weight_kg) AS weight_kg, ROUND (bmi) AS bmi
FROM weightlog
ORDER BY weight_kg 

##with fat
SELECT DISTINCT(cus_id), ROUND(weight_kg) AS weight_kg, fat, ROUND (bmi) AS bmi
FROM weightlog
WHERE FAT IS NOT NULL
ORDER BY weight_kg DESC


