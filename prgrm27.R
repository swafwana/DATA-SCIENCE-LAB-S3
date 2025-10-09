# Loads C50 package containg C5.0()
library(C50)
# Loads gmodels packge containing CrossTable()
library(gmodels)
# Read the csv file into a data frame
person <- read.csv("C:/Users/Admin/Downloads/person.csv")
# Training Data, 5th column Cheats? is omitted
person_train <- person[1:8,-5 ]
# Test Data, 5th column Cheats? is omitted
person_test <- person[9:10,-5 ]
# Training Labels, containing values of 5th column Cheats?
person_train_labels = person[1:8, 5]
# Test Labels, containing values of 5th column Cheats?
person_test_labels = person[9:10, 5]
# C5.0() returns a C5.0 model object and stores it in
# person_model
# person_train is a data frame containing training data
# person_train_labels is converted into a factor containing
# categorical values
person_model<-C5.0(person_train,as.factor(person_train_labels))
# Prints basic data about the decision tree
print(person_model)
# Shows the decision tree and some other information
print(summary(person_model))
# Predicting on test data
person_pred <- predict(person_model, person_test)
# Prints predicted values
print(person_pred)
# Analysis of Prediction
# prop.chisq=FALSE will remove unnecessary chi square values
CrossTable(person_test_labels, person_pred, prop.chisq=FALSE )