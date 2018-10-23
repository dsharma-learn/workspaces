
library(stats)
library(tseries)
library(forecast)
library(TTR)
library(quantmod)
library(strucchange) 



library(help=datasets)
plot(AirPassengers) # Multiplicative

TS=as.ts(Nile)
plot(TS) # Is it stationary? 


## # Check for Stationarity 

## ACF --> Auto correlation Function 
pacf(TS)

acf(TS)


#Statisticl Tests: 
#adf.test(TS)
PP.test(TS)

d=ndiffs(TS,max.d=10, test="adf")
diff_TS=diff(TS,1)

Box.test()


# --------------------------------------------

INFY <- as.data.frame(getYahooData("INFY.NS","20150601", "20150701"))


