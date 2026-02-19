# Digital-Prescription-Record-Analysis

Digital Prescription Record Analysis
A Python-based ETL (Extract, Transform, Load) and analytics project that cleans, processes, and analyzes digital medical records.

What it does:
Extracts raw healthcare data (patients, doctors, medicines, and prescriptions) from CSV files.

Cleans the data using Pandas (removes duplicates, fixes invalid ages/genders, handles missing dosages, and enforces valid database relationships).

Loads the cleaned and structured data into a local MySQL database for secure storage.

Analyzes & Visualizes the results using Matplotlib and Seaborn to generate insights, such as the Top 10 Most Frequently Prescribed Medicines and before-and-after data quality metrics.

Tech Stack:
Python: Pandas (Data manipulation)

Database: MySQL, pymysql (Storage and indexing)

Visualization: Matplotlib, Seaborn (Charts and graphs)
