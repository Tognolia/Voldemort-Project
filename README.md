# Voldemort-Project
## Team : Tony - Jerrit - Andrea
### *April 2021*

Project exploring data cleaning, vizualisation and analysis of credit card data for mid-term planning of marketing activities.

## Content

- [Project Outline](#project-outline)
- [The Data](#the-data)
- [The Database](#the-database)
- [Visualisation](#visualisation)
- [Statistical Analysis](#statistical-analysis)
- [Delivering Insight](#delivering-insight)
- [Next Steps](#next-steps)

## Project Outline

This repository contains data and additional information by the Lily Potter team for the Ironhack Mid-Bootcamp project. Our objective was to understand the features and characteristics of the bank's customers and make predictions of those who accept a credit card offer.

## The Data 

The dataset was checked for duplicates. The identifier field (Customer Number) was dropped.
The data columns were checked for null values. Null values were present in the numerical features were dropped since they represent less than one percent of the total. 
The data type of each column was checked. The unique values and distribution of each categorical feature were checked. 
The distributions of each numerical variable were checked. The data fields credit cards held, homes owned, household size, bank accounts open were of numeric data type but are in fact categoricals. 
They will be treated as categories in our analysis. Numericals variables were checked for correlation using heatmap and some were dropped due to high redundancies. Data columns were renamed and stylized as snake_case. Checking the target variable unique values we have seen that the data is strongly unbalanced. We will deal with this during the several preprocessing iterations.



## The Database

The marketingcreditcard.csv file has been imported in to SQL workebench in order to answer to some questions related to the groupwork.

[SQL](https://github.com/Tognolia/Voldemort-Project/tree/main/sql) -
In this folder you can find the .sql query file with annotations. Every query is marked with question number and query results for better orientation in the file. 

## Visualisation

Using Tableau we were able to easily visualise different aspects of the data and to perform some basic distribution techniques as well as more complex ones. The imbalancement of the data represent an obstacle to the visualisation and to overcome the problem we used avg value more often than the count one. Later, through the Heatmap we have seen high correlation among the variables Q1, 2, 3, 4 balances.

[Tableau](https://github.com/Tognolia/Voldemort-Project/tree/main/Tableau) - In this folder you can find the workbook with vizualisations we did in Tableau. 


## Statistical Analysis

We decided to use a logistic regression model to solve our classification problem. The target variable y, represented by "offer accepted", has been isolated and later predicted with the model. we transformed the data and split the data into train and test sets with a test size of 30%. In total 5 rounds of iteration have been run with with an accuracy span which ranges bwtween 0.69 to 0.94, and the application of different over-, under-, hybrid sampling has been applied.

In details:

### Linear Regression Model
- Original Sampling: accuracy of 0.94, but no ability to recognise the offer accepted equal to yes results.
- SMOTE: accuray of 0.73, yes recognesed but less accurate
- Tomek: accuray of 0.69, yes recognesed but less accurate
- SMOTTomek (HYBRID): accuray of 0.73, yes recognesed but less accurate

### Random Forest
- SMOTTomek (HYBRID): accuray of 0.86 --> SELECTED ONE


## Delivering Insight

## Next Steps

### [Notebook](https://github.com/Tognolia/Voldemort-Project/tree/main/Notebook)
Jupyter notebook results and backups.

### [Slides](https://github.com/Tognolia/Voldemort-Project/tree/main/Slides)
Presentation slides containing: problem description, machine learning process, results, next steps. 


