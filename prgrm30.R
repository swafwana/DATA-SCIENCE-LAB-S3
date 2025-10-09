# Read the csv file into a data frame
economy <- read.csv("C:/Users/Admin/Downloads/economy.csv")
# Training Data
economy_train <- economy[1:18,]
# Test Data
economy_test <- economy[19:24,]
# lm() returns a multiple linear regression model object
# the dependent variable stock_index_price goes to the left of the tilde
# the independent variables go to the right, separated by + sign
# data specifies the data frame in which these variables can be found
# lm() is contained is stats package, which is loaded by default
economy_model <- lm(Stock_Index_Price ~ Interest_Rate + Unemployment_Rate,
data = economy_train)
# Prints estimated regression coefficients
print(economy_model)
# Evaluate Model Performance
print(summary(economy_model))
# Predicting on test data
economy_pred <- predict(economy_model, economy_test)
# Print prediction
print(economy_pred)