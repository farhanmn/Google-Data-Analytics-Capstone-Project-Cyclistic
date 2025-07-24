# Cyclistic Bike Share Case Study

## 📝 Introduction

The **Cyclistic Bike Share Case Study** is a capstone project for the **Google Data Analytics Professional Certificate** on Coursera. In this project, I will follow the data analysis process which I learned from the course: <ins>ask, prepare, process, analyze, share and act</ins> to analyze the data.

## 💬 Background

Cyclistic is a **bike-share company** based in Chicago that launched a successful bike-sharing program in 2016. Throughout the years, the program has expanded significantly to a fleet of 5,824 bicycles and a network of 692 geotracked stations sprawled across the city. With the large number of bicycles across numerous stations, customers can rent bikes from one station and return them to any other station within the network at their convenience. This encourages people to opt for cycling as a mode of transportation, therefore contributing to the success of Cyclistic's bike-sharing program.

Cyclistic's marketing strategy has so far focused on building general awareness and appealing to broad consumer segments. The company offers flexibile pricing plans that cater to diverse needs of users including single-ride passes, full-day passes, and annual memberships. Besides, it provides reclining bikes, hand tricycles, and cargo bikes, effectively welcoming individuals with disabilities and those who can't ride on the standard two-wheeled bicycles. Based on the company database, Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day. While traditional bikes remain as the popular option, around 8% of users opt for the assistive alternatives.

The company's marketing director believes that the company’s future success depends on maximizing the number of annual memberships. Therefore, as a junior data analyst, my team and I have to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, we will design a new marketing strategy to convert casual riders into annual members.

## ⚙ Approach/Steps

### 1. Ask

**Business Task -** design marketing strategies to **convert casual riders to members** by understanding how annual and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.<br>

> Questions for guiding future marketing program:
>
> 1. How do annual members and casual riders use Cyclistic bikes differently?
> 2. Why would casual riders buy Cyclistic annual memberships?
> 3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Prepare

#### 🔗 Quick Links

