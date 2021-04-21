# Voldemort-Project
## Team : Tony - Jerrit - Andrea
### *April 2021*

Project exploring data cleaning, Visualisation and Analysis of Credit Card for marketing strategy planning.

## Content

- [Project Outline](#project-outline)
- [The Data](#the-data)
- [The Database](#the-database)
- [Visualisation](#visualisation)
- [Statistical Analysis](#statistical-analysis)
- [Delivering Insight](#delivering-insight)
- [Next Steps](#next-steps)

## Project Outline

This repository contains the group project by the Lily Potter team for the Ironhack Mid-Bootcamp Project. Our objective was to understand the features and other characteristics of the bank's customers comparing those who accept a credit card offer and those who do not.

## The Data 

The dataset was checked for duplicates.
The identifier field (Customer Number) was dropped.
The data columns were checked for null values. Null values were present in the numerical features were dropped since represent less than one percent of the total.
The data type of each column was checked. 
The unique values and distribution of each categorical feature were checked.
The distributions of each numerical variable were checked. The data fields Credit Cards Held, Homes Owned, Household Size, Bank Accounts Open were of numeric data type but are in fact categoricals so they will be treated as categories in our analysis.
Numericals variables were checked for correlation un´sing heatmap and some were dropped due to high redundancies.
Data columns were renamed and stylized as snake_case.
Checking the target variable unique values we have seen that the data were strongly unbalanced. We will deal with this during the several iterations later.



## The Database

The marketingcreditcard.csv file has been imported in to SQL workebench in order to answer to some questions related to the groupwork.

### [SQL](https://github.com/Tognolia/Voldemort-Project/tree/main/sql)
.sql query file with query results in file annotations. 

## Visualisation

Using Tableau we were able to easily visualise different aspects of the data and to perform some basic distribution techniques as well as more complex ones. The imbalancement of the data represent an obstacle to the visualisation and to overcome the problem we used avg value more often than the count one. 

### [Tableau](https://github.com/Tognolia/Voldemort-Project/tree/main/Tableau)
Workbook with visualization in Tableau.


## Statistical Analysis

## Delivering Insight

## Next Steps

### [Tableau](https://github.com/Tognolia/Voldemort-Project/tree/main/Tableau)
Workbook with visualization in Tableau.

### [SQL](https://github.com/Tognolia/Voldemort-Project/tree/main/sql)
.sql query file with query results in file annotations. 

### [Notebook](https://github.com/Tognolia/Voldemort-Project/tree/main/Notebook)
Jupyter notebook results and backups.

### [Slides](https://github.com/Tognolia/Voldemort-Project/tree/main/Slides)
Presentation slides containing: problem description, machine learning process, results, next steps. 

## Tony - Jerrit - Andrea
### *April 2021*

Project exploring data cleaning, Visualisation and Analysis of Credit Card for marketing strategy planning.



