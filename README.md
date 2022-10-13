# Capstone
## Stock Market Forecast
## Project Overview 
### <ins>Background</ins> 

The following project aims to use previously collected stock market data in Microsoft Excel. It was compiled as a data frame using data spanning the past year. Using Facebook Prophet's algorithm developed in python that utilizes an additive regression model, we predicted the movement of stocks of close price 182 days in to the future.

The purpose of the project is to provide traders with insightful information based on past seasonal trends so that data informed decisions can be made and carried out in the unstable stock market environment.

## An overview of the process flow in regards to the data portion of our project is as follows:

### Data Collection

For this purpose, we collected and normalized stock data for the database to use in our machine learning model. In order to do accomplish this, we obtained data through Microsoft Excel's stock history function, cleaned it with Python using Numpy and Pandas and output it as csv files, and used postgreSQL to create cleaned dataframes for our AWS database.

The steps taken towards this database configuration are as follows:

#### <ins>Base Database Configuration</ins>
Once our data was stored and accumulated over MS Excel, we were able to store it within a pandas dataframe and use amazon webservices to create an AWS RDS instance along with S3 buckets to store our information over a cloud SAAS in the following manner:

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

### <ins>Data Preprocessing</ins>

Stock market data was collected from Microsoft Excel's stockhistory function, saved as a csv, and read into a notebook as a pandas dataframe to be formatted for importing as sql tables. The stock market data did not have any missing/null values to drop, but some columns required that their type be altered to be uploaded to the sql database. The stock market data was normalized into two tables, splitting dollar values like open, close, high, and low, from the volume traded. Normalized data was imported into sql tables and into aws.

Since, Facebook Prophet automatically selects changepoints to perform its analysis, and additive regression models like Facebook Prophet use a one-dimensional smoother and backfitting, there was no need to split data into training and testing sets. One stock was chosen for analysis, in this case AAPL, and additional preprocessing was conducted to format the data for the model by creating a new dataframe that specifically and exclusively included the dates and close prices for the past 1 year.	
	
	
## Creating the Prediction Model
	This stage is to model and predict using the logistic regression.
	We used following to create a model to predict the stcok prices;

For the modeling phase of the forecasting process, we found there to be a limited number of tools available. Certain forecasting packages in R were available for us to use, namely 
	- CausalImpact 
	- AnomalyDetection.

However, Facebook Prophet was used as a replacement for the forecast package owing to the two main advantages it offered:

1) Facebook Prophet makes it far more straightforward to create a reasonable, accurate forecast. The forecast package includes many different forecasting techniques (ARIMA, exponential smoothing, etc), each with their own strengths, weaknesses, and tuning parameters. Giving us the best model over the first iteration, allowing us to skip testing different models as it is unlikely that even experienced analysts can choose the correct model and parameters efficiently given this array of choices.

2) Prophet forecasts are customizable in ways that are intuitive to non-experts. There are smoothing parameters for seasonality that allow you to adjust how closely to fit historical cycles, as well as smoothing parameters for trends that allow you to adjust how aggressively to follow historical trend changes. For growth curves, you can manually specify “capacities” or the upper limit of the growth curve, allowing you to inject your own prior information about how your forecast will grow (or decline). Finally, you can specify irregular holidays to model for instance for the Super Bowl, Thanksgiving and Black Friday.


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
## Presentation Rehearsal
https://drive.google.com/file/d/16yV1xF0P6DFMSTc-vQ-j6_R6OWiwow-9/view?usp=sharing
