# Loads C50 package containg C5.0()
library(C50)
# Loads gmodels packge containing CrossTable()
library(gmodels)
# Read the csv file into a data frame
cricket <- read.csv("C:/Users/Admin/Downloads/cricket.csv")
# Training Data, 5th column Play Cricket is omitted
cricket_train <- cricket[1:9,-5 ]
# Test Data, 5th column Play Cricket is omitted
cricket_test <- cricket[10:14,-5 ]
# Training Labels, containing values of 5th column Play Cricket
cricket_train_labels = cricket[1:9, 5]
# Test Labels, containing values of 5th column Play Cricket
cricket_test_labels = cricket[10:14, 5]
# C5.0() returns a C5.0 model object and stores it in
# cricket_model
# cricket_train is a data frame containing training data
# cricket_train_labels is converted into a factor containing
# categorical values
cricket_model <- C5.0(cricket_train, as.factor(cricket_train_labels))
# Prints basic data about the decision tree
print(cricket_model)
# Shows the decision tree and some other information
print(summary(cricket_model))
# Predicting on test data
cricket_pred <- predict(cricket_model, cricket_test)
# Print prediction
print(cricket_pred)
# Analysis of Prediction
# prop.chisq=FALSE will remove unnecessary chi square values
CrossTable(cricket_test_labels, cricket_pred, prop.chisq=FALSE )