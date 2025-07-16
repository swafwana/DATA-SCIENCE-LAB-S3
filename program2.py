list1=[20,20,10,30,30]
print("Duplicated List:", list1)
list2=[]
for i in list1:
    if i not in list2:
            list2.append(i)
print("Deduplicated List:", list2)
