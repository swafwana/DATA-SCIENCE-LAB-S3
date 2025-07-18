#Defines 3d rotation matrix for rotating about x axis
import numpy
def rotationMatrixx(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[1,0,0,0],[0,c,-s,0],[0,s,c,0],[0,0,0,1]])
matrix1=rotationMatrixx(30)
print(matrix1)
