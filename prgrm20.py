# imports pyplot, a module used in the package matplotlib to plot various
# figures
from matplotlib import pyplot
# pandas is used for data analysis
import pandas
# reads the csv file into a data frame
df = pandas.read_csv('iris1.csv')
# subplots() specify the number of plots in the figure
# first argument is number of rows
# second argument is number of columns
# This function returns a tuple containing figure and axes objects
# These objects are assigned to fig and ax
# They are needed for changing figure level and axes level attributes
fig, ax = pyplot.subplots(1,1)
# Creates a dictionary of colour values of each species
colors = {'Setosa':'red', 'Versicolor':'green', 'Virginica':'blue'}
# Groups the data based on species values
grouped = df.groupby('species')
# group represents the grouped data frame
# draws the scatter plot for each group
for key, group in grouped:
    group.plot(ax=ax, kind='scatter', x='petal.length', y='petal.width',label=key, color=colors[key])
ax.set_title("Scatter Plot")    
ax.set_xlabel('Petal Length')
ax.set_ylabel('Petal Width')
pyplot.show()
