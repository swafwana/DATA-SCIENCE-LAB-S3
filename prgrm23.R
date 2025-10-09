# Loads class packge containing knn()
library(class)
# Loads gmodels packge containing CrossTable()
library(gmodels)
# Read the csv file into a data frame
wbcd = read.csv("C:/Users/Admin/R Programs/wisc_bc_data.csv")
# Define normalize fn for performing min max normalisation
# This will transform the values of all features to a range between 0 and 1
normalize <- function(x)
{
return ((x - min(x)) / (max(x) - min(x)))
}
# Apply this function to our data frame
wbcd_n = as.data.frame(lapply(wbcd[3:31], normalize))
# Training Data
wbcd_train = wbcd_n[1:469, ]
# Test data
wbcd_test = wbcd_n[470:569, ]
# Training Labels
17
wbcd_train_labels = wbcd[1:469, 2]
# Test Labels
wbcd_test_labels = wbcd[470:569, 2]
# Prediction of Breast Cancer using knn()
wbcd_test_pred = knn(wbcd_train, wbcd_test, wbcd_train_labels,21)
# Print the prediction results
print(wbcd_test_pred)
# Analysis of Prediction
# prop.chisq=FALSE will remove unnecessary chi square values
CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq=FALSE)