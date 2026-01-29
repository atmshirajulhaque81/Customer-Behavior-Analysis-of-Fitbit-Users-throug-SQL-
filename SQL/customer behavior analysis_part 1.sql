SELECT count(*)
FROM information_schema.columns
WHERE table_schema = 'public' AND table_name = 'dailyactivity';

SELECT * FROM dailyactivity
#What could be the questions?
#What was the total distance by unique customers?
#What was the very active distance by unique customers?
##Comparison of Total Active Distance, Moderate Active Distance, Total Light Distance

##Comparison of category of distance

SELECT DISTINCT (cus_id), SUM (very_act_dist) AS total_act_dist, 
SUM(mod_act_dist) AS mod_act_dist, SUM (light_act_dist) AS total_light_dist
FROM dailyactivity, TO_CHAR (activity_date, 'Mon-YYYY')
GROUP BY DISTINCT (cus_id)
ORDER BY SUM(very_act_dist) DESC


SELECT total_dist DESC FROM dailyactivity

## What are the top 10 total distance covered customers?

SELECT DISTINCT (cus_id), ROUND(SUM(tracker_dist)) AS tracker_dist_km
FROM dailyactivity
GROUP BY DISTINCT(cus_id)
ORDER BY ROUND(SUM(tracker_dist)) DESC
LIMIT 10



SELECT DISTINCT (cus_id),COUNT(DISTINCT activity_date) AS total_days, 
SUM(total_steps) AS total_steps 
FROM dailyactivity
GROUP BY DISTINCT (cus_id)
ORDER BY SUM(total_steps) DESC 

##Is there any variation in total steps by weekday?

SELECT DISTINCT (TO_CHAR (activity_date, 'Day')) AS week_day, 
SUM (total_steps) AS total_steps
FROM dailyactivity
GROUP BY DISTINCT (TO_CHAR (activity_date, 'Day'))
ORDER BY SUM(total_steps)

# Trend of VERY active distance by week

SELECT DISTINCT (TO_CHAR (activity_date, 'Day')) AS week_day, 
ROUND(SUM (very_act_dist)) AS v_act_dist
FROM dailyactivity
GROUP BY DISTINCT (TO_CHAR (activity_date, 'Day'))
ORDER BY ROUND(SUM (very_act_dist)) ASC

# Trend of VERY sedentary distance by week

SELECT DISTINCT (TO_CHAR (activity_date, 'Day')) AS week_day, ROUND(SUM (sed_act_dist)) AS sed_act_dist
FROM dailyactivity
GROUP BY DISTINCT (TO_CHAR (activity_date, 'Day'))
ORDER BY ROUND(SUM (sed_act_dist)) ASC

# comparison of all categories total distance by week

SELECT DISTINCT (TO_CHAR (activity_date, 'Day')) AS week_day, 
ROUND(SUM (very_act_dist)) AS very_act_dist, 
ROUND(SUM (mod_act_dist)) AS mod_act_dist, 
ROUND(SUM (light_act_dist)) AS light_act_dist, 
ROUND(SUM (sed_act_dist)) AS sed_act_dist
FROM dailyactivity
GROUP BY DISTINCT (TO_CHAR (activity_date, 'Day'))
ORDER BY ROUND(SUM (very_act_dist)) ASC

# comparison of average total distance categories by month

SELECT TO_CHAR(activity_date, 'mon-dd') AS date, 
ROUND(AVG (very_act_dist)) AS very_act_dist, 
ROUND(AVG (mod_act_dist)) AS mod_act_dist, 
ROUND(AVG (light_act_dist)) AS light_act_dist, 
ROUND(AVG (sed_act_dist)) AS sed_act_dist
FROM dailyactivity
GROUP BY TO_CHAR(activity_date, 'mon-dd')
ORDER BY TO_CHAR(activity_date, 'mon-dd')



SELECT * FROM dailyactivity
##comparison of total distance by category
SELECT DISTINCT (cus_id), ROUND (SUM (very_act_dist)) AS total_v_act_dist,
ROUND(SUM (mod_act_dist)) AS total_mod_act_dist, 
ROUND(SUM (light_act_dist)) AS total_light_act_dist
FROM dailyactivity
GROUP BY DISTINCT (cus_id)
ORDER BY ROUND (SUM (very_act_dist)) DESC

# comparison of total time by week

SELECT * FROM dailyactivity

##8 Comparison of total distnace by category

SELECT DISTINCT (TO_CHAR (activity_date, 'Day')) AS week_day, 
ROUND(SUM (very_act_min)) AS very_act_min, 
ROUND(SUM (fairly_act_min)) AS mod_act_min, 
ROUND(SUM (lightly_act_min)) AS lightly_act_min, 
ROUND(SUM (sedentary_min)) AS sed_act_min
FROM dailyactivity
GROUP BY DISTINCT (TO_CHAR (activity_date, 'Day'))
ORDER BY ROUND(SUM (very_act_min)) DESC


##distinct customers by number of days and total steps
SELECT cus_id, COUNT (DISTINCT activity_date) AS number_of_days, 
SUM(total_steps) as total_steps
FROM dailyactivity
GROUP BY cus_id 
ORDER BY COUNT (DISTINCT activity_date) DESC

SELECT DISTINCT(cus_id) FROM
(SELECT * FROM daily_activity_mar
UNION
SELECT * FROM dailyactivity)

