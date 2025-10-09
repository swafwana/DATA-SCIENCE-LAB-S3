# Loads C50 package containg C5.0()
library(C50)
# Loads gmodels packge containing CrossTable()
library(gmodels)
# Read the csv file into a data frame
credit <- read.csv("C:/Users/Admin/Downloads/credit.csv")
# Training Data, 17th column default is omitted
credit_train <- credit[1:900,-17 ]
#Test Data, 17th column default is omitted
credit_test <- credit[901:1000,-17 ]
# Training Labels, containing values of 17th column default
credit_train_labels = credit[1:900, 17]
# Test Labels, containing values of 17th column default
credit_test_labels = credit[901:1000, 17]
# C5.0() returns a C5.0 model object and stores it in credit_model
# credit_train is a data frame containing training data
# credit_train_labels is converted into a factor containing
# categorical values
credit_model <- C5.0(credit_train, as.factor(credit_train_labels))
# Prints basic data about the decision tree
print(credit_model)
# Shows the decision tree and some other information
print(summary(credit_model))
# Predicting on test data
credit_pred <- predict(credit_model, credit_test)
# Print prediction
print(credit_pred)
# Analysis of Prediction
# prop.chisq=FALSE will remove unnecessary chi square values
CrossTable(credit_test_labels, credit_pred, prop.chisq=FALSE )