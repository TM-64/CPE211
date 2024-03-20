####################################################################
#Caleb Lainhart
#Lainhart_PythonFinal_4
#11/13/23
####################################################################
#Library calls
####################################################################
from Lainhart_PythonFinal_4_Header import *
####################################################################
#Predeclerations
####################################################################
#Takes inputs for the number of sides of die and the matrix size
sides = int(input("How many sides do you want the die to have?\n"))
matrixSize = int(input("How many boxes do you want to be in your matrix\n"+
                       "(Must be a perfect square)\n"))
####################################################################
#Main
####################################################################
#creates a matrix of matrixSize of random numbers
matrix = matrixMaker(matrixSize,sides)
#Switches the matrix into a 1 x matrixSize array
array = matrixShaper(matrix)
#Prints out the stats of the random rolls
stats(array,sides)
