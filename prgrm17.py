# imports pyplot, a module used in the package matplotlib to plot various
# figures
from matplotlib import pyplot
# imports array() from numpy package
from numpy import array
# subplots() specify the number of plots in the figure
# first argument is number of rows
# second argument is number of columns
# This function returns a tuple containing figure and axes objects
# These objects are assigned to fig and ax
# They are needed for changing figure level and axes level attributes
fig,ax = pyplot.subplots(1,1)
a = array([22,87,5,43,56,73,55,54,11,20,51,5,79,31,27])
# Draws a histogram, first argument is the array of numbers,
# second argument bins are intervals of values
ax.hist(a, bins = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
ax.set_title("histogram of result")
ax.set_xticks([0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
ax.set_xlabel('marks')
ax.set_ylabel('no. of students')
# Shows the plot
pyplot.show()
