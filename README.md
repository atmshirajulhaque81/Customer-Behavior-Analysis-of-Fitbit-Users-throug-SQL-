# Customer Behavior Analysis of Smart Wearables
**An End-to-End Case Study: Bellabeat Marketing Strategy**

## 📌 Project Overview
This project explores smart device fitness and usage data to explore new growth opportunities for Bellabeat app's curated app designed for health conscious women segment. I have applied **PostgreSQL** for ELT on 30 tables and **Tableau** to visualize activity wise segment trends.

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

### 📖 Data Dictionary

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
  
