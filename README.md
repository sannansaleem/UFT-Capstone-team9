# capstone
## Stock Market FOrecast
## Project Overview 
### <ins>Background</ins> 

The following project aims to use stock market data previously collected that was available using microsoft excelt services and compiled togeter as a data frame over the past year from when the project was initially founded. Using facebooks' Prpphet alrorythm developped in python that utilizes an additive regression model, we aim to predict the movement of stocks of close price 182 days in to the future. 

The purpose of the project is to be able to provide traders with insightful information based on past seasonal trends so that data informed decisions can be made and carried out in an environment as unstable as the stock market.

## An overview of the process flow in regards to the data portion of our project is as follows:

### Data Collection

For this purpose, we are collectinng and normalizing stock data for the the database so it can be used in our machine learning mdodel. in order to do this, we are obtaining data microsoft excel's stock history function, cleaning the data in python using numpy and pandas and outputting it as csv files, and using postgresql to create tables for cleane CVSs for or AWS data base.  
Our data base cnfiguration has takes steps as subsequently;

#### <ins>Base Database Configuration</ins>
once our data was stored and accumulated over MS excel, we were able to trore within a pandas dataframe and use amazon webservices to create an AWS RDS instance along with S3 buckets to store our information over a cloud SAAS in the following manner:


- Created AWS Relational Database instance.
- Configured inbound rules for connection.
- Confirmed pgSQL (pgAdmin) connection to the server. 
- Created S3 buckets to hold data. 
- Configured buckets to be publicly accessible.
- Uploaded data to buckets.
- Created Tables within Database. 
- Attempted to classify Record/Variables for Stock Data.
- Installed Apache Spark & PySpark. 
- Extracted data from S3 buckets in Amazon
- Came across errors. 
- Attempted manual import of data into tables. Did not work as expected.
- Determined tables value types causing error for import.

<p align="center">

(Figure 1) 
:------------------------------------------:|	
![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/Tables%20within%20Database.png)
SQL Tables

</p>

<p align="center">

(Figure 2) | (Figure 3)
:------------------------------------------:| :-------------------------------------:	
![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/Active%20RDS%20Instance.png) | ![](https://github.com/sannansaleem/capstone/blob/main/Database%20Configuration/RDS%20Database%20Instance-TickerDB%20.png)
Active RDS Instace.  | RDS Database Instace-TickerDB..

</p>

<p align="center">

(Figure 4) 
:------------------------------------------:|	
![](https://github.com/sannansaleem/capstone/blob/main/Images/TwitterERD.png)
Database ERD

</p>

### <ins>Data Preprocessig</ins>

The stock market data is collected using yfinance API and tweets are fetched from twitter using GetOldTweets API. In this step the preprocessing of the tweets such as removing stop words, hyperlink and other steps are carried out.


Stock prices data collected  lacks weekends and public holidays when the market is closed. Stock data 
follows a concave function. Therefore, if the stock in a day is x and the next  is y with some missing. The first missing value is determined to be (y+x)/2 and the same metodology is used to determine the missing values.



<ins>import dependencies</ins>
import pandas as pd
import numpy as np
import pymysql
from sqlalchemy import create_engine	
	
	
	
## Creating the Prediction Model
	This stage is to model and predict using the logistic regression.
	We used following to create a model to predict the stcok prices;

For the modeling phase of the forecasting process, we found a limited number of tools available. A few forecasting packages in R were avaible for use to us specifically 
	-CausalImpact 
	-AnomalyDetection 

but facebook Prophet was used as a replacement for the forecast package because of two main advantages it offered us:

1) Prophet makes it much more straightforward to create a reasonable, accurate forecast. The forecast package includes many different forecasting techniques (ARIMA, exponential smoothing, etc), each with their own strengths, weaknesses, and tuning parameters. Gviing us the best model over hte first itteration allowing us to skip testing different models as it is unlikely that even experienced analysts can choose the correct model and parameters efficiently given this array of choices.

2) Prophet forecasts are customizable in ways that are intuitive to non-experts. There are smoothing parameters for seasonality that allow you to adjust how closely to fit historical cycles, as well as smoothing parameters for trends that allow you to adjust how aggressively to follow historical trend changes. For growth curves, you can manually specify “capacities” or the upper limit of the growth curve, allowing you to inject your own prior information about how your forecast will grow (or decline). Finally, you can specify irregular holidays to model like the dates of the Super Bowl, Thanksgiving and Black Friday.


NOTE:
~Added changes 10\06\22
- Difficulty with running ARIMA modeling to predict the outcomes.
- Added in Facebook Prophet Library to formulate a predictive algorithm.

PLEASE REFER to Machine_Learning-FBProphet.ipynb

(Figure y_Tables(df)-DataFrame)
:------------------------------------------:|	
![image](https://user-images.githubusercontent.com/104602949/194448156-f39ab25e-7c15-49fb-acda-0784d3d70534.png)

(Figure y_PredictionForecast(df1))
:------------------------------------------:|	
![image](https://user-images.githubusercontent.com/104602949/194448463-1b58b7e1-6196-4c09-a7ea-46aa627efc59.png)

(Figure y_ForecastPlot(df1))
:------------------------------------------:|	
![image](https://user-images.githubusercontent.com/104602949/194448552-60cedd73-db5b-4b58-9e33-951e91daa361.png)

(Figure y_ForecastTrend(df1) -Weekly)
:------------------------------------------:|	
![image](https://user-images.githubusercontent.com/104602949/194448691-99e67c35-93cc-460d-8191-e8c0cc4bb24b.png)


## Dashboard
https://public.tableau.com/app/profile/chris5384/viz/CapstoneDashboard_16650973748950/Dashboard1?publish=yes
