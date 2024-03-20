####################################################################
#Caleb Lainhart
#October 19th ICA
#10/21/23
####################################################################
#Library Calls
####################################################################
#import custom functions from my header file
from October19th_Lainhart_icaHM_header import *
####################################################################
#Predeclarations
####################################################################
#The two predeclerations that you can change to change the entire program
iterations = 10000
sides= 100
####################################################################
#Work Done
####################################################################
#calls the function to generate an array of random numbers
rollArray = randomNumGenerator(sides,iterations)
#calls the function to find the counts each side was rolled
rollCount = numFinder(rollArray,sides)
#prints out the roll counts
print("The count for each number:\n",rollCount)
#calls the function to find the statistics
statistics(rollArray,rollCount)
