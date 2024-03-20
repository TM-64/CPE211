####################################################################
#Caleb Lainhart
#October 24th ICA
#10/27/23
####################################################################
#Library Calls
####################################################################
#imports in all math functions
from math import *
####################################################################
#Main Code
####################################################################
#creates a function with an input of a tuple
def October24th_Lainhart_ica(coords):
    #Loops through the tuple to check if the input is correct
    for check in coords:
        if len(check) !=3:
            raise Exception("Your input is wrong, do better")
    #Declares a blank array for the output
    distance = []
    #sets the home points everything will be checked from to be the first
    #point in the tuple
    homeA = coords[0][1]
    homeB = coords[0][2]
    #initializes your increment variable for the while loop
    i=1
    #loops through the entire tuple except for the first home point
    while i <= len(coords)-1:
        #uses the given equation to find the distance between the home
        #point and the currently selected point
        temp = 3958.756*acos(sin(radians(homeA))*sin(radians(coords[i][1]))+
                             cos(radians(homeA))*cos(radians(coords[i][1]))*
                              cos(radians(coords[i][2]-homeB)))
        #prints out the distance between the points in miles
        print("The distance between "+coords[0][0]+" and "+coords[i][0]+
              " is",round(temp,2),"miles.")
        #converts the distance to feet
        temp*=5280
        #appends the distance to the output array
        distance.append(temp)
        #increments the increment variable to move to the next point
        i+=1
    #outputs the array of feet between each of the points
    return distance

    
        
