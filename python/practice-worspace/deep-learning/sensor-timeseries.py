# -*- coding: utf-8 -*-
# load and plot dataset
from pandas import read_csv
from pandas import datetime
from sklearn.metrics import mean_squared_error
from math import sqrt
from matplotlib import pyplot

# load dataset
def parser(x):
	return datetime.strptime(x, '%m/%d/%Y %H:%M')

fields = ['SG','SGdt']

series = read_csv('data/sensor-timeseries.csv', header=0, parse_dates=[1], index_col=1, squeeze=True, date_parser=parser,usecols=fields)
# summarize first few rows
print(series.head())
# line plot
series.plot()
pyplot.show()



# -----------------------------------------------------------------------------
# split data into train and test
# -----------------------------------------------------------------------------
X = series.values
train, test = X[0:-48], X[-48:]


# walk-forward validation
history = [x for x in train]
predictions = list()
for i in range(len(test)):
	# make prediction
	predictions.append(history[-1])
	# observation
	history.append(test[i])
# report performance
rmse = sqrt(mean_squared_error(test, predictions))
print('RMSE: %.3f' % rmse)
# line plot of observed vs predicted
pyplot.plot(test)
pyplot.plot(predictions)
pyplot.show()