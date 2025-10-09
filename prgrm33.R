# set.seed() is used for generating the same sample in every execution
# We specify a seed number
set.seed(100)
# Reads the iris data set into the iris data frame
iris <- read.csv("C:/Users/Admin/Downloads/iris.csv")
# Make a copy of iris data
iris2 <- iris
# Remove the species class label
iris2$species <- NULL
# Clustering with kmeans is performed by kmeans()
# kmeans() is contained within stats package which is loaded by default
# The kmeans() function requires a data frame containing only numeric data
# and a parameter specifying the desired number of clusters
# This function will return a cluster object that stores cluster
# information
# The cluster information includes cluster sizes, cluster means,
# vector of cluster assignments etc.
iris_clusters <- kmeans(iris2, 3)
print(iris_clusters)

# Check clustering result against species class label
# iris_clusters$cluster is a vector of cluster assignments from the
# kmeans()
# table() performs a tabulation of categorical variable and gives its
# frequency as output
print(table(iris$species, iris_clusters$cluster))