file=open("file1.txt","r")
contents=file.read()
new_contents=contents.replace("Python","C")
file.close()
file=open("file1.txt","w")
file.write(new_contents)
file.close()