**Data Source:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) <br>
[Note that the data has been made available by Motivate International Inc. under this [<ins>license</ins>](https://www.divvybikes.com/data-license-agreement).]

**Tools:** <br>

- Data cleaning & processing - MySQL
- Data visualization - Tableau

### 3. Process

The basis for this analysis is **2024** and **2025** data and the steps for processing the data are as follow:

1. Data Combining
2. Data Exploration
3. Data Cleaning
4. Data Analysis

#### Data Combining

The 12 tables from **June 2024 to May 2025** were stacked and combined into a single table. The table consists of 4,959,476 rows.

#### Data Exploration

I ran the queries for each column from left to right in order to determine the **data type** and to uncover any **missing values, outliers, inconsistencies, and errors** within the dataset.

The data set consists of **13 variables**, as shown in the following: <br>

| **No.** | **Variable**       | **Description**                                   |
| ------- | ------------------ | ------------------------------------------------- |
| 1       | ride_id            | ID                                                |
| 2       | rideable_type      | electric_bike, classic_bike, or electric_scooter  |
| 3       | started_at         | start of trip (Datetime)                          |
| 4       | ended_at           | end of trip (Datetime)                            |
| 5       | start_station_name | Name of the station started from                  |
| 6       | start_station_id   | ID of the station started from                    |
| 7       | end_station_name   | Name of the station ended at                      |
| 8       | end_station_id     | ID of the station ended at                        |
| 9       | start_lat          | Latitude of starting station                      |
| 10      | start_lng          | Longitude of starting station                     |
| 11      | end_lat            | Latitude of ending station                        |
| 12      | end_lng            | Longitude of ending station                       |
| 13      | member_casual      | Type of membership of each rider (casual, member) |

#### Data Cleaning

Before analyzing the data, the dataset was cleaned by:

- Removing the trips with **null values**.
- Adding 3 columns: '**ride_length_in_mins**', '**day_of_week**' and '**month**'.
- Exclusing the **rides with duration less than a minute** or **longer than a day**.

In total, 3,291,112 rows were returned, which means **1,668,364 rows were removed**.

### 4. Analyze

#### Data Analysis

The analysis question is:

> How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Tableau for analysis and the figures plotted are displayed in the following.

### - Total Rides in 2024 and 2025

The figure below shows the **total number of rides** carried out by Cyclistic members and casual riders in **2024** and **2025**.

![Membership Types](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/01_member_type.png)

- **Cyclistic members** recorded a **greater bicycle activity** than casual riders. The total rides for Cyclistic members are 2,105,232 while 1,185,880 trips for casual riders.
- **Cyclistic members** accounted for about **63.9%** of total rides whereas casual riders made up **36.03%** of total rides in 2022.

### - Types of Bikes

The types of bicycles used for the trips are displayed as follow:

![Types of Bikes](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/02_type_of_bikes.png)

- There are **three types of bicycles**: <ins>_classic bike, electric bike and docked scooter_</ins>.
- Cyclistic members and casual riders prefer show a higher preference for **classic bike over electric bike**.
- Casual riders have also used the docked scooter.

### - Average Ride Duration

![Avg Ride Length (Year)](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/03_avg_ride_length.png)

- **Cyclistic members** can ride on the bicycles for about **11.91 minutes** on average whereas **casual riders** have an average ride length of **23.12 minutes**. Hence, the ride duration of Cyclistic members are approximately two times smaller than casual riders.

### - Trips Taken in a Month

![Total Rides (Month)](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/04_monthly_total_rides.png)

- Both Cyclistic members and casual riders have the **lowest activity**, 81,132 rides and 16,678 rides in **January 2025**.
- Both **cyclistic members** and **Casual riders** have the **highest activity** (305,007 and 224,275 rides) in **August 2025**.

### - Average Ride Length in a Month

The mean trip duration is depicted in the line graph below.

![Avg Ride Length (Month)](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/05_monthly_average_rides_length.png)

- The monthly average ride duration for **Cyclistic members** and **casual riders** are the **highest** in **July** (13.74 and 27.73 minutes).

### - Trips Taken in a Week

![Total Rides (Week)](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/06_weekly_total_rides.png)

- **Cyclistic members** have the **highest activity** (333,982 rides) on **Wednesday** while the **lowest activity** (228,917 rides) on **Sunday**.
- **Casual riders** have the **highest activity** (248,759 rides) on **Saturday** while the **least activity** (126,697 rides) on **Tuesday**.
  <br>

### - Average Ride Length in a Week

![Avg Ride Length (Week)](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/07_weekly_average_rides_length.png)

- Both **casual riders** and **cyclistic members** cycled the **longest on Sunday** with an average ride length of 13.49 and 26.64 minutes.

### 5. Share

![dashboard_1](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/08_dashboard_1.png)

![dashboard_2](https://github.com/farhanmn/Google-Data-Analytics-Capstone-Project-Cyclistic/blob/master/assets/09_dashboard_2.png)

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

**Similarities:**

- Both Cyclistic members and casual riders **prefer riding bicycles in June, August and September**.
- Both Cyclistic members and casual riders **prefer classic bicycles over electric bicycles**.
- Both Cyclistic members and casual riders have **higher average ride duration on weekends as compared to on weekdays**.

**Differences:**

- **Cyclistic members** go on **more rides** than casual riders.
- **Cyclistic members** have **smaller average ride length** (11.91 minutes) than casual riders (23.12 minutes).

### 6. Act

#### <ins>Recommendations</ins>

From the analysis above, we can design marketing strategies to convert casual riders to Cyclistic members. Here are my suggested approach:

- **Leverage Peak Riding Months: June, August, and September** <br>
  Utilize the high usage in June, August, and September by launching membership promotions, free trials, and community events to encourage sign-ups during these peak periods.

- **Educate Casual Riders** <br>
  Highlight membership benefits such as lower costs and added convenience through personalized messages, cost comparisons, and in-app campaigns aimed at frequent casual riders.

- **Offer Weekend-Focused Options** <br>
  Introduce weekend passes or trial memberships to capture casual riders who typically ride longer on weekends, and reward consistent weekend use with special discounts.

- **Improve Access to Classic Bikes** <br>
  Ensure more classic bikes are available, especially in busy areas, and allow members to set bike preferences to enhance their overall experience.

- **Target High-Potential Casual Riders** <br>
  Analyze casual rider behavior to identify conversion opportunities and offer trial memberships at high-traffic locations to encourage membership.

- **Promote Member Value** <br>
  Communicate the advantages of being a member—more efficient and cost-effective rides—using clear visuals and data-driven comparisons between member and casual experiences.
