from keras.models import Sequential
from keras.layers import Dense
import numpy
# fix random seed for reproducibility
numpy.random.seed(7)

###############################################################################
# STEP 1: Load the data set:
###############################################################################
dataset = numpy.loadtxt ("data/pima-indians-diabetes.csv", delimiter="," )

# Now split the dataset into Input and Outputs. So first 7 columns will go 
# into input X while last column is output:     
X,Y = dataset[:,0:8],dataset[:,8]

###############################################################################
# STEP 2: Define Model: Models in Keras are defined as a sequence of layers.
###############################################################################
# create model
model = Sequential()
model.add(Dense(12, input_dim=8, activation='relu'))
model.add(Dense(8, activation='relu'))
model.add(Dense(1, activation='sigmoid'))

###############################################################################
# STEP 3: Compile Model
# This is where the backend (TensorFlow or Theano) is used for training the 
# model
# Training the model = finding best set of weights
###############################################################################
model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])

###############################################################################
# STEP 4: Fit the Model
###############################################################################
model.fit(X, Y, epochs=150, batch_size=10)

###############################################################################
# STEP 5: Evaluate Model
###############################################################################
scores = model.evaluate(X, Y)
print("\n%s: %.2f%%" % (model.metrics_names[1], scores[1]*100))

###############################################################################
# STEP 6: Predict: 
###############################################################################
predictions = model.predict(X)
# round predictions
rounded = [round(x[0]) for x in predictions]
print(rounded)

