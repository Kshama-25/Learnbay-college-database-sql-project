# Learnbay-University-Course-Enrollment-Analysis(sql & PowerBI) 

##  Project Overview

This project involves an end-to-end data analysis workflow, starting with **SQL** for data cleaning and querying, followed by **Power BI** for visualization and reporting. The goal is to analyze university enrollment, student, and instructor data to derive key metrics and insights about course performance, student grades, and instructor workload/salaries.

---

## Repository Contents

This repository contains the following key files:

| File Name | Description |
| `Learnbay Project SQL.sql` | The SQL script used to create the database, import data (assuming the tables `COURSES`, `ENROLLMENTS`, `INSTRUCTORS`, and `STUDENTS` are loaded), and execute all the analytical queries. |
| `power BI project 24-08-25.pbix` | The Power BI desktop file containing the data model, transformations, and the final analytical dashboard. |
| `README.md` | This document, providing an overview and instructions for the project. |

---

##  Tools and Technologies

* **Database:** SQL (Specific dialect like MySQL, SQL Server, or PostgreSQL is assumed for the queries)
* **Data Analysis & Querying:** SQL
* **Data Visualization & Reporting:** Microsoft Power BI

---

##  Analytical Questions (SQL Queries)

The primary analysis was performed using **SQL** to answer the following business and academic questions. The results of these queries serve as the foundation for the Power BI dashboard.

| Query ID | Analytical Question |
| :--- | :--- |
| **Query 1** | Get the **average grade for each student** (considering A=4, B=3, C=2, D=1, F=0). |
| **Query 2** | List all **instructors** who are teaching a course with **fewer than 3 students** enrolled. |
| **Query 3** | Find the **total number of credits** each student has earned, grouped by their major. |
| **Query 4** | Find the **average salary of instructors** in each department (grouped by Course Name in the provided query). |
| **Query 5** | List all courses that are taught by **more than one instructor**. |
| **Query 6** | List the **top 3 students** with the highest number of credits earned. |

*(All corresponding SQL code can be found in the `Learnbay Project SQL.sql` file.)*

---

## Data Visualization (Power BI)

The `power BI project 24-08-25.pbix` file contains a dashboard that visually represents the insights derived from the SQL analysis. The dashboard includes visualizations for:
* [Suggest adding details about the dashboard here, e.g., Key Performance Indicators (KPIs), charts, and filters.]
* Key metrics on student performance and course popularity.
* Distribution of grades and credits across different majors.
* Comparative analysis of instructor salaries and course load.

---

## Setup and Usage

To replicate this project locally, follow these steps:

### 1. Database Setup

1.  **Database Creation:** Ensure you have a database system (e.g., MySQL, SQL Server, etc.) running.
2.  **Table Creation & Data Import:** The `Learnbay Project SQL.sql` file starts with `CREATE DATABASE Learnbay_Project;` and `USE Learnbay_Project;`. You will need to execute the schema creation statements for the four tables (`COURSES`, `ENROLLMENTS`, `INSTRUCTORS`, `STUDENTS`) and import the corresponding raw data, which is assumed to be available but not included in this file.

### 2. SQL Analysis

1.  Execute the remaining queries in the `Learnbay Project SQL.sql` script within your database environment.
2.  Review the output to confirm the analytical results.

### 3. Power BI Report

1.  Ensure you have **Power BI Desktop** installed.
2.  Open the file `power BI project 24-08-25.pbix`.
3.  **Data Refresh:** The Power BI file will attempt to connect to the source data. You may need to update the data source settings to connect to your local database instance if the original connection details are not met.

---

##  Contact and Contribution

If you have any questions or suggestions, please feel free to open an issue in this repository.

* **Author:** [Kshama Katara/Kshama-25]
* **LinkedIn:** [https://www.linkedin.com/in/kshama-katara25011812/]
