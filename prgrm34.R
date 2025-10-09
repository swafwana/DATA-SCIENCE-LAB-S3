# set.seed() is used for generating the same sample in every execution
# We specify a seed number
set.seed(100)
# Reads the data set into a data frame
wisc_bc_data <- read.csv("C:/Users/Admin/R Programs/wisc_bc_data.csv")
# Make a copy of data
wisc_bc_data2 <- wisc_bc_data
# Remove the id, diagnosis class labels
wisc_bc_data2$id <- NULL
wisc_bc_data2$diagnosis <- NULL
# Clustering with kmeans is performed by kmeans()
# kmeans() is contained within stats package which is loaded by default
# The kmeans() function requires a data frame containing only numeric data
# and a parameter specifying the desired number of clusters
# This function will return a cluster object that stores cluster
# information
# The cluster information includes cluster sizes, cluster means, vector of
# cluster assignments etc.
wisc_bc_data_clusters <- kmeans(wisc_bc_data2, 2)
print(wisc_bc_data_clusters)

# Check clustering result against diagnosis class label
# wisc_bc_data_clusters$cluster is a vector of cluster assignments from the
# kmeans()
# table() performs a tabulation of categorical variable and gives its
# frequency as output
print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))