#Q1 
Create DATABASE credit_card_classification;
use credit_card_classification;

CREATE TABLE credit_card_data (
customer_number int);

#Q2 create table
DROP TABLE IF EXISTS credit_card_data;
CREATE TABLE credit_card_data (
customer_number int, 
offer_accepted varchar (20), 
reward varchar (20), 
mailer_type varchar (20), 
income_level varchar (20), 
bank_accounts_open varchar (20), 
overdraft_protection varchar (20), 
credit_rating varchar (20), 
credit_cards_held int, 
homes_owned int, 
household_size int, 
own_your_home varchar (20), 
average_balance decimal, 
q1_balance decimal, 
q2_balance decimal, 
q3_balance decimal, 
q4_balance decimal
);
   
#Q3 Import from csv
# solved with ace import funtion

#Q4 
select * from credit_card_data ccd;

#Q5 drop column date
ALTER TABLE credit_card_data DROP q4_balance;

#Q6 how many rows in dataset: 17976
select count(customer_number) from credit_card_data;

#Q7 find unique values in columns:

# no /yes
select distinct offer_accepted from credit_card_data;

# Air Miles / Cash Back / Points
select distinct reward from credit_card_data;

# Letter / Postcard
select distinct mailer_type from credit_card_data;

# 1 / 2 / 3 / 4
select distinct credit_cards_held from credit_card_data;

# 1 / 2 / 3 / 4 / 5 / 6 / 7 / 8 / 9 
select distinct household_size from credit_card_data;


# 8 Arrange the data in a decreasing order by average balance....
select customer_number, average_balance 
from credit_card_data
order by average_balance DESC
limit 10;

# 9 Average price of all the properties in the data? - 940,6
select avg(average_balance)
from credit_card_data;

# 10.1 Average balance of the customers grouped by Income Level.
select income_level, avg(average_balance) as average_balance
from credit_card_data
group by income_level;

# 10.2 average balance of the customers grouped by number_of_bank_accounts_open?
select bank_accounts_open, avg(average_balance) as average_balance
from credit_card_data
group by bank_accounts_open;

# 10.3 average number of credit cards held by customers for each of the credit card ratings
Select credit_rating, avg(credit_cards_held) as avg_credit_cards_held
from credit_card_data
group by credit_rating;

# 10.5 Correlation for two columns - correlaton likely but without calculation of coefficient not possible to assess by visual check. 
select credit_cards_held, bank_accounts_open
from credit_card_data
order by credit_cards_held asc; 

# Q 11 Query for customer
# Credit rating medium or high
# Credit cards held 2 or less
# Owns their own home
# Household size 3 or more
select customer_number, credit_rating, credit_cards_held, homes_owned, household_size
from credit_card_data
where credit_rating in ('Medium', 'High') and
	credit_cards_held <= 2 and
 	homes_owned > 0 and
 	household_size >= 3;

# Q12 average balance is less than the average balance of all the customers in the database
select customer_number, average_balance
from credit_card_data
where average_balance < (select avg(average_balance)
	from credit_card_data)
order by average_balance asc;

# Q13 create view
create view cust_balance_below_average as
select customer_number, average_balance
from credit_card_data
where average_balance < (select avg(average_balance)
	from credit_card_data)
order by average_balance asc;

# Q14 number of people who accepted the offer vs number of people who did not?
select offer_accepted, count(offer_accepted) as count
from credit_card_data
group by offer_accepted;

# Q15 Difference in average balances of the customers with high credit card rating and low credit card rating
select credit_rating, avg(average_balance) as avg_balance
from credit_card_data
group by credit_rating
having credit_rating in ('Low', 'High');

# Q16 Types of communication used and with how many customers?
select mailer_type, count(customer_number) as count
from credit_card_data
group by mailer_type;

# q17 Details of the customer that is the 11th least Q1_balance in your database.
with position_least_balance as (
	select customer_number, q1_balance, ROW_NUMBER() OVER (Order by q1_balance asc) as rn from credit_card_data)
select customer_number, q1_balance 
from position_least_balance
where rn = 1;

