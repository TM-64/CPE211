####################################################################
#Caleb Lainhart
#Python Homework 3
#11/12/23
####################################################################
#Library Calls
####################################################################
from random import randint
####################################################################
#Predeclerations
####################################################################
def pythonHomework3():
    #creates an empty array for the rolls
    rolls=[]
####################################################################
#Main
####################################################################
    #rolls a 10 sided die 10000 times and adds it to the array
    for i in range(0,10000):
        rolls.append(randint(1,10))
    #counts all of the different numbers rolled
    count1 = rolls.count(1)
    count2 = rolls.count(2)
    count3 = rolls.count(3)
    count4 = rolls.count(4)
    count5 = rolls.count(5)
    count6 = rolls.count(6)
    count7 = rolls.count(7)
    count8 = rolls.count(8)
    count9 = rolls.count(9)
    count10 = rolls.count(10)
    #puts all of the counts into a single array
    output=[count1,count2,count3,count4,count5,count6,count7,
            count8,count9,count10]
####################################################################
#Output
####################################################################
    #Prints out all of the counts for each side of teh die
    for ii in range(0,10):
        print(ii+1,"was rolled",output[ii],"times, which is",output[ii]/100,
              "percent of the time\n")
    #prints out which side has the highest amount of rolls
    print(output.index(max(output))+1,"is rolled the most being rolled",
          max(output),"times\n")
    
    
    
    
    

