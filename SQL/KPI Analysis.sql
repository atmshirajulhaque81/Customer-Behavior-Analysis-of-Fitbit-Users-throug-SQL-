SELECT * FROM daily_step

## Top 10 toal steps
SELECT DISTINCT(cus_id), SUM(total_steps) AS total_steps
FROM daily_step 
GROUP BY DISTINCT(cus_id)
ORDER BY SUM(total_steps) DESC
LIMIT 10



##KPI Analysis

#Daily Active User

SELECT activity_date, COUNT(DISTINCT cus_id) AS dau, 
COUNT(DISTINCT cus_id) / 31*100 AS dau_percent 
FROM dailyactivity
GROUP BY activity_date
ORDER BY activity_date


# Total Daily Calories VS Total steps by distinct customers

SELECT DISTINCT(cus_id), SUM (calories) AS total_calories, SUM (total_steps) 
AS total_steps
FROM dailyactivity
GROUP BY DISTINCT(cus_id)
ORDER BY SUM (calories) DESC, SUM (total_steps) DESC


##EDA ANALYSIS
##missing values check
SELECT COUNT (cus_id) as total_observations, COUNT(activity_date) AS date, 
COUNT (total_steps) as total_steps, COUNT (total_dist) as total_distance, 
COUNT (tracker_dist) AS total_track_dist, COUNT (logged_act_dist) as total_logged_distance,
COUNT (logged_act_dist) AS total_log_act_dist, COUNT (very_act_dist) AS total_very_act_dist, 
COUNT (light_act_dist) AS total_light_act_dist, COUNT (sed_act_dist) AS total_sed_act_dist,
COUNT (very_act_min) AS v_act_min, COUNT (fairly_act_min) AS f_act_min, 
COUNT (lightly_act_min) AS l_act_min, COUNT (sedentary_min) AS sed_min  
FROM dailyactivity
##No missing values

##average of all observations

SELECT AVG (total_steps) as avg_total_steps, AVG (total_dist) as avg_total_distance, 
AVG (tracker_dist) AS avg_track_dist, AVG (logged_act_dist) as avg_logged_distance,
AVG (logged_act_dist) AS avg_log_act_dist, AVG (very_act_dist) AS avg_very_act_dist, 
AVG (light_act_dist) AS avg_light_act_dist, AVG (sed_act_dist) AS avg_sed_act_dist,
AVG (very_act_min) AS avg_act_min, AVG (fairly_act_min) AS avg_f_act_min, 
AVG (lightly_act_min) AS avg_l_act_min, AVG (sedentary_min) AS avg_sed_min  
FROM dailyactivity

#Comparison of All average
##AVG daily total distance >= 7000 

###Consumers who have crossed above average steps of 7000

SELECT DISTINCT (cus_id) , ROUND(AVG (total_steps)) AS above_average_steps 
FROM dailyactivity
GROUP BY DISTINCT (cus_id)
HAVING ROUND(AVG (total_steps)) >= 7000
ORDER BY ROUND(AVG (total_steps))

SELECT * FROM dailyactivity
LIMIT 3

##How many customers are considered SEDENTARY MINUTE >5 HOURS

SELECT DISTINCT (cus_id), ROUND(AVG (sedentary_min)) AS avg_sed_min 
FROM dailyactivity
GROUP BY DISTINCT (cus_id)
HAVING ROUND(AVG (sedentary_min)) >= 300
ORDER BY ROUND(AVG (sedentary_min)) DESC

##Heart rate
##How many have a heart rate between 60 and 100
##There are 14 unique inviduals out of 33

SELECT COUNT(*) FROM dailyactivity
SELECT DISTINCT (cus_id) AS unique_customers, ROUND (AVG (value)) 
AS daily_heart_rate 
FROM heart_rate 
GROUP BY DISTINCT (cus_id)
HAVING ROUND (AVG (value)) BETWEEN 60 AND 100
ORDER BY ROUND (AVG (value)) ASC



# 150-300 minutes of moderate_act_min (fairly+lightly)

SELECT DISTINCT (cus_id) AS unique_customers, COUNT (DISTINCT activity_date) 
AS total_days , 
ROUND (AVG (fairly_act_min + lightly_act_min)) AS moderate_act_min 
FROM dailyactivity
GROUP BY DISTINCT (cus_id)
HAVING ROUND (AVG (fairly_act_min + lightly_act_min)) BETWEEN 150 AND 300
ORDER BY ROUND (AVG (fairly_act_min + lightly_act_min)) ASC



##sleep day

#Is everyday recorded for total_sleep?
#CHECK FOR MISSING VALUES

SELECT COUNT (total_sleep_record)
FROM sleep_day
WHERE sleep_day IS NULL
#413 days total sleep day was counted


## 10-20 minutes of very active min
SELECT DISTINCT (cus_id) AS unique_customers, ROUND (AVG (very_act_min)) 
AS very_act_min 
FROM dailyactivity 
GROUP BY DISTINCT (cus_id)
HAVING ROUND (AVG (very_act_min)) BETWEEN 10 AND 20
ORDER BY ROUND (AVG (very_act_min)) ASC




##SLEEP DAY
#total_min_asleep
## WHAT is the average sleeping hours compared to standard

## total_min_asleep compared to average sleep hour of at least 7 hours

SELECT DISTINCT (cus_id), ROUND (AVG(total_min_asleep)/ 60) AS sleep_per_day
FROM sleep_day
GROUP BY DISTINCT (cus_id)
HAVING ROUND (AVG(total_min_asleep)/ 60) >= 7
ORDER BY ROUND (AVG(total_min_asleep)/ 60) ASC


###DAILY CALORIE

How many consumers burn at least the recommended calory?
SELECT DISTINCT (dailyactivity.cus_id), ROUND(AVG(dailyactivity.calories)) 
as daily_cal_burned
FROM dailyactivity
INNER JOIN daily_calorie
ON dailyactivity.cus_id = daily_calorie.cus_id
GROUP BY DISTINCT (dailyactivity.cus_id)
HAVING ROUND(AVG(dailyactivity.calories)) >= 2200


##USE OF CASE

####Performance segmentation
##940 observations
SELECT cus_id, activity_date, total_steps, 
CASE 
	WHEN (total_steps >= 10000) THEN 'Outstanding'
	WHEN (total_steps BETWEEN 7500 AND 9999) THEN 'Progressive'
	ELSE 'Normal'
END	AS performance_category
FROM dailyactivity


