# -*- coding: utf-8 -*-

import pandas as pd
import numpy as np
import matplotlib.pylab as plt
from datetime import datetime

#%matplotlib inline
# above doesnt work in pure python but does work in ipython. Hence getting 
# ipython and calling magic function with params as a workaround.
#from IPython import get_ipython
#get_ipython().magic('matplotlib inline') 

# Increases the plot size for better visualization.
from matplotlib.pylab import rcParams
rcParams['figure.figsize'] = 10, 4


#dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')
def dateparse (x):
	return pd.datetime.strptime(x, '%Y-%m')

# *****************************************************************************
# Load the data 
# *****************************************************************************
data = pd.read_csv('data/AirPassengers.csv', parse_dates=['Month'], index_col='Month',date_parser=dateparse)
print (data.head())
print ("\n Data Types:")
print (data.dtypes)
print (data.index)


#### Convert to timeseries. However can use as dataframe as well:
ts = data["#Passengers"]; 
ts.head(10)


# Examples of accessing the data: 
#1. Specific the index as a string constant:
print (ts['1949-01-01'])

#2. Import the datetime library and use 'datetime' function:
print (ts[datetime(1949,1,1)])


#1. Specify the entire range:
print (ts['1949-01-01':'1949-05-01'])

#2. Use ':' if one of the indices is at ends:
print (ts[:'1949-05-01'])


# *****************************************************************************
# 3. How to Check Stationarity of a Time Series?
# *****************************************************************************
#Visualize the data first:
plt.plot(ts)
plt.show()

from statsmodels.tsa.stattools import adfuller
def test_stationarity(timeseries):
    
    #Determing rolling statistics
    rolmean = pd.rolling_mean(timeseries, window=12)
    rolstd = pd.rolling_std(timeseries, window=12)

    #Plot rolling statistics:
    plt.plot(timeseries, color='blue',label='Original')
    plt.plot(rolmean, color='red', label='Rolling Mean')
    plt.plot(rolstd, color='black', label = 'Rolling Std')
    plt.legend(loc='best')
    plt.title('Rolling Mean & Standard Deviation')
    plt.show(block=False)
    
    #Perform Dickey-Fuller test:
    print ('Results of Dickey-Fuller Test:')
    dftest = adfuller(timeseries, autolag='AIC')
    dfoutput = pd.Series(dftest[0:4], index=['Test Statistic','p-value','#Lags Used','Number of Observations Used'])
    for key,value in dftest[4].items():
        dfoutput['Critical Value (%s)'%key] = value
    print (dfoutput)

test_stationarity(ts)

# *****************************************************************************
# 4. How to make a Time Series Stationary?
# *****************************************************************************

# *****************************************************************************
# 4a. Estimating & Eliminating Trend
# *****************************************************************************

# Start removing trend by taking logs and then taking rolling averages of log
ts_log = np.log(ts)
moving_avg = pd.rolling_mean(ts_log,12)
plt.plot(ts_log)
plt.plot(moving_avg, color='red')
plt.show()

#Now take a diff between log and moving average
ts_log_moving_avg_diff = ts_log - moving_avg
ts_log_moving_avg_diff.head(12)

# As initial few values will have NAN, hence remove them
ts_log_moving_avg_diff.dropna(inplace=True)

# Now Test for stationary: 
test_stationarity(ts_log_moving_avg_diff)

### in cases where recent valyes have to be given higher weightage, we can use 
# Exponentially Weighted Moving Average 
expwighted_avg = pd.ewma(ts_log, halflife=12)
plt.plot(ts_log)
plt.plot(expwighted_avg, color='red')
plt.show()

ts_log_ewma_diff = ts_log - expwighted_avg
test_stationarity(ts_log_ewma_diff)

# *****************************************************************************
# 4b. Eliminating Trend and Seasonality
# *****************************************************************************

# -----------------------------------------------------------------------------
# Taking difference with previous values (lags)
# -----------------------------------------------------------------------------
ts_log_diff = ts_log - ts_log.shift()
plt.plot(ts_log_diff)
plt.show()

ts_log_diff.dropna(inplace=True)
test_stationarity(ts_log_diff)

