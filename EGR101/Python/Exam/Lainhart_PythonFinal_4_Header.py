####################################################################
#Caleb Lainhart
#Lainhart_PythonFinal_4_Header
#11/15/23
####################################################################
#Library calls
####################################################################
from math import *
from random import randint
####################################################################
#Matrix Creator
####################################################################
def matrixMaker(size,sides):
    #creates an empty array for the matrix
    matrix = []
    #checks to make sure that the inputted size is a perfect square number
    if not(sqrt(size)%1==0):
        #errors out if it isnt a perfect sqare number
        raise Exception("Please input a square number as the size")
    #Loops through and creates all of the rows of the matrixes
    for i in range(0,int(sqrt(size))):
        #Creates a temporary variable for each row
        temp = []
        #loops through and generates a random number for each spot in
        #the matrix
        for ii in range(0,int(sqrt(size))):
            temp.append(randint(1,sides))
        #adds each row to the matrix list
        matrix.append(temp)
    #returns the matrix of random values
    return matrix
####################################################################
#Matrix Shaper
####################################################################
def matrixShaper(matrix):
    #Finds the number of rows the matrix has
    mRows = len(matrix)
    #loops through the matrix rows
    for row in range(1, mRows):
        #extends the first row of the matrix so it becomes a 1xX array
        matrix[0].extend(matrix.pop(1))
    #Gets rid of the double brakets and fully turns it into a 1 dimentional
    #array
    matrix = matrix[0]
    #returns the array
    return matrix
####################################################################
#Statistics
####################################################################
def stats(array,sides):
    #Creates a empty dictionary for the counts
    countDict = {}
    #creates a counter for the average of all of the numbers
    average = 0
    #loops through all of values the die can roll
    for num in range(1,sides+1):
        #finds the counts for each dice face and assigns it to the
        #dictionary
        countDict[num] = array.count(num)
    #loops through all of the dictionaries
    for i in range(1,sides+1):
        #Prints out the count of each die side
        print(i,"is rolled",countDict[i],"times")
        #adds up the value of each die roll
        average += i*countDict[i]
    #finds the average of all of the die rolls
    average = average/len(array)
    #prints out the expected average and the actual average
    print("The expected average for a",sides,"sided die is",(sides/2)+.5)
    print("The actual average for this die is",average)
   
