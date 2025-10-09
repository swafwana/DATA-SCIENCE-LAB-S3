# Read the csv file into a data frame
heart <- read.csv("C:/Users/Admin/Downloads/heart.csv")
# Training Data
heart_train <- heart[1:400,]
# Test Data
heart_test <- heart[401:498,]
# lm() returns a multiple linear regression model object
# the dependent variable heart.disease goes to the left of the tilde
# the independent variables go to the right, separated by + sign
# data specifies the data frame in which these variables can be found
# lm() is contained is stats package, which is loaded by default
heart_model <- lm(heart.disease ~ biking + smoking, data = heart_train)
# Prints estimated regression coefficients
print(heart_model)
# Evaluate Model Performance
print(summary(heart_model))
# Predicting on test data
heart_pred <- predict(heart_model, heart_test)
# Print prediction
print(heart_pred)