from numpy import matrix
from numpy import matmul
from numpy import diag
from scipy.linalg import svd
A = matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(A)
U, S, V = svd(A)
print(U)
print(S)
print(V)
Sigma = diag(S)
print(Sigma)
B = matmul(U,matmul(Sigma,V))
print(B)
