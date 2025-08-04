import numpy
def translationMatrix(tx=0, ty=0, tz=0):
return numpy.matrix([[1,0,0,tx],
[0,1,0,ty],
[0,0,1,tz],
[0,0,0,1 ]])
matrix=translationMatrix(1,1,1)
print(matrix)

#Defines 3d rotation matrix for rotating about x axis

def rotationMatrixx(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[1,0,0,0],[0,c,-s,0],[0,s,c,0],[0,0,0,1]])
matrix1=rotationMatrixx(30)
print("Rotation about x axis")
print(matrix1)
# Defines 3d rotation matrix for rotating about y axis

def rotationMatrixy(degree):
    theta = numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[c,0,s,0],[0,1,0,0],[-s,0,c,0],[0,0,0,1]])
matrix2=rotationMatrixy(30)
print("Rotation about y axis")
print(matrix2)

# Defines 3d rotation matrix for rotating about z axis
def rotationMatrixz(degree):
    theta=numpy.radians(degree)
    c,s=numpy.cos(theta),numpy.sin(theta)
    return numpy.matrix([[c,-s,0,0],[s,c,0,0],[0,0,1,0],[0,0,0,1]])
matrix3=rotationMatrixz(30)
print("Rotation about z axis")
print(matrix3)

