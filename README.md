# capstone
## Presentation
### Selected Topic
We have decided to do an analysis on stocks combining stock data including open price, close price, high, and volume traded and twitter sentiment analysis to aid in smart stock purchasing.  
### Reason we selected the topic
The two components of this project, the stock market and twitter sentiment analysis, are relevant topics today.  
### Description of the source of data
We plan to use the tweepy library to pull tweets based on keywords to be analyzed, and stock market data from the past year from excel's builtin stock history function as well as utilizing fix-yahoo-finance to acquire the information pythonically.  
### Questions we hope to answer with the data
We hope to be able to answer the question, "is it good to invest in this stock, based on the information we pass into our model?"  

## Description of the communication protocols
We use a postgresql database hosted with AWS to connect with two models, one for sentiment analysis of tweets which uploads to a table in the database, and one for a regression model of stocks and twitter sentiment associated with the stock which pulls from the database.  
  
If this means communication between team members, we've used our time in class and some time outside of class to divide up the workload, and scheduled zoom meetings through the slack channel to meet and collaborate on parts of the project.  

## technologies used
python libraries:  
    numpy  
    pandas  
    tweepy  
    nltk 
    textblob  
AWS Relational Database
S3 Buckets for Data Storage
Apache Spark
PySpark ETL
pgSQL/pgAdmin
Google CoLab 
microsoft excel  

