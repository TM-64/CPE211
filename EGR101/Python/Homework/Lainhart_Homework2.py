####################################################################
#Caleb Lainhart
#Python Homework 2
#11/12/23
####################################################################
#Predecleration
####################################################################
#Creates the lists of classes and other requirements and their time requirements
classes =["EGR101","FYE101","Calculus","Chemistry","History","Chemistry lab"]
classTime =[160,160,240,225,160,240]
other = ["Space Hardware Club","Eating","Talk with Girfriend"]
otherTime =[420,840,840]
#creates an empty time for the reccomended study time for each class
reccTime = []
#sets the time remaining to the the hours in a week minus time sleeping
timeLeft = 102
####################################################################
#Main
####################################################################
#creates the reccomended time to study for each class and adds it to the array
for i in classTime:
    reccTime.append((i/60)*3)
#Prints out the reccomended time for each class and subtracts that from the time
#left
for j in range(0,len(classes)):
    print("The reccomended study time for "+classes[j]+" is",reccTime[j],"hours\n")
    timeLeft = timeLeft-reccTime[j]-(classTime[j]/60)
#subtracts the time for the other requirements from the time left
for ii in otherTime:
    timeLeft = timeLeft-(ii/60)
####################################################################
#Output
####################################################################
#displays the time left after responsibilities
print("the amount of time left after all responsibilities:",timeLeft,"hours\n")
#checks if its practical
if(timeLeft>20):
    print("it is practical for me to spend 3 hours per hour of class studying\n")
else:
    print("it is not practical for me to spend 3 hours per hour of class studying\n")
#checks if its mathematically possible
if(timeLeft>=0):
    print("it is mathematically possible for me to spend 3 hours per hour of class studying\n")
else:
    print("it is not mathematically possible for me to spend 3 hours per hour of class studying\n")
#checks if its possible after removing all extra requirements
if((timeLeft+(otherTime[0]+otherTime[1]+otherTime[2])/60)>=0):
    print("it is theoretically possible for me to spend 3 hours per hour of class studying\n")
else:
    print("it is not theoretically possible for me to spend 3 hours per hour of class studying\n")
