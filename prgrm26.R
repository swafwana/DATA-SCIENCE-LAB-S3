# Loads e1071 package containing naiveBayes
library(e1071)
# Loads caTools package containing sample.split()
library(caTools)
# Loads gmodels packge containing CrossTable()
library(gmodels)
# Read the csv file into a data frame
iris = read.csv("iris.csv")
# Splitting data into train
# and test data
# set.seed() is used for generating the same sample in every execution
# We specify a seed number
set.seed(100)
split <- sample.split(iris$species, SplitRatio = 0.7)
iris1 <- subset(iris, split == "TRUE")
iris2 <- subset(iris, split == "FALSE")
iris_train = iris1[,1:4]
iris_test = iris2[,1:4]
iris_train_labels = iris1[,5]
iris_test_labels = iris2[,5]
classifier_cl <- naiveBayes(iris_train,iris_train_labels )
print(classifier_cl)
# Predicting on test data’
iris_test_pred <- predict(classifier_cl, iris_test)
print(iris_test_pred)
# Analysis of Prediction
# prop.chisq=FALSE will remove unnecessary chi square values
CrossTable(iris_test_labels, iris_test_pred, prop.chisq=FALSE)
