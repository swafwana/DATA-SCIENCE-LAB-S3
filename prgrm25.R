# Loads e1071 package containing naiveBayes
library(e1071)
# Read the csv file into a data frame
cars = read.csv("C:/Users/Admin/Downloads/cars.csv")
#Training Data
cars_train = cars[,2:4]
cars_train_labels = cars[,5]
#Test Data
cars_test = data.frame(Colour="red",Type="SUV",Origin="domestic")
#Naive Bayes Classification
classifier_cl <- naiveBayes(cars_train,cars_train_labels)
# This will print classical and conditional probabilities
print(classifier_cl)
# Predicting on test data
cars_test_pred <- predict(classifier_cl, cars_test)
cat("Prediction of Stolen Status:\n")
print(cars_test_pred)
