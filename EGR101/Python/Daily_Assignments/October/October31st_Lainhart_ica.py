####################################################################
#Caleb Lainhart
#October 31st ICA
#11/02/23
####################################################################
#Library Calls
####################################################################
#imports read_csv function
from pandas import read_csv
####################################################################
#Setup
####################################################################
#reads in the csv file
file = read_csv("fall2023_randomstudents.csv",sep=',').values
#a empty keylist for all of the majors
keyList =[]
#Creates an empty dictionary
majorDict = {}
####################################################################
#Main Work
####################################################################
#finds all of the majors in the csv and adds them to the keyList
for p in file:
    if(p[2] not in keyList):
        keyList.append(p[2])
#iterates through the keylist and creates an empty dictionary for every major
for i in keyList:
    majorDict[i] = []
#iterates through the csv file and adds each student to their corresponding major
for student in file:
    majorDict[student[2]].append([student[0],student[1],student[2]])
####################################################################
#Output
####################################################################
#prints out all of the students in each major
for j in keyList:
    print('Students in '+j+':',majorDict[j])
    print("")

    
    
    
