count = 0
file = open("file1.txt", "r")
for line in file:
    count = count + 1
print("Number of Lines:", count)
