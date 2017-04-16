setwd("D:/INFY_BACKUP/Workspaces/r-lab/scripts")


# 1.0 Download file from KAGGLE 
# TODO: Login to Kaggle and download file directly
# download.file(url='https://www.kaggle.com/c/sf-crime/download/test.csv.zip', destfile = 'test.zip',method = 'curl')


# 2.0 Load the titanic data set: 
training.data.raw <- read.csv('..\\data\\titanic\\train.csv',header=T,na.strings=c(""))

# 2.1 Check for missing values as well as unique values:
check.data.missing <- sapply(training.data.raw,function(x) sum(is.na(x)))
check.data.uniue <- sapply(training.data.raw, function(x) length(unique(x)))

# 2.2 Visually see the missing values. If too many missing, then these variables can be ignored
# First install and then load

#install.packages("Amelia")
library(Amelia)
missmap(training.data.raw, main = "Missing values vs observed")

# 2.3 Now remove the non relevant attributes (Cabin - too many missing, name and ticket as they are statistically non-relevant) 
data <- subset(training.data.raw,select=c(2,3,5,6,7,8,10,12))

# 2.4 put default values for missing values. Though R can do it. But here, we are using mean.

data$Age[is.na(data$Age)] <- mean(data$Age,na.rm=T)

# 2.5 check if variables are factors. Factors is how R handles categorical variables
is.factor(data$Sex)

# 2.6 For a better understanding of how R is going to deal with the categorical variables, we can use the contrasts() function. This function will show us how the variables have been dummyfied by R and how to interpret them in a model.
contrasts(data$Sex)
contrasts(data$Embarked)

# 2.6 There are two entries where there are no class (its blank). We can either use mod or remove. here we are removing it.
data <- data[!is.na(data$Embarked),]
rownames(data) <- NULL



# 3.0 Model fitting

# 3.1 Split data into training and test before training the model:
train <- data[1:800,]
test <- data[801:889,]

# 3.2. Now fit the model
model <- glm(Survived ~.,family=binomial(link='logit'),data=train)


# 4.0 Interpret

anova(model, test="Chisq")
