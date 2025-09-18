# Loads class packge containing knn()
library(class)
# Read the csv file into a data frame
survey=read.csv("C:/sers/dmin/Downloads/survey.csv")
# Creates a data frame of a student, X(Academic Excellence),
# Y(Other Activities)
student=data.frame(X=5,Y=7)
# Create a data frame of first and second columns of survey
survey1=survey[,1:2]
pred=knn(survey1,student,survey$Z,k=3)
cat("Predicted Classification of Student:\n")
print(pred)