##EDA ANALYSIS

#How many unique customers are there?

SELECT COUNT (DISTINCT cus_id)
FROM dailyactivity

##33 customers

#How many unique activity date are there?

SELECT COUNT (DISTINCT activity_date)
FROM dailyactivity
31 Days

## Find out the total steps queries

SELECT DISTINCT(cus_id), MAX(total_steps), MIN (total_steps), 
ROUND(AVG (total_steps)) 
AS average_steps
FROM dailyactivity
GROUP BY DISTINCT(cus_id)
ORDER BY MAX(total_steps) DESC, MIN (total_steps) ASC, 
ROUND(AVG (total_steps)) DESC

##total distance EDA
SELECT COUNT(DISTINCT cus_id), MAX(total_dist), MIN (total_dist), 
ROUND(AVG (total_dist)) AS average_distance, CORR (total_dist,total_steps)
FROM dailyactivity
GROUP BY DISTINCT(cus_id)
ORDER BY MAX(total_dist) DESC, MIN (total_dist) ASC, ROUND(AVG (total_dist)) DESC

##tolightlytive minute

SELECT DISTINCT(cus_id), MAX(very_act_min), MIN (very_act_min), 
ROUND(AVG (very_act_min)) AS average_act_min, MAX(fairly_act_min), 
MIN (fairly_act_min), ROUND(AVG (fairly_act_min)) AS avg_fairly_act_min, 
MAX(lightly_act_min), MIN (lightly_act_min), ROUND(AVG (lightly_act_min)) 
AS avg_lightly_act_min
FROM dailyactivity
GROUP BY DISTINCT(cus_id)

## Calories
SELECT DISTINCT(cus_id),MAX(calories), MIN (calories), 
ROUND(AVG (calories)) AS average_calory 
FROM dailyactivity
GROUP BY DISTINCT (cus_id)

## Heart Rate

SELECT DISTINCT (cus_id), MAX(value), MIN (value), 
ROUND(AVG (value)) AS average_value 
FROM heart_rate
GROUP BY DISTINCT (cus_id)

## Sleep Day

SELECT * FROM sleep_day

SELECT MAX(total_min_asleep)/60 AS highest_time_bed, 
MIN (total_min_asleep)/60 AS min_time_bed, 
ROUND(AVG (total_min_asleep),2)/60 AS average_sleep_min 
FROM sleep_day
GROUP BY DISTINCT (cus_id)

##Total Time in Bed

SELECT DISTINCT (cus_id), MAX(total_time_bed)/60, MIN (total_time_bed)/60, 
ROUND(AVG (total_time_bed))/60 AS average_time_bed 
FROM sleep_day
GROUP BY DISTINCT (cus_id)