# -----------------------------------------------------------------------------
# Decomposing the series in trend and seasonality components
# -----------------------------------------------------------------------------
from statsmodels.tsa.seasonal import seasonal_decompose
decomposition = seasonal_decompose(ts_log)

trend = decomposition.trend
seasonal = decomposition.seasonal
residual = decomposition.resid

plt.subplot(411)
plt.plot(ts_log, label='Original')
plt.legend(loc='best')
plt.subplot(412)
plt.plot(trend, label='Trend')
plt.legend(loc='best')
plt.subplot(413)
plt.plot(seasonal,label='Seasonality')
plt.legend(loc='best')
plt.subplot(414)
plt.plot(residual, label='Residuals')
plt.legend(loc='best')
plt.tight_layout()
plt.show()


ts_log_decompose = residual
ts_log_decompose.dropna(inplace=True)
test_stationarity(ts_log_decompose)



# *****************************************************************************
# 5. Forecasting the Time Series
# *****************************************************************************
#ACF and PACF plots and predict values of p and q:
from statsmodels.tsa.stattools import acf, pacf
lag_acf = acf(ts_log_diff, nlags=20)
lag_pacf = pacf(ts_log_diff, nlags=20, method='ols')

#Plot ACF: 
plt.subplot(121) 
plt.plot(lag_acf)
plt.axhline(y=0,linestyle='--',color='gray')
plt.axhline(y=-1.96/np.sqrt(len(ts_log_diff)),linestyle='--',color='gray')
plt.axhline(y=1.96/np.sqrt(len(ts_log_diff)),linestyle='--',color='gray')
plt.title('Autocorrelation Function')

#Plot PACF:
plt.subplot(122)
plt.plot(lag_pacf)
plt.axhline(y=0,linestyle='--',color='gray')
plt.axhline(y=-1.96/np.sqrt(len(ts_log_diff)),linestyle='--',color='gray')
plt.axhline(y=1.96/np.sqrt(len(ts_log_diff)),linestyle='--',color='gray')
plt.title('Partial Autocorrelation Function')
plt.tight_layout()
plt.show()

# Now build ARIMA model:
from statsmodels.tsa.arima_model import ARIMA

# Case 1:
# AR Model
model = ARIMA(ts_log, order=(2, 1, 0))  
results_AR = model.fit(disp=-1)  
plt.plot(ts_log_diff)
plt.plot(results_AR.fittedvalues, color='red')
plt.title('RSS: %.4f'% sum((results_AR.fittedvalues-ts_log_diff)**2))
plt.show()

# MA Model
model = ARIMA(ts_log, order=(0, 1, 2))  
results_MA = model.fit(disp=-1)  
plt.plot(ts_log_diff)
plt.plot(results_MA.fittedvalues, color='red')
plt.title('RSS: %.4f'% sum((results_MA.fittedvalues-ts_log_diff)**2))    
plt.show()


# Combined Model:
model = ARIMA(ts_log, order=(2, 1, 2))  
results_ARIMA = model.fit(disp=-1)  
plt.plot(ts_log_diff)
plt.plot(results_ARIMA.fittedvalues, color='red')
plt.title('RSS: %.4f'% sum((results_ARIMA.fittedvalues-ts_log_diff)**2))
plt.show()


# Now these have to be scaled back:
predictions_ARIMA_diff = pd.Series(results_ARIMA.fittedvalues, copy=True)
print (predictions_ARIMA_diff.head())    
    
predictions_ARIMA_diff_cumsum = predictions_ARIMA_diff.cumsum()
print (predictions_ARIMA_diff_cumsum.head())

#Next we’ve to add them to base number. For this lets create a series with all 
# values as base number and add the differences to it. This can be done as:
predictions_ARIMA_log = pd.Series(ts_log.ix[0], index=ts_log.index)
predictions_ARIMA_log = predictions_ARIMA_log.add(predictions_ARIMA_diff_cumsum,fill_value=0)
predictions_ARIMA_log.head()

#Last step is to take the exponent and compare with the original series.
predictions_ARIMA = np.exp(predictions_ARIMA_log)
plt.plot(ts)
plt.plot(predictions_ARIMA)
plt.title('RMSE: %.4f'% np.sqrt(sum((predictions_ARIMA-ts)**2)/len(ts)))



    