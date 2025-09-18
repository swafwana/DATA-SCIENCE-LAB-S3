# Read the csv file into a data frame
food=read.csv("C:/Users/Admin/Downloads/food.csv")
# Creates a data frame of food item tomato
tomato=data.frame(Ingredient="tomato",Sweetness=6,Crunchiness=4)
# Create a data frame of second and third columns of food
food1=food[,2:3]
# Create a data frame of second and third columns of tomato
tomato1=tomato[,2:3]
# Inputs the value of k from user while using RGui
k <- as.numeric(readline(prompt = "Enter the value of k:"))
# Inputs the value of k from user while using Rscript
cat("Enter the value of k:")
k=scan("stdin", integer(), n=1)
library(class)
pred=knn(food1,tomato1,food$FoodType,k)
cat("Predicted Food Type of Tomato:\n")
print(pred)
