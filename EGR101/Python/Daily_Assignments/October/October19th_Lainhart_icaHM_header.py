####################################################################
#Caleb Lainhart
#October 19th ICA Header
#10/21/23
####################################################################
#Library Calls
####################################################################
#imports the function to get a random number
from random import randint
####################################################################
#Random Number Generator
####################################################################
def randomNumGenerator(numSides,iterations):
    #Creates an empty array for the random numbers
    rollArray =[]
    #loops through every number from 1 to the number of iterations
    for i in range(1,iterations+1):
        #adds a random number from 1 to the number of sides to the roll array
        rollArray.append(randint(1,numSides))
    #returns the array of random numbers
    return rollArray
####################################################################
#Count finder function
####################################################################
def numFinder(rollArray,numSides):
    #creates an empty array for the counts of each number
    outputArray = []
    #loops through every number from 1 to the number of sides
    for i in range(1,numSides+1):
        #creates an array of every number that can be rolled,0
        outputArray.append([i,0])
    #loops through every number rolled
    for j in rollArray:
        #increases the count of the number rolled by 1
        outputArray[j-1][1]+=1
    #Returns the roll count array
    return outputArray
####################################################################
#Statistics function
####################################################################
def statistics(rolArray,rolCount):
    #Sets up a counter for the average
    aveCount= 0
    #set up a counter for the number of fails
    fails= 0
    #loops through every number rolled
    for i in rolArray:
        #adds up all the values in the roll array
        aveCount+=i
    #Finds the average of all values in the roll array
    aveCount = round(aveCount/len(rolArray),1)
    #loops through the roll count array
    for j in rolCount:
        #Checks if the count of each number is between the variance given
        if((j[1]>((len(rolArray)/len(rolCount))*1.2))
           or(j[1]<((len(rolArray)/len(rolCount))*.8))):
           fails+=1
    #checks if one or more of the roll counts is outside the variance
    if(fails!=0):
        print("The number of rolls for each of the numbers is NOT close to",
              (len(rolArray)/len(rolCount)),"with +/- 20% variance, There were",
              fails,"sides that were rolled more or less than our alloted variance")
    else:
        print("The number of rolls for each of the numbers IS close to",
              (len(rolArray)/len(rolCount)),"with +/- 20% variance")
    #checks if the average of all rolls is the midpoint of the dice
    if(aveCount!=(1+len(rolCount))/2):
        print("The average of all",len(rolArray),"random rolls is NOT equal to",
              (1+len(rolCount))/2,"it is equal to",aveCount)
    else:
        print("The average of all",len(rolArray),"random rolls IS equal to",
              (1+len(rolCount))/2)
        
            
        
        
    
