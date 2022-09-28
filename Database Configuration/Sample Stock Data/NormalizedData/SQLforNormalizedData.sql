--creating tables
--table to hold StockSymbols.csv
CREATE TABLE Stock_Symbols (
    Symbol varchar   NOT NULL,
    CONSTRAINT pk_Stock_Symbols PRIMARY KEY (
        Symbol
     )
);
--table to hold StockPricesUSD.csv
CREATE TABLE Stock_Prices_USD (
	indexkey integer Not NULL,
    Symbol varchar   NOT NULL,
    Date date   NOT NULL,
    Opening_Price_USD decimal   NOT NULL,
    Closing_Price_USD decimal   NOT NULL,
    High_USD decimal   NOT NULL,
    Low_USD decimal   NOT NULL,
	CONSTRAINT pk_Stock_Prices_USD PRIMARY KEY(
	indexkey)
);
--table to hold Stock_Volumes.csv
CREATE TABLE Stock_Volumes (
	indexkey integer NOT NULL,
    Symbol varchar   NOT NULL,
    Date date   NOT NULL,
    Volume_Traded decimal   NOT NULL,
	CONSTRAINT pk_Stock_Volumes PRIMARY KEY(
	indexkey)
);
--adding key constraints
ALTER TABLE Stock_Prices_USD ADD CONSTRAINT fk_Stock_Prices_USD_Symbol FOREIGN KEY(Symbol)
REFERENCES Stock_Symbols (Symbol);

ALTER TABLE Stock_Volumes ADD CONSTRAINT fk_Stock_Volumes_Symbol FOREIGN KEY(Symbol)
REFERENCES Stock_Symbols (Symbol);

--import data to tables at this point

--creating new table, stock_data, for machine learning
Create table stock_data as
SELECT 	Stock_Volumes.symbol, 
	Stock_Prices_USD.Opening_Price_USD,
	Stock_Prices_USD.Closing_Price_USD,
	Stock_Prices_USD.High_usd,
	Stock_Prices_USD.Low_usd,
	Stock_Volumes.volume_traded
	FROM 
		Stock_Prices_USD
left Join Stock_Volumes
ON Stock_Prices_USD.indexkey = Stock_Volumes.indexkey;