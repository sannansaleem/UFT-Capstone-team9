# capstone
## Stock Market Analysis
## Project Overview 
### <ins>Background</ins> 
By utilizing twitter sentiment analysis and linear regression, we tend to able to analyze data provided on twitter to forecast stock market closing prices.

In this project, we have applied sentiment analysis and statistical machine learning models. These models are used to envision the correlation between the tweets which are extracted from twitter. We have performed sentiment analysis of the twitter data based on a whole day as well as based on an hourly basis to analyze the effect it has on stock market prediction. 

## An overview of the process flow of our project is as follows:

### Data Collection

For this purpose, we are collectinng and normalizing stock data for the the database so it can be used in our machine learning mdodel. in order to do this, we are obtaining data microdosft excel's stock history function, cleaning the data in python using numpy and pandas and outputting it as csv files, and using postgresql to create tables for cleane CVSs for or AWS data base.  
Our data base cnfiguration has takes steps as subsequently;

#### <ins>Base Database Configuration</ins>

- Created AWS Relational Database instance.
- Configured inbound rules for connection.
- Confirmed pgSQL (pgAdmin) connection to the server. 
- Created S3 buckets to hold data. 
- Configured buckets to be publicly accessible.
- Uploaded data to buckets.
- Created Tables within Database. 
- Attempted to classify Record/Variables for Stock Data.
- Installed Apache Spark & PySpark. 
- Attempted to extract data from S3 buckets in Amazon
- Came across errors. 
- Attempted manual import of data into tables. Did not work as expected.
	- Determined tables value types causing error for import.
	
(Figure 1) 
:------------------------------------------:|	
![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/Tables%20within%20Database.png)
3 Tables Created

(Figure 2) | (Figure 3)
:------------------------------------------:| :-------------------------------------:	
![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/Active%20RDS%20Instance.png) | ![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/Successful%20integration%20of%20PySpark%20with%20Database.png)
Active RDS Instace.  | Successful Integration of Pyspark With Database

(Figure 4) 
:------------------------------------------:|	
![](https://github.com/sannansaleem/capstone/blob/chris_anderson/Images/QuickDBD-export%20(4).png)
Database ERD

### <ins>Data Preprocessig</ins>

The stock market data is collected using yfinance API and tweets are fetched from twitter using GetOldTweets API. In this step the preprocessing of the tweets such as removing stop words, hyperlink and other steps are carried out.


Stock prices data collected  lacks weekends and public holidays when the market is closed. Stock data 
follows a concave function. Therefore, if the stock in a day is x and the next  is y with some missing. The first missing value is determined to be (y+x)/2 and the same metodology is used to determine the missing values.

Tweets contain acronyms, unnecessary data like pictures and URL’s. to do processing of preliminary tweets we utilized Tokenization.

Tokenization: Tweets are broken down into words based on the space and unrelated symbols. We form a list of individual words for each tweet.

Sentiment Analysis: Every tweet is given a sentiment score which shows if the tweet is positive, negative or neutral.

We used following for the sentiment analysis and data preprocssing;

#### <ins>import dependencies</ins>
import pandas as pd
import numpy as np
import tweepy
import nltk
from textblob import TextBlob
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import pymysql
from sqlalchemy import create_engine

#### <ins>Storing and cleaning tweet text/ins>

We have made 4 lists consisting tweetList, poslList, negList and neuList and apended the data accordingly and calculated the sentiment score of each of them. the lengths of each List was devided by its repective twetlist and the result was presented as following.
	
​positive sentiment: 32.93%
negative sentiment: 27.54%
neutral sentiment: 39.52%
Overall sentiment is neutral


	
	
	
	
## Creating the Prediction Model
	This stage is to model and predict using the logistic regression.
	We used following to create a model to predict the stcok prices;


	#Stock market anakysis using previous year data as well as twitter sentiment anlysis to predict htisyears stock market data

#### Data to be predicted using logistic reg

- open price

- close price

- volume traded

- High

- Low


#### systems and installs in use or planed fr production (add to list aswe move)


- Pthon

- pandas

- numpy

- tweepy

- ix_yahoo_finance

- scikit_learn

- maplotlib



#### Modelling behviour


##### We have pulled the values for variables:

- open price

- close price

- volume traded

- High



linear reg needs a forecast column to predict our close price - assume close   price is our forecasted output

if the basic formula of a linear reg. is as follows: y = B0 + B1*x1 + B2*x2 + B3*x3 + m

we plan to implement a ML algo that takes :

- open price

- close price

- volume traded

- High

- setiment analysis variable



to predict the close price such that x1, x2, x3, x4 are the pulled variables

y is the close price that is to be predicted (i.e. future close price)

B is the constant term

m is the error term


#### why did we choose linear reg?

linear reg was chosen as we have continuous tabulated data will be pulled, over the time frame for a year, a daily instance of every variable is expected to be present

we may possibly adjust to a non linear reg upon seeing plotted data points
this may optimize our model to increase accuracy of predictibility

ADDITIONAL OPTIMIZATION: the addition or removal of terms to increase the accuracy of predictability



#### How will results be interpreted?

results will be interpreted using r^2 and adj. r^2 values to determine accuracy of prediction



#### Why did we chose the associated variables?

the associated variables are the most commonly talked about and used metrics when dealing with stock market data and predicting stock market data

furhter investigation will be done into more relavent variables that can be used but this will be a good base to launch off of



#### Time window for prediction?

 as we are using data consolidated from previous year it makes sense to predict movents of stock price either over the next yer from the date of query or till the end of the current year



#### Feature engineering

as a sentiment analysis is to be performed, that will be an additional term used in the linear reg. to increase the robustness of our predictions

the plan is to use sentiment analysis to determine the polarity of of tweets pulled using twitterDEV API such that we can created a weighted variable that will influence the final outcome of the prediction


#### Data Preprocessing

will ned to perprocess data

split into X-train/test and Y-Train/Test where X-values will be OG close price?

cross valdiate sets



#### Apply linear reg algo to dataset and then plot using matpotlib to see results






#### Twitter senitment anlysis

use twitterDEV to retrieve the last 'x' amount o tweets containing the ticker index taken from uesr

are we able to recall var reated   initially to store the index

#### check config.py file

