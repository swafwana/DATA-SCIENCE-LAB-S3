# Loads e1071 package containing naiveBayes
library(e1071)
# Read the csv file into a data frame
symptoms = read.csv("C:/Users/Admin/R Programs/symptoms.csv")
#Training Data
symptoms_train = symptoms[,1:4]
#Test Data
symptoms_test = data.frame(Chills="Y",RunningNose="N",Headache="mild",
Fever="Y")
#Naive Bayes Classification
classifier_cl <- naiveBayes(symptoms_train,symptoms$HasFlu)
# This will print classical and conditional probabilities
print(classifier_cl)
# Predicting on test data
symptoms_test_pred <- predict(classifier_cl, symptoms_test)
cat("Prediction of Flu:\n")
print(symptoms_test_pred)