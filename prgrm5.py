l1=list(map(int,input("Enter first list of integers separated by space: ").split()))
l2=list(map(int,input("Enter second list of integers separated by space: ").split()))
s1=set(l1)
s2=set(l2)
result=s1&s2
if(result==set()):
    print("false")
else:
    print("True")
