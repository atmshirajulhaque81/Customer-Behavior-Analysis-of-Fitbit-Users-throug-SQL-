# Customer Behavior Analysis of Smart Wearables
**An End-to-End SQL-Tableau Case Study: Bellabeat Marketing Strategy** *A Google Data Analytics Professional Certificate Capstone Project*

## 🎯 Business Task
The primary objective of this project is to analyze customer behavior patterns from smart device usage to guide a high-level marketing strategy for Bellabeat, a tech-driven manufacturer of health-focused products for women.

### Key Objectives:
1. Identify how different user groups (e.g., Sedentary vs. Highly Active) utilize their devices.
2. Determine key business KPIs related to daily activity, heart rate, and sleep hours.
3. Develop strategic marketing recommendations for the "Leaf" wearable to increase brand engagement and market share.

### 🚀 Strategic Research Questions
To achieve the business task, this analysis answers the following critical questions:
1. Activity Trends: How do daily steps and activity intensity vary across different weekdays?
2. Health Metrics: What percentage of users maintain standard heart rates (60-100 BPM) and recommended sleep durations (7-9 hours)?
3. User Retention: What is the Daily Active User (DAU) rate, and how consistent is device engagement over a 31-day period?
4. Caloric Burn: What is the average daily energy expenditure, and how does it correlate with activity intensity?

## 📌 Project Overview
This project explores smart device fitness and usage data to explore new growth opportunities for Bellabeat app's curated app designed for health conscious women segment. I have applied **PostgreSQL** for ELT on 30 tables and **Tableau** to visualize activity wise segment trends.

### 🔄 Data Processing & ETL
![ETL Process](https://explorelife365.wordpress.com/wp-content/uploads/2025/08/etl-process-1.jpg)

### 📈 Weekday Activity Trends
![Weekday Activity Comparison](https://explorelife365.wordpress.com/wp-content/uploads/2025/08/comparison-of-activity-minutes-by-week-day.jpg)

## 🛠️ Tech Stack
* **SQL:** PostgreSQL (Data Cleaning, Transformation, and EDA)
* **Visualization:** Tableau Public
* **Documentation:** WordPress

## 📁 Repository Structure
* **/SQL**: PostgreSQL cleaning and analysis scripts.
* **/Visualizations**: Database ERD and dashboard snapshots.
* **/Data**: Context regarding the Mobius Fitbit dataset.

![Database ERD](./Visualizations/ERD_Diagram_Bellabeat_App.png)

## 📊 Key Findings
* **Sedentary Time:** High correlation found between high sedentary minutes and low sleep quality.
* **Peak and Off-Peak Activity:** Tuesday and Wednesday are the highest activity and drop-in activity on Friday, Saturday and Sunday (weekend effect) for Bellabeat users.
* **DAU:** 63% have been found daily active users which is a great insight for bellabeat app.

## 💡 Strategic Marketing Recommendations

Based on the analysis, I recommend the following three-pillar strategy for the Bellabeat marketing team:

1. The "Mid-Week Motivation" Campaign
Insight: Data showed peak activity on Tuesdays/Wednesdays with a significant weekend drop-off.
         Deploy targeted app notifications on Friday evenings and Sunday mornings.

2. Personalized Sleep Hour Features
Insight: Only 30% of users meet recommended sleep durations, and sedentary time correlates with poor sleep.
         Sleep and heart rate monitoring should be emphasized with market communication.

3. Action Approach:
Insight: Insprire the customers to track health KPIs and provide a category like “Outstanding Performance” or “You need just another 100 steps to reach your goal.”

4. Subscription Value Enhancement
Insight: DAU sits at 63% which suggests a high daily engagement, showing a segment of users who may be targeted for strategic marketing personas.
         Offer a tiered subscription model providing deeper heart rate and stress analysis for users based on logging activity.

## 📖 Data Dictionary

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| **cus_id** | `bigint` | Unique identifier for each Fitbit user (Primary Key). |
| **activity_date** | `date` | The specific day the data was recorded. |
| **total_steps** | `integer` | Total number of steps taken in a 24-hour period. |
| **sed_min** | `integer` | Total minutes spent in a sedentary (inactive) state. |
| **very_act_min** | `integer` | Minutes spent in high-intensity physical activity. |
| **calories** | `integer` | Total estimated energy expenditure in kilocalories. |
| **total_sleep** | `integer` | Cumulative minutes of recorded sleep (found in `sleep_merged`). |

## 🔗 Project Links
* [Full Case Study on WordPress](https://explorelife365.wordpress.com/2025/08/21/customer-behavior-analysis-of-smart-wearables-google-data-analytics-capstone-project/)
---
