####################################################################
#Caleb Lainhart
#October 3rd ICA
#10/16/23
####################################################################
#Library Calls
####################################################################
from math import factorial
####################################################################
#Predeclerations
####################################################################
#n represents the total number of objects you can select out of in
#this case 52 cards in a deck
n = 52
#r represents the total number of objects you select in this case
#its 7 cards
r = 7
####################################################################
#Work done
####################################################################
#Performs the calculation to find the amount of combinations there are
combos = factorial(n) / (factorial(r) * factorial(n-r))
####################################################################
#Output
####################################################################
#prints out the answer
print(combos)
